<?php
namespace Home\Controller;

use Think\Controller;

class HomeController extends Controller
{

    private $interval = 30;//自动赞,评论间隔时间 (分钟)
    private $autoCon = "【来自自动评论】";//小尾巴
    private $sData = array();
    private $qq = '';
    private $sid = '';

    public function index()
    {
        $qq = session('qq');
        $sid = session('sid');
        if (empty($qq)) {
            $this->error("请重新登录", '/', 3);
        }
        //获取好友列表
        $list = file_get_contents("http://m.qzone.com/friend/mfriend_list?g_tk=383288931&res_uin=" . $qq . "&res_type=normal&format=json&count_per_page=10&page_index=0&page_type=0&mayknowuin=&qqmailstat=&sid=" . $sid . "");
        $list = json_decode($list);
        $data = ($list->data);
        //相关配置
        $groud = $data->gpnames;
        //是否启动自动赞进程
        $this->qq = $qq;
        $this->data = $data;
        //存储相关数据
        F('fl_' . $qq, $data);
        $this->groud = $groud;
        $this->sid = $sid;
        $this->list = $list;
        $this->autoZantask = F('zan_lock_' . $qq);
        $this->autoCommtask = F('comm_lock_' . $qq);
        $this->assign("sid",$sid);
        $this->assign("qq",$qq);
        $this->display('index');
    }

