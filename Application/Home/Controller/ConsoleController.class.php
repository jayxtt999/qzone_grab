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

    public function index()
    {
        $this->display();
        consoleShow("READY..");
        exit;

    }

    public function getShuoShuoAll()
    {
        $this->display("index");
        ini_set('memory_limit', '512M');
        set_time_limit(0);
        $uqq = I('get.uqq');
        //$uqq = "154894476";
        $uqq = 229353459;
        $uqq = 435024179;
        if (empty($uqq)) {
            consoleShow("请先选择好友..");
            exit;
        }
        consoleShow("存储好友相关资料".$uqq."数据开始");

         $user = M('user');
         $this->getUserInfo($uqq);
        consoleShow("存储好友相关资料".$uqq."数据完成");
        session('uqq', $uqq);
        consoleShow("获取".$uqq."说说数据开始");
        $res = $this->trampoline("getData", array("uqq" => $uqq, "gtk" => $this->qq['gtk'], "count" => 0));
        if ($res) {
            //$shuoshuoAll = F("shuoshuo_$uqq");
            //setcookie($uqq, "isPass", time() + 3600);
            $msg = "获取到说说一共" . $this->shuoshuoNum . "条";
        } else {
            $msg = "获取失败，可能是没权限或者网络繁忙";
        }
        consoleShow("获取".$uqq."说说数据结束,".$msg);
        consoleShow("<script>getShuoshuo(".$uqq.")</script>");
        exit;


    }


    function trampoline($callback, $params)
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
    function getData($params)
    {
        $uqq = $params['uqq'];
        $count = $params['count'];
        $gtk = $params['gtk'];
        //Todo 验证权限
        $url="http://taotao.qq.com/cgi-bin/emotion_cgi_msglist_v6?uin=".$uqq."&inCharset=utf-8&outCharset=utf-8&hostUin=".$uqq."&notice=0&sort=0&pos=0&num=20&cgi_host=http%3A%2F%2Ftaotao.qq.com%2Fcgi-bin%2Femotion_cgi_msglist_v6&code_version=1&format=jsonp&need_private_comment=1&g_tk=".$gtk;
        //！！ 有坑 这里不需要p_skey 不知道是什么鬼 0.0
        $result = $this->sendToQq($url,array("p_skey"=>""));
        $result = $this->filterCallback($result);
        $result = json_decode($result,true);
        if (!empty($result['message'])) {
            consoleShow($result['message']);
        }
        //好友是否隐藏说说
        /*if (!isset($result[data][vFeeds])) {
            consoleShow("####该好友隐藏了说说");
            return true;
        }*/

        $this->shuoshuoNum = $result['total'];
        $friendShuoShuo = M('friend_shuoshuo');
        $lastShuoshuo = $friendShuoShuo->where(array('uin' => $uqq))->order("time desc")->find();
        $friendComment = M('friend_comment');
        $friendReplys = M('friend_replys');



        foreach ($result[msglist] as $v) {

            echo "<pre>";
            print_r($result[msglist]);
            echo "</pre>";exit;
            if($v['rt_certified']){
                //转发不计
                continue;
            }
            consoleShow("处理:".$v['tid']."开始");
            // 存储说说
            //获取数据库最后发布的说说日期进行比对，由于说说不会有更新且程序没必要同步删除。所以只需要同步增加
            //$info = M('friend_shuoshuo')->field(true)->find($id);
            $data = array();
            $data['uin'] = $uin = $v['uin'];
            $data['time'] = $v['created_time'];
            //如果存储的记录的最近时间大于获取时间 则直接返回
            $cellid = $v['tid'];
            if ($data['time'] > $lastShuoshuo['time']) {
                $data['cellid'] = $cellid;
                $where = array();
                $where['uin'] = $data['uin'];
                $where['cellid'] = $data['cellid'];
                //理论上不会有重复数据
                /*$row = $friendShuoShuo->where($where)->find();
                if ($row) {
                    continue;
                }*/
                $data['curlikekey'] = "http://user.qzone.qq.com/435024179/mood/".$cellid;
                //http://r.qzone.qq.com/cgi-bin/user/qz_opcnt2?_stp=1452151686481&unikey=http://user.qzone.qq.com/562809727/mood/7fcb8b21739c8c56963f0500
                $data['operatemask'] = $v['rt_certified']?"98315":"516107";
                //获取赞信息
                //_stp 实际上是13位的时间戳 一般让请求不被浏览器缓存即可
                $likeUrl="http://r.qzone.qq.com/cgi-bin/user/qz_opcnt2?_stp=".rand(1,999)."&unikey=".$data['curlikekey'].".1&fupdate=1&g_tk=".$gtk;
                $likeRes = $this->sendToQq($likeUrl);
                $likeRes = $this->filterCallback($likeRes);
                $likeRes = json_decode($likeRes,true);

                $likeNum = $likeRes['data'][0]['current']['likedata']['cnt'];
                $likemansVs = "";
                if($likeNum>0){
                    $likemansV = array();
                    $likemans = $likeRes['data'][0]['current']['likedata']['list'];
                    foreach ($likemans as $mans) {
                        $likemansV[] = $mans[0];
                    }
                    $likemansVs = implode(",", $likemansV);
                }

                $data['likemans'] = $likemansVs;
                $data['likenum'] = $likeNum?$likeNum: 0;
                $data['summary'] = $v['content'];

                if($v['pic']){

                }
                $data['summary_img_url'] = $v['operation']['share_info']['photo']['url'];
                $data['summary_img_wh'] = $v['operation']['share_info']['photo']['width'] . "," . $v['operation']['share_info']['photo']['height'];
                $data['timeline'] = $v['timeline']['timestr'];
                $data['cntnum'] = $v['comment']['cntnum'];

                $r = $friendShuoShuo->add($data);
                if ($r) {
                    consoleShow("##预存储:<a target='_blank' href='" . $data['curlikekey'] . "'>" . $data['cellid'] . "</a>成功");
                } else {
                    consoleShow("##预存储:<a target='_blank' href='" . $data['curlikekey'] . "' style='text-decoration: line-through'>" . $data['cellid'] . "失败</a>");
                }
            }
            // 存储评论

            if ($v['comment']['cntnum'] > 0) {
                consoleShow("####获取相关评论,数量：".$v['comment']['cntnum']);
                $comments = $v['comment']['comments'];
                foreach ($comments as $v2) {
                    $data = array();
                    $data['uin'] = $uin;
                    $fuin = $v2['user']['uin'];
                    $data['fuin'] = $fuin;
                    $data['cellid'] = $cellid;
                    $data['commentid'] = $v2['commentid'];
                    $data['commentpic'] = $v2['commentpic'];
                    $data['content'] = $v2['content'];
                    $data['referid'] = $v2['refer'] ? $v2['refer'] : 0;
                    $data['time'] = $v2['date'];
                    $where = array('cellid' => $cellid, 'fuin' => $fuin, 'commentid' => $v2['commentid']);
                    $row = $friendComment->where($where)->find();
                    if (!$row) {
                        $r = $friendComment->add($data);
                    }
                    unset($data['commentpic']);
                    unset($data['referid']);
                    // 存储回复
                    if ($v2['replynum'] > 0) {
                        consoleShow("####获取评论相关回复,数量:".$v2['replynum']);
                        $replys = $v2['replys'];
                        foreach ($replys as $v3) {
                            $replyId = $v3['replyid'];
                            $where['replyid'] = $replyId;
                            $fuin = $v3['user']['uin'];
                            $data['fuin'] = $fuin;
                            $data['content'] = $v3['content'];
                            $data['replyid'] = $v3['replyid'];
                            $data['replypic'] = $v3['replypic'];
                            $data['time'] = $v3['date'];
                            $data['referid'] = $v3['refer'] ? $v3['refer'] : 0;
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
            consoleShow("处理:".$v['id']['cellid']."结束");
        }

        if ($result["data"]["has_more"]) {
            $count += 40;
            $params["count"] = $count;
            return function () use ($params) {
                return $this->getData($params);
            };
        }
        consoleShow("<script>window.parent.lodingSsOver()</script>");
        return true;
    }


}