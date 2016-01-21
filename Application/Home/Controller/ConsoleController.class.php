<?php
/**
 * Created by PhpStorm.
 * User: xiett
 * Date: 15-12-9
 * Time: 下午10:30
 */

namespace Home\Controller;


class ConsoleController extends AbstractController
{

    private $shuoshuoNum = 0;

    public function init()
    {
        $this->display("index");
        ini_set('memory_limit', '512M');
        set_time_limit(0);
    }

    public function index()
    {
        $this->display();
        consoleShow("READY..");
        exit;

    }

    /**
     * 获取数据
     */
    public function getShuoShuoAll()
    {
        $this->init();
        $uqq = I('get.uqq');
        $uqq = 435024179;
        /*$uqq = 136787510;
        consoleShow("<script>parent.lodingSs()</script>");
        consoleShow("<script>parent.getShuoshuo(" . $uqq . ")</script>");
        exit;*/

        if (empty($uqq)) {
            consoleShow("请先选择好友..");
            exit;
        }
        consoleShow("存储好友相关资料" . $uqq . "数据开始");
        $user = M('user');
        $this->getUserInfo($uqq);
        consoleShow("存储好友相关资料" . $uqq . "数据完成");
        session('uqq', $uqq);
        consoleShow("获取" . $uqq . "说说数据开始");
        $res = $this->trampoline("getData", array("uqq" => $uqq, "gtk" => $this->qq['gtk'], "limit" => 0));
        if ($res) {
            //$shuoshuoAll = F("shuoshuo_$uqq");
            //setcookie($uqq, "isPass", time() + 3600);
            $msg = "获取到说说一共" . $this->shuoshuoNum . "条";
        } else {
            $msg = "获取失败，可能是没权限或者网络繁忙";
        }
        consoleShow("获取" . $uqq . "说说数据结束," . $msg);
        consoleShow("<script>parent.lodingSs()</script>");
        consoleShow("<script>parent.getShuoshuo(" . $uqq . ")</script>");
        exit;
    }

    /**
     * @param $callback
     * @param $params
     * @return mixed
     */
    public function trampoline($callback, $params)
    {

        $result = call_user_func(array(__CLASS__, $callback), $params);
        while (is_callable($result)) {
            $result = $result();
        }
        return $result;
    }


