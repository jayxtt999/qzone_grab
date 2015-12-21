<?php
namespace Home\Controller;

use Think\Model;

class HomeController extends AbstractController
{

    private $interval = 30;//自动赞,评论间隔时间 (分钟)
    private $autoCon = "【自动评论】";//小尾巴

    public function index()
    {

        $this->qq = is_array(session('qq'))?session('qq'):$this->error("请重新登录", '/', 3);
        //获取好友列表
        $url = "http://m.qzone.com/friend/mfriend_list?g_tk=".$this->qq['gtk']."&res_uin=".$this->qq['qq']."&res_type=normal&format=json&count_per_page=10&page_index=0&page_type=0&mayknowuin=&qqmailstat=";
        $curl = curl_init($url);
        $cookie = " p_uin=".$this->qq['pUin']."; skey=".$this->qq['sKey']."; uin=".$this->qq['uin'];
        $headers['Host'] = 'm.qzone.com';
        curl_setopt($curl, CURLOPT_REFERER, '');
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt ($curl, CURLOPT_HTTPHEADER,$headers);
        curl_setopt($curl, CURLOPT_COOKIE, $cookie);
        $result = curl_exec($curl);
        curl_close($curl);
        $results = json_decode($result);
        $datas = $results->data;
        $gpnames = $datas->gpnames;
        $list = $datas->list;
        //存储相关数据
        F('fl_' . $this->qq['qq'], $results);
        $this->groud = $gpnames;
        $this->autoZantask = F('zan_lock_' . $this->qq['qq']);
        $this->autoCommtask = F('comm_lock_' . $this->qq['qq']);
        $this->assign("qq",$this->qq['qq']);
        $this->assign("groud",$gpnames);
        $this->assign("data",$datas);
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
        $snoopy->rawheaders["X_FORWARDED_FOR"] = get_client_ip(); //伪装ip
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
            session('qq', $qq);
            if (empty($uqq)) {
                $this->jsonElement(404, "请先选择一个QQ好友");
            }
            $sid = I('post.sid');
            if (!$sid) {
                $this->jsonElement(404, "sid错误");
            }
            $res = array();
            /*if (I('cookie.' . $uqq) == "isPass") {
                $shuoshuoAll = F("shuoshuo_$uqq");
                $msg = "获取到说说一共" . count($shuoshuoAll) . "条<br/>";
                //print_r($this->jsonElement(1,$msg));exit;
                $this->jsonElement(1, $msg);
                exit;
            }*/
            //$this->getData(array("qq"=>$qq, "sid"=>$sid,"count"=>10));exit;
            //清空重置
            F("shuoshuo_$uqq",null);
            $res = $this->trampoline("getData",array("uqq"=>$uqq, "sid"=>$sid,"count"=>0));
            if ($res) {
                $shuoshuoAll = F("shuoshuo_$uqq");
                setcookie($uqq, "isPass", time() + 3600);
                $msg = "获取到说说一共" . count($shuoshuoAll) . "条<br/>";
                $this->jsonElement(1, $msg);
            } else {
                $msg = "获取失败，可能是没权限或者网络繁忙";
                $this->jsonElement(0, $msg);
            }
        }


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

        $uqq = $params['uqq'];
        $sid = $params['sid'];
        $count = $params['count'];
        $url = "http://m.qzone.com/list?g_tk=938730696&res_attach=att%3D".$count."&format=json&list_type=shuoshuo&action=0&res_uin=" . $uqq . "&count=40&sid=" . $sid . "";
        $info = file_get_contents($url);
        $result = json_decode($info, true);
        if (!empty($result['message'])) {
            return $this->jsonElement(0, $result['message']);
        }
        //好友是否隐藏说说
        if(!isset($result[data][vFeeds])){
            return true;
        }

        if(F("shuoshuo_$uqq")){
            F("shuoshuo_$uqq",array_merge(F("shuoshuo_$uqq"),$result[data][vFeeds]));
        }else{
            F("shuoshuo_$uqq",$result[data][vFeeds]);
        }
        if ($result[data][has_more]) {
            $count += 40;
            $params["count"] = $count;
            return function() use($params) {
                return $this->getData($params);
            };
        }
        return true;
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
                $snoopy->rawheaders["X_FORWARDED_FOR"] = get_client_ip(); //αװip
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


    /*存储好友信息*/

    public function saveFriend(){



    }



}