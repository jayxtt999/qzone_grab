<?php
namespace Home\Controller;

use Think\Model;

class HomeController extends AbstractController
{

    private $interval = 30;//自动赞,评论间隔时间 (分钟)
    private $autoCon = "【自动评论】";//小尾巴


    public function index(){

        $this->display();
    }

    /**
     * 主页
     */
    public function friend()
    {
        $this->qq = is_array(session('qq')) ? session('qq') : $this->error("请重新登录", '/', 3);
        //获取好友列表
        $mfriend_list = F('mfriend_list' . $this->qq['qq']);
        $mfriend_list = null;
        if (!unserialize($mfriend_list)) {
            $url = "http://r.cnc.qzone.qq.com/cgi-bin/tfriend/friend_mngfrd_get.cgi?uin=" . $this->qq['qq'] . "&rd=" . rand(1, 999) . "&g_tk=" . $this->qq['gtk'];
            $result = $this->sendToQq($url);
            $result = $this->filterCallback($result);
            $results = json_decode($result);
            F('mfriend_list' . $this->qq['qq'], serialize($results));
        } else {
            $results = unserialize($mfriend_list);
        }
        $datas = $results->items;
        $gpnames = $results->gpnames;
        //存储相关数据
        //F('fl_' . $this->qq['qq'], $results);
        $this->groud = $gpnames;
        //$this->autoZantask = F('zan_lock_' . $this->qq['qq']);
        //$this->autoCommtask = F('comm_lock_' . $this->qq['qq']);
        //设置cookie
        $this->assign("qq", $this->qq['qq']);
        $this->assign("groud", $gpnames);
        $this->assign("data", $datas);
        $this->display();
    }