    /**
     * 获取数据
     * @param $qq
     * @param $sid
     * @param int $count
     * @return array|void
     */
    public function getData($params)
    {
        $uqq = $params['uqq'];
        $limit = $params['limit'];
        $gtk = $params['gtk'];
        //Todo 验证权限
        $url = "http://taotao.qq.com/cgi-bin/emotion_cgi_msglist_v6?uin=" . $uqq . "&inCharset=utf-8&outCharset=utf-8&hostUin=" . $uqq . "&notice=0&sort=0&pos=" . $limit . "&num=20&cgi_host=http%3A%2F%2Ftaotao.qq.com%2Fcgi-bin%2Femotion_cgi_msglist_v6&code_version=1&format=jsonp&need_private_comment=1&g_tk=" . $gtk;
        //有坑！！  这里不需要p_skey 不知道是什么鬼 0.0
        $result = $this->sendToQq($url, array("p_skey" => ""));
        $result = $this->filterCallback($result);
        $result = json_decode($result, true);
        if (!empty($result['message'])) {
            consoleShow($result['message']);
        }
        //好友是否隐藏说说
        if ($result['total'] > 0 && !$result["msglist"]) {
            consoleShow("####该好友隐藏了说说");
            return true;
        }
        if ($limit == 0) {
            $this->shuoshuoNum = $result['total'];
        }
        $friendShuoShuo = M('friend_shuoshuo');
        $friendComment = M('friend_comment');
        $friendReplys = M('friend_replys');

        foreach ($result["msglist"] as $v) {
            if ($v['rt_certified']) {
                //转发不计
                continue;
            }
            consoleShow("处理:" . $v['tid'] . "开始");
            $cellid = $v['tid'];
            $curlikekey = "http://user.qzone.qq.com/" . $uqq . "/mood/" . $cellid;

            //判断是否需要更新评论数量及其点赞数量
            $uin = $v['uin'];
            $where = array();
            $where['uin'] = $uin;
            $where['cellid'] = $cellid;
            $row = $friendShuoShuo->where($where)->find();

            //获取赞信息
            //_stp 实际上是13位的时间戳 一般让请求不被浏览器缓存即可
            $likeUrl = "http://r.qzone.qq.com/cgi-bin/user/qz_opcnt2?_stp=" . rand(1, 999) . "&unikey=" . $curlikekey . ".1&fupdate=1&g_tk=" . $gtk;
            $likeRes = $this->sendToQq($likeUrl);
            $likeRes = $this->filterCallback($likeRes);
            $likeRes = json_decode($likeRes, true);

            $likeNum = $likeRes['data'][0]['current']['likedata']['cnt'];
            $likemansVs = "";
            if ($likeNum > 0) {
                $likemansV = array();
                $likemans = $likeRes['data'][0]['current']['likedata']['list'];
                foreach ($likemans as $mans) {
                    $likemansV[] = $mans[0];
                }
                $likemansVs = implode(",", $likemansV);
            }
            $ilike = $likeRes['data'][0]['current']['likedata']['ilike'];
            if ($v['video']) {
                $videoArr = array();
                foreach ($v['video'] as $videoV) {
                    $videoArr[] = $videoV['url3'];
                }
                $video = serialize($videoArr);
            } else {
                $video = "";
            }
            if ($v['story_info']) {
                $storyInfo = serialize($v['story_info']['lbs']);
            } else {
                $storyInfo = "";
            }
            if ($ilike) {
                $likemansVs = $this->qq['qq'] . "," . $likemansVs;
            }
            if ($row) {
                if (($row['likenum'] != $likeNum) || ($row['cmtnum'] != $v['cmtnum']) || $video) {
                    $upDateArr = array(
                        'likenum' => $likeNum,
                        'cmtnum' => $v['cmtnum'],
                        'likemans' => $likemansVs,
                        'video' => $video,

                );
                    $friendShuoShuo->where($where)->save($upDateArr);
                }

            } else {
                $data = array();
                $data['uin'] = $uin = $v['uin'];
                $data['time'] = $v['created_time'];
                $data['cellid'] = $cellid;
                $data['likemans'] = $likemansVs;
                $data['likenum'] = $likeNum ? $likeNum : 0;
                $data['curlikekey'] = $curlikekey;
                //http://r.qzone.qq.com/cgi-bin/user/qz_opcnt2?_stp=1452151686481&unikey=http://user.qzone.qq.com/562809727/mood/7fcb8b21739c8c56963f0500
                $data['operatemask'] = $v['rt_certified'] ? "98315" : "516107";
                $data['summary'] = $v['content'];
                if ($v['pic']) {
                    $picArr = array();
                    foreach ($v['pic'] as $picK => $pic) {
                        $picArr['summary_img_url'][$picK] = $pic['url2'];
                        $picArr['summary_img_wh'][$picK] = $pic['b_width'] . "," . $pic['b_height'];
                    }
                    $data['summary_img_url'] = serialize($picArr['summary_img_url']);
                    $data['summary_img_wh'] = serialize($picArr['summary_img_wh']);
                }
                $data['timeline'] = date("m-d H:i", $v['created_time']);
                $data['cmtnum'] = $v['cmtnum'];
                $data['source_name'] = $v['source_name'];
                $data['video'] = $video;
                $data['story_info'] = $storyInfo;
                $r = $friendShuoShuo->add($data);
                if ($r) {
                    consoleShow("##预存储:<a target='_blank' href='" . $data['curlikekey'] . "'>" . $data['cellid'] . "</a>成功");
                } else {
                    consoleShow("##预存储:<a target='_blank' href='" . $data['curlikekey'] . "' style='text-decoration: line-through'>" . $data['cellid'] . "失败</a>");
                }
            }


            // 存储评论
            if ($v['cmtnum'] > 0) {
                consoleShow("####获取相关评论,数量：" . $v['cmtnum']);
                $comments = $v['commentlist'];
                foreach ($comments as $v2) {
                    $data = array();
                    $data['uin'] = $uin;
                    $fuin = $v2['uin'];
                    $data['fuin'] = $fuin;
                    $data['cellid'] = $cellid;
                    $data['commentid'] = $v2['tid'];
                    //$data['commentpic'] = $v2['commentpic'];
                    $data['content'] = $v2['content'];
                    $data['referid'] = $v2['refer'] ? $v2['refer'] : 0;
                    $data['time'] = $v2['create_time'];
                    $where = array('cellid' => $cellid, 'fuin' => $fuin, 'commentid' => $v2['tid']);
                    $row = $friendComment->where($where)->find();
                    if (!$row) {
                        $r = $friendComment->add($data);
                    }
                    unset($data['commentpic']);
                    unset($data['referid']);
                    // 存储回复
                    if ($v2['list_3']) {
                        $replys = $v2['list_3'];
                        $replysNum = count($replys);
                    }
                    if ($replysNum > 0) {
                        consoleShow("####获取评论相关回复,数量:" . $replysNum);
                        $replys = $v2['replys'];
                        foreach ($replys as $v3) {
                            $replyId = $v3['tid'];
                            $where['replyid'] = $replyId;
                            $fuin = $v3['uin'];
                            $data['fuin'] = $fuin;
                            $data['content'] = $v3['content'];
                            $data['replyid'] = $v3['tid'];
                            //$data['replypic'] = $v3['replypic'];
                            $data['time'] = $v3['create_time'];
                            //$data['referid'] = $v3['refer'] ? $v3['refer'] : 0;
                            $row = $friendReplys->where($where)->find();
                            if (!$row) {
                                $r = $friendReplys->add($data);
                            }
                        }
                    }
                }
            }
            unset($data);
            unset($where);
            consoleShow("处理:" . $cellid . "结束");
        }
        return true;

        if ($limit < $result["total"]) {
            $limit += 20;
            $params["limit"] = $limit;
            return function () use ($params) {
                return $this->getData($params);
            };
        }
        return true;
    }