    public function deleteF()
    {
        $qq = session('qq');
        $data = F('fl_' . $qq);
        import("Home.System.Snoopy");
        $snoopy = new  \Snoopy;
        $snoopy->referer = "client.show.qq.com";
        $snoopy->expandlinks = true;
        $snoopy->rawheaders["X_FORWARDED_FOR"] = $this->getIp(); //伪装ip
        $url = "http://client.show.qq.com/cgi-bin/qqshow_client_showcommand?g_tk=1163951217&omode=4";
        $cookie = tempnam('./temp', 'cookie' . $qq);
        print_r($cookie);
        exit;
        $param = array();
        $param['cmd'] = 1;
        $param['uin'] = $qq;
        $param['platform'] = 1;
        $curl = curl_init($url);
        curl_setopt($curl, CURLOPT_HEADER, 0);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_COOKIEFILE, $cookie);//同时发送Cookie
        curl_setopt($curl, CURLOPT_COOKIEJAR, $cookie); // Cookie
        curl_setopt($curl, CURLOPT_POST, 1);
        foreach ($data->list as $list) {
            $param['touin'] = $list->uin;
            curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($param));
            $result = curl_exec($curl);
            curl_close($curl);
            echo($result . "<br/>");
            exit;
        }
        exit;
    }

    /**
     * 获取ip
     * @return string
     */
    public function getIp()
    {

        if (getenv("HTTP_CLIENT_IP") && strcasecmp(getenv("HTTP_CLIENT_IP"), "unknown"))
            $ip = getenv("HTTP_CLIENT_IP");
        else if (getenv("HTTP_X_FORWARDED_FOR") && strcasecmp(getenv("HTTP_X_FORWARDED_FOR"), "unknown"))
            $ip = getenv("HTTP_X_FORWARDED_FOR");
        else if (getenv("REMOTE_ADDR") && strcasecmp(getenv("REMOTE_ADDR"), "unknown"))
            $ip = getenv("REMOTE_ADDR");
        else if (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], "unknown"))
            $ip = $_SERVER['REMOTE_ADDR'];
        else
            $ip = "unknown";
        return ($ip);
    }

    /**
     * Show
     * @return mixed|void
     */
    public function Show()
    {
        ini_set ('memory_limit', '256M');
        set_time_limit(0);
        if (I('post.program', '', 'htmlspecialchars') == "one") {
            $uqq = I('post.uqq');
            session('uqq', $uqq);
            $qq = I('post.qq');
            if (empty($qq)) {
                $this->jsonElement(404, "请先选择一个QQ好友");
            }
            $sid = I('post.sid');
            if (!$sid) {
                $this->jsonElement(404, "sid错误");
            }
            $res = array();
            if (I('cookie.' . $qq) == "isPass") {
                $shuoshuoAll = unserialize(F($qq));
                $msg = "获取到说说一共" . count($shuoshuoAll) . "条<br/>";
                //print_r($this->jsonElement(1,$msg));exit;
                $this->jsonElement(1, $msg);
                exit;
            }
            //$this->getData(array("qq"=>$qq, "sid"=>$sid,"count"=>10));exit;
            $shuoshuoAll = $this->trampoline("getData",array("qq"=>$qq, "sid"=>$sid,"count"=>10));
            if ($shuoshuoAll) {
                F($qq, serialize($shuoshuoAll));
                setcookie($qq, "isPass", time() + 3600);
                $msg = "获取到说说一共" . count($shuoshuoAll) . "条<br/>";
                $this->jsonElement(1, $msg);
            } else {
                $msg = "获取失败，可能是没权限或者网络繁忙";
                $this->jsonElement(0, $msg);
            }
        }


    }

    /**
     *  返回json
     * @param int $o
     * @param null $m
     * @param null $d
     */
    public function jsonElement($o = 0, $m = null, $d = null)
    {

        $array = array("status" => $o, "msg" => $m, "data" => $d);
        $this->ajaxReturn($array);
        //return  json_encode($array);
    }

    /**
     * 获取数据
     * @param $qq
     * @param $sid
     * @param int $count
     * @return array|void
     */
    function getData($params)
    {

        $qq = $params['qq'];
        $sid = $params['sid'];
        $count = $params['count'];
        $url = "http://m.qzone.com/list?g_tk=938730696&format=json&list_type=shuoshuo&action=0&res_uin=" . $qq . "&count=".$count."&sid=" . $sid . "";
        /*$h = fopen("log222.txt","a");
        fwrite($h,$url."\r\n");
        fclose($h);*/
        $info = file_get_contents($url);
        $result = json_decode($info, true);
        if (!empty($result['message'])) {
            return $this->jsonElement(0, $result['message']);
        }

        $this->sData = array_merge($this->sData, $result[data][vFeeds]);
        if ($result[data][has_more]) {
            $count += 10;
            $params["count"] = $count;
            return function() use($params) {
                return $this->getData($params);
            };
            //return $this->getData($params);
        }
        return ($this->sData);
    }


    function trampoline($callback, $params) {

        $result = call_user_func(array(__CLASS__,$callback), $params);
        while (is_callable($result)) {
           	        $result = $result();
	    }
	    return $result;
	}




    /**
     * 自动赞
     */
    public function autoZan()
    {
        //启动进程
        $qq = session('qq');
        $sid = session('sid');
        $time = I('post.time');
        F("zan_lock_" . $qq, $time);
        ignore_user_abort(); // run script in background
        set_time_limit(0); // run script forever
        $interval = 60 * $this->interval;
        import("Home.System.Snoopy");
        $snoopy = new  \Snoopy;
        do {
            F("zan_lock_" . $qq, $time);
            //赞核心
            $list = file_get_contents("http://m.qzone.com/get_feeds?res_type=0&refresh_type=1&format=json&sid=" . $sid . "");
            $list = json_decode($list);
            $data = ($list->data->vFeeds);
            foreach ($data as $v) {
                if ($v->like->isliked) {
                    continue;
                }
                $url = $v->comm->curlikekey;
                $user = $v->userinfo->user->uin;
                $data = array();
                $data['opr_type'] = "like";
                $data['action'] = "0";
                $data['res_uin'] = $user;
                $data['res_type'] = 311;
                $data['uin_key'] = $url;
                $data['cur_key'] = $url;
                $data['format'] = "json";
                $data['sid'] = $sid;

                $snoopy->referer = "http://m.qzone.com/praise/like";
                $snoopy->expandlinks = true;
                $snoopy->rawheaders["X_FORWARDED_FOR"] = $this->getIp(); //αװip
                $url = "http://m.qzone.com/praise/like";
                $cookie = tempnam('./temp', 'cookie');
                $curl = curl_init($url);
                curl_setopt($curl, CURLOPT_HEADER, 0);
                curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
                curl_setopt($curl, CURLOPT_COOKIEJAR, $cookie); // ?Cookie
                curl_setopt($curl, CURLOPT_POST, 1);
                curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($data));
                $result = curl_exec($curl);
                curl_close($curl);
            }
            sleep($interval); // wait 15 minutes
            $time -= $interval;
            F("zan_lock_" . $qq, $time);
        } while (F("zan_lock_" . $qq) > 0);
        F("zan_lock_" . $qq, "over");
        ignore_user_abort(false);
        exit;

    }

    /*
     * 取消自动赞
     */
    public function autoZanOff()
    {
        $qq = session('qq');
        F("zan_lock_" . $qq, "over");
        echo "赞进程已终止";
    }

    /**
     * 自动评论
     */
    public function autoComm()
    {
        $qq = session('qq');
        $sid = session('sid');
        $time = I('post.time');
        F("comm_lock_" . $qq, $time);
        ignore_user_abort(); // run script in background
        set_time_limit(0); // run script forever
        $interval = 60 * $this->$interval;
        import("Home.System.Snoopy");
        $snoopy = new  \Snoopy;
        do {
            F("comm_lock_" . $qq, $time);
            $isSay = false;
            $list = file_get_contents("http://m.qzone.com/get_feeds?res_type=0&refresh_type=1&format=json&sid=" . $sid . "");
            $list = json_decode($list);
            $datas = ($list->data->vFeeds);
            foreach ($datas as $v) {
                $data['res_id'] = $v->id->cellid;
                $data['res_uin'] = $v->userinfo->user->uin;
                $data['format'] = "json";
                $data['res_type'] = 311;
                $data['content'] = $this->getComm($v->summary->summary) . $this->autoCon;//评论内容
                $comment = $v->comment->comments;
                $data['busi_param'] = "4=&5=http://user.qzone.qq.com/" . $data['res_uin'] . "/mood/" . $data['res_id'] . "&6=http://user.qzone.qq.com/" . $data['res_uin'] . "/mood/" . $data['res_id'] . "&23=2&30=&-100=appid:" . $data['res_type'] . "+typeid:0+feedtype:0+hostuin:" . $qq . "+feedskey:" . $data['res_id'] . "+";
                $data['opr_type'] = "addcomment";
                $data['sid'] = $sid;
                foreach ($comment as $v2) {
                    if ($v2->user == $qq) {
                        $isSay = true;
                    }
                }
                if ($isSay) {
                    continue;
                } else {
                    //run
                    $snoopy->referer = "http://m.qzone.com/operation/publish_addcomment";
                    $snoopy->expandlinks = true;
                    $snoopy->rawheaders["X_FORWARDED_FOR"] = "113.81.230.108"; //αװip
                    $url = "http://m.qzone.com/operation/publish_addcomment";
                    $cookie = tempnam('./temp', 'cookie');
                    $curl = curl_init($url);
                    curl_setopt($curl, CURLOPT_HEADER, 0);
                    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
                    curl_setopt($curl, CURLOPT_COOKIEJAR, $cookie); // ?Cookie
                    curl_setopt($curl, CURLOPT_POST, 1);
                    curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($data));
                    $result = curl_exec($curl);
                    curl_close($curl);
                }
            }
            sleep($interval); // wait 15 minutes
            $time -= $interval;
            F("comm_lock_" . $qq, $time);
        } while (F("comm_lock_" . $qq) > 0);
        F("comm_lock_" . $qq, "over");
        ignore_user_abort(false);
        exit;
    }

    /*
     * 取消自动评论
     */
    public function autoCommOff()
    {

        $qq = session('qq');
        F("comm_lock_" . $qq, "over");
        echo "评论进程已终止";

    }


    /**
     * 获取评论内容  小黄鸡
     * @param $summary
     * @return mixed
     */
    public function getComm($summary)
    {
        $url = "http://www.xiaohuangji.com/ajax.php";
        $post_data = array("para" => $summary);
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);
        $output = curl_exec($ch);
        curl_close($ch);
        return $output;
    }

}