    /**
     * 显示说说数据
     */
    public function showShuoshuoList()
    {

        $uqq = I('post.uin');
        $page = I('post.page') ? I('post.page') : 1;
        $uqq = 435024179;
        $shuoshuoAll = array();
        $friendShuoshuo = M('friend_shuoshuo');
        $ssLogic = D('Shuoshuo', 'Logic');

        $pageLimit = 1;//每次条数
        $result = $friendShuoshuo->where("uin=" . $uqq)->page($page . ',' . $pageLimit)->select();
        $count = $friendShuoshuo->where("uin=" . $uqq)->count();// 总记录数
        if ($count > $page * $pageLimit) {
            $isMore = true;
        } else {
            $isMore = false;
        }
        //29  5  1
        //获取说说
        if ($result) {
            foreach ($result as $k => $v) {
                $likemans = $v['likemans'];
                //2种显示形式假设赞数量为10
                //1：赞（10）
                //2：张三,李四,王五等7人觉得很赞
                if ($likemans || strpos($likemans, ",")) {
                    $likemansArr = explode(",", $likemans);
                    $result[$k]['likemansArr'] = $likemansArr;
                    if (in_array($this->qq['qq'], $likemansArr)) {
                        $result[$k]['islike'] = true;
                    } else {
                        $result[$k]['islike'] = false;
                    }
                    $likemansAndNum = $v['likenum'] - count($likemansArr);
                    if($likemansAndNum>0){
                        $result[$k]['likemansAndNum'] = $likemansAndNum;
                    }
                }
                //是否有图片
                if ($v['summary_img_url']) {
                    $imgArr = array();
                    $imgUrlArr = unserialize($v['summary_img_url']);
                    $imgWhArr = unserialize($v['summary_img_wh']);
                    foreach ($imgUrlArr as $imgK => $img) {
                        $wh = explode(",", $imgWhArr[$imgK]);
                        $imgArr[$imgK] = array('url' => $imgUrlArr[$imgK], 'w' => $wh[0], 'h' => $wh[1]);

                    }
                    $result[$k]['img'] = $imgArr;
                }
                //是否有视频
                if ($v['video']) {
                    $videoArr = array();
                    $videoHost = "http://180.153.208.230/";
                    $video = unserialize($v['video']);
                    foreach ($video as $vvideo) {
                        $videoArr[] = $videoHost . str_replace("http://", "", $vvideo)."&ocid=1";
                    }
                    $result[$k]['video'] = $videoArr;
                }
                //设备
                if ($v['source_name']) {
                    $result[$k]['source_name'] = $v['source_name'];
                }
                //地理位置
                if ($v['story_info']) {
                    $result[$k]['story_info'] = unserialize($v['story_info']);
                }
                //EM表情 与 @
                if(stripos($v['summary'],"[em]")>=0){
                    /*$a = "我是无辜的[em]e148[/em]我也是无辜的[em]e148[/em]还有我";


                    echo preg_replace("/\[em\](.*?)\[\/em\]/","<img alt='☺'  src='http://ctc.qzonestyle.gtimg.cn/qzone/em/".'$1'.".gif?max_age=2592000' style='width: 24px; height: 24px;'>",$a);


                    exit;*/

                    $result[$k]['summary'] = preg_replace("/\[em\](.*?)\[\/em\]/","<img alt='☺'  src='http://ctc.qzonestyle.gtimg.cn/qzone/em/".'$1'.".gif?max_age=2592000' style='width: 24px; height: 24px;'>",$v['summary'] );;
                }

                $result[$k]['user'] = $this->getUserInfo($uqq);
                if ($v['cmtnum']) {
                    $comment = $ssLogic->getComment($uqq, $v['cellid']);
                    foreach ($comment as $k2 => $v2) {
                        $comment[$k2]['date'] = date("Y-m-d H:i", $v2['time']);
                        $comment[$k2]['user'] = $this->getUserInfo($v2['fuin']);;
                        if ($v2['replynum'] > 0) {
                            $replys = $ssLogic->getReplys($v2['cellid'], $v2['commentid']);
                            foreach ($replys as $k3 => $v3) {
                                $replys[$k3]['date'] = date("Y-m-d H:i", $v3['time']);
                                $replys[$k3]['user'] = $this->getUserInfo($v3['fuin']);
                            }
                            $comment[$k2]['replys'] = $replys;
                        }
                    }
                    $result[$k]['comment'] = $comment;
                    ob_flush();
                    flush();
                }
                ob_flush();
                flush();
            }
        }
        /*echo("<pre>");
        print_r($result);
        echo("</pre>");exit;*/
        return $this->ajaxReturn(array("result" => $result, "isMore" => $isMore, "nextPage" => $page + 1, "uin" => $uqq));

    }

    /**
     * 点赞
     */
    public function like()
    {

        $uin = I('post.uin');
        $cellid = I('post.cellid');
        $c = I('post.c');
        $ssLogic = D('Shuoshuo', 'Logic');
        if (!$uin || !$cellid) {
            return $this->ajaxReturn(array("status" => false, "msg" => "参数错误"));
        }
        $ssRow = $ssLogic->getShuoshuoRow($uin, $cellid);
        if (!$ssRow) {
            return $this->ajaxReturn(array("status" => false, "msg" => "数据异常"));
        }
        $data = array(
            "opuin" => $uin,
            "unikey" => $ssRow['curlikekey'],
            "curkey" => $ssRow['curlikekey'],
            "from" => 1,
            "appid" => 311,
            "typeid" => 0,
            "abstime" => time(),
            "fid" => $ssRow['cellid'],
            "active" => 0,
            "fupdate" => 1,
        );
        if ($c) {
            $url = "http://w.cnc.qzone.qq.com/cgi-bin/likes/internal_dolike_app?g_tk=" . $this->qq['gtk'];
        } else {
            $url = "http://w.cnc.qzone.qq.com/cgi-bin/likes/internal_unlike_app?g_tk=" . $this->qq['gtk'];
        }
        $res = $this->sendToQq($url, array(), $data);
        //返回点赞者
        return $this->ajaxReturn(array("status" => true, "qq" => $this->qq['qq']));

    }