    /**
     * 自动点赞
     */
    public function batchLike()
    {
        $this->init();
        $uqq = I('get.uqq');
        $c = (int)I('get.c');
        $time = I('get.time');
        $ssLogic = D('Shuoshuo', 'Logic');
        $where = array();
        $where['uin'] = $uqq;

        if ($time) {
            switch ($time) {
                case "week":
                    $time = time() - (7 * 24 * 60 * 60);
                    break;
                case "month":
                    $time = time() - (30 * 24 * 60 * 60);
                    break;
                case "month6":
                    $time = time() - (6 * 30 * 24 * 60 * 60);
                    break;
                case "year":
                    $time = time() - (12 * 30 * 24 * 60 * 60);
                    break;
                case "all":
                    $time = 0;
                    break;

            }


        }

        $where['_string'] = "time>" . $time;
        $ssAll = $ssLogic->getShuoshuoAll($where);
        if ($ssAll) {
            foreach ($ssAll as $v) {
                $data = array(
                    "opuin" => $uqq,
                    "unikey" => $v['curlikekey'],
                    "curkey" => $v['curlikekey'],
                    "from" => 1,
                    "appid" => 311,
                    "typeid" => 0,
                    "abstime" => time(),
                    "fid" => $v['cellid'],
                    "active" => 0,
                    "fupdate" => 1,
                );
                if ($c) {
                    $url = "http://w.cnc.qzone.qq.com/cgi-bin/likes/internal_dolike_app?g_tk=" . $this->qq['gtk'];
                    $msg = "点赞";
                } else {
                    $url = "http://w.cnc.qzone.qq.com/cgi-bin/likes/internal_unlike_app?g_tk=" . $this->qq['gtk'];
                    $msg = "取消点赞";

                }
                $res = $this->sendToQq($url, array(), $data);
                consoleShow($msg . ":" . mb_substr($v['summary'], 0, 5) . "..");
            }

        } else {
            consoleShow("自动点赞:没有相关信息,你可以尝试先获取数据");
        }
        consoleShow("<script>parent.batchLikeGoOver()</script>");
        exit;
    }

    /**
     * 自动评论
     */
    public function batchComment()
    {

        $this->init();
        $uqq = I('get.uqq');
        $time = I('get.time');
        $content = I('get.content');
        $private = I('get.private');
        $ssLogic = D('Shuoshuo', 'Logic');
        $where = array();
        $where['uin'] = $uqq;
        if ($time) {
            switch ($time) {
                case "week":
                    $time = time() - (7 * 24 * 60 * 60);
                    break;
                case "month":
                    $time = time() - (30 * 24 * 60 * 60);
                    break;
                case "month6":
                    $time = time() - (6 * 30 * 24 * 60 * 60);
                    break;
                case "year":
                    $time = time() - (12 * 30 * 24 * 60 * 60);
                    break;
                case "all":
                    $time = 0;
                    break;

            }
        }
        $where['_string'] = "time>" . $time;
        $ssAll = $ssLogic->getShuoshuoAll($where);
        consoleShow("自动评论开始");

        if ($ssAll) {
            foreach ($ssAll as $v) {
                $url = "http://taotao.qzone.qq.com/cgi-bin/emotion_cgi_addcomment_ugc?g_tk=" . $this->qq['gtk2'];

                if (empty(trim($content))) {
                    //图灵机器人
                    $url = "http://www.tuling123.com/openapi/api?key=d62295084e71a99f9ed5a5660d3ad05f&info=" . $v['summary'];
                    $r = json_decode(file_get_contents($url));
                    $content = $r['text'];
                } else {
                    $content = mb_substr($content, 0, 150);
                }

                $data = array(
                    "uin" => $this->qq['qq'],
                    "hostUin" => $uqq,
                    "topicId" => $uqq . "_" . $v['cellid'],
                    "content" => $content,
                    "private" => $private,
                    "commentUin" => $this->qq['qq'],
                    "with_fwd" => 0,
                    "to_tweet" => 0,
                    "to_tweet" => 0,
                    "hostuin" => $this->qq['qq'],
                    "code_version" => 1,
                    "format" => "fs",
                );
                $res = $this->sendToQq($url, array(), $data);
                preg_match("/frameElement.callback\((.*)\);/", $res, $results);
                $results = json_decode($results[1], true);
                if ($results['message']) {
                    consoleShow("自动评论:" . mb_substr($v['summary'], 0, 5) . "失败，返回信息:" . $results['message']);
                } else {
                    consoleShow("自动评论:" . mb_substr($v['summary'], 0, 5) . "成功");
                }

            }
        } else {
            consoleShow("自动评论:没有相关信息，你可以尝试先获取数据");
        }
        consoleShow("<script>parent.batchCommentGoOver()</script>");
        exit;
    }


    public function Emotion(){

        $this->init();
        $uqq = I('get.uqq');
        $ssLogic = D('Shuoshuo', 'Logic');
        $shuoshuoAll = $ssLogic->getShuoshuoAll(array('uin'=>$uqq));

        $chartData = "";
        Vendor('QcloudApi.QcloudApi');
        $service = \QcloudApi::load(\QcloudApi::MODULE_WENZHI, C("QcloudApi"));
        $method = 'POST';
        $service->setConfigRequestMethod($method);
        $ratio = array();
        $classAll = array();
        foreach($shuoshuoAll as $k=>$v){

            $content = iconv( "gb2312//IGNORE", "UTF-8" ,$v['summary']);
            if(!$content){
                continue;
            }
            //文本分类
            $class = array();
            $request = $service->TextClassify(array("content"=>$content));
            if ($request === false) {

                $error = $service->getError();
                echo "Class Error code:" . $error->getCode() . ".\n";
                echo "message:" . $error->getMessage() . ".\n";
                echo "ext:" . var_export($error->getExt(), true) . ".\n";
                var_dump($request);exit;
            }else{
                foreach($request['classes'] as $v2){
                    if($v2['class_num']<10){
                        $code = "0X0000000".$v2['class_num'];
                    }else{
                        $code = "0X000000".strtoupper(dechex($v2['class_num']));
                    }
                    if(!isset($this->class[$code])){
                        $this->class[$code] = array("className"=>$v2['class'],"conf"=>0);
                        //echo "Error:Not ID ".$code;
                        //var_dump($v2);exit;
                    }
                    $this->class[$code]['conf'] += $v2['conf'];
                }
            }
            //情感分析
            $request = $service->TextSentiment(array("content"=>$content));
            if ($request === false) {
                $error = $service->getError();
                echo "Sentiment Error code:" . $error->getCode() . ".\n";
                echo "message:" . $error->getMessage() . ".\n";
                echo "ext:" . var_export($error->getExt(), true) . ".\n";
                var_dump($request);exit;

            }else{
                $chartData.="{'time': '".$v['time']."','positive':".$request['positive'].",'comment':\"".iconv( "gb2312//IGNORE", "UTF-8" ,$v['comment'])."\"},";
            }
            //正负面情绪比例  由于k是递增的,固用k记录条数 叠加 positive 正情绪比即为 k/$request[positive]
            $ratio[] = $request['positive'];
            //positive
            /*echo "{'time': '".$v['time']."','positive':".$request['positive'].",'comment':\"".iconv( "gb2312//IGNORE", "UTF-8" ,$v['comment'])."\"},<br/>";
            ob_flush();
            flush();*/
        }
        $chartDataPid = "";
        foreach($this->class as $v){
            if($v['conf'] == 0){
                continue;
            }
            $chartDataPid.="{'country': '".$v['className']."','value':".$v['conf']."},";
        }
        //正能量
        $pe = number_format(array_sum($ratio)/count($ratio)*100,2);
        //负能量
        $ne = 100-$pe;
        $this->assign("chartDataPid",$chartDataPid);
        $this->assign("chartData",$chartData);
        $this->assign("pe",$pe);
        $this->assign("ne",$ne);
        $this->display('emotion');


    }

}