    /**
     * 评论
     */
    public function commentSs()
    {

        /*
            这一块与前端交互起来非常麻烦，估计以后会忘记
            可参考一下模版
            这里有个type 是为了判断 评论与回复的前端样式  直接评论换行缩进  回复评论也是换行缩进 但是回复其它人的回复只需要换行
            直接评论
            uin	435024179 当前登录的qq
            hostUin	164483642 //要评论说说的作者qq
            topicId	164483642_3ad2cd0953ea7a53164d0e00 说说id
            commentId 如果有这个id则表示为回复其它人的评论
            commentUin	435024179 回复谁
            content	855555555555555555555555 内容
            private	0 是否私密
            with_fwd	0
            to_tweet	0
            hostuin	435024179 当前登录的qq
            code_version	1
            format	fs

            回复
            uin	435024179
            hostUin	164483642
            topicId	164483642_3ad2cd09905796561bff0800
            commentId	6
            commentUin	164483642
            content	@{uin:164483642,nick:Mas,auto:1} 000000321313
            private	0
            with_fwd	0
            to_tweet	0
            hostuin	435024179
            code_version	1
            format	fs
        */

        $uin = I('post.uin');
        $hostUin = I('post.hostuin');
        $cid = I('post.cellid');
        $commentId = I('post.commentid');
        $content = I('post.content');
        $private = I('post.private');
        $commentUin = $commentId ? I('post.commentuin') : $this->qq['qq'];
        $api = $commentId ? "emotion_cgi_addreply_ugc" : "emotion_cgi_addcomment_ugc";
        $url = "http://taotao.qzone.qq.com/cgi-bin/" . $api . "?g_tk=" . $this->qq['gtk2'];
        if (!$uin || !$cid) {
            return $this->ajaxReturn(array("status" => false, "msg" => "参数错误"));
        }
        if (!trim($content)) {
            return $this->ajaxReturn(array("status" => false, "msg" => "内容不能为空"));
        }
        $type = $commentId ? "rep" : "com";
        //是否为私密
        $private = $private ? $private : 0;
        $data = array(
            "uin" => $this->qq['qq'],
            "hostUin" => $hostUin,
            "topicId" => $hostUin . "_" . $cid,
            "content" => $content,
            "private" => $private,
            "commentUin" => $commentUin,
            "commentId" => $commentId,
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
            return $this->ajaxReturn(array("status" => false, "msg" => $results['message']));
        } else {
            $qq = $this->getUserInfo($this->qq['qq']);
            $v = array(
                "uin" => $uin,
                "cid" => $cid,
                "commentid" => $results['tid'],
                "commentuin" => $qq['qq'],
                "content" => $results['data']['content'],
                "user" => $qq['nickname'],
                "hostUin" => $hostUin,
                "qq" => $qq['qq'],
                "type" => $type,
                "date" => date("Y-m-d H:i:s", $results['data']['postTime']),
            );
            return $this->ajaxReturn(array("status" => true, "data" => $v));
        }

    }

    /**
     * 解决qq空间图片防盗链
     */
    public function showPic()
    {

        $url = I('get.picurl');
        $dir = pathinfo($url);
        $host = $dir['dirname'];
        $refer = $host . '/';
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_REFERER, $refer);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_BINARYTRANSFER, 1);
        $data = curl_exec($ch);
        curl_close($ch);
        $ext = strtolower(substr(strrchr($url, '.'), 1, 10));
        $types = array(
            'gif' => 'image/gif',
            'jpeg' => 'image/jpeg',
            'jpg' => 'image/jpeg',
            'jpe' => 'image/jpeg',
            'png' => 'image/png',
        );
        $type = $types[$ext] ? $types[$ext] : 'image/jpeg';
        header("Content-type: " . $type);
        echo $data;
    }

    public function sslist()
    {
        $this->display('sslist');
    }


}