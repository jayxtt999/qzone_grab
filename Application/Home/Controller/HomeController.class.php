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
        $mfriend_list = F('mfriend_list' . $this->qq['qq']);
        $mfriend_list = null;
        if(!unserialize($mfriend_list)){
            $url = "http://r.cnc.qzone.qq.com/cgi-bin/tfriend/friend_mngfrd_get.cgi?uin=".$this->qq['qq']."&rd=".rand(1,999)."&g_tk=".$this->qq['gtk'];
            $result = $this->sendToQq($url);
            $result = $this->filterCallback($result);
            $results = json_decode($result);
            F('mfriend_list' . $this->qq['qq'],serialize($results));
        }else{
            $results = unserialize($mfriend_list);
        }
        $datas = $results->items;
        $gpnames = $results->gpnames;
        //存储相关数据
        //F('fl_' . $this->qq['qq'], $results);
        $this->groud = $gpnames;
        //$this->autoZantask = F('zan_lock_' . $this->qq['qq']);
        //$this->autoCommtask = F('comm_lock_' . $this->qq['qq']);
        $this->assign("qq",$this->qq['qq']);
        $this->assign("groud",$gpnames);
        $this->assign("data",$datas);
        $this->display('index');
    }

    /**
     * 显示说说数据
     */
    public  function showShuoshuoList(){

        $uqq = I('post.uin');
        $shuoshuoAll = array();
        $friendShuoshuo = M('friend_shuoshuo');
        $ssLogic = D('Shuoshuo','Logic');
        //Todo 分页
        $result = $friendShuoshuo->where("uin=".$uqq)->select();
        //获取说说
        foreach($result as $k=>$v){
            $likemans = $v['likemans'];
            //2种显示形式假设赞数量为10
            //1：赞（10）
            //2：张三,李四,王五等7人觉得很赞
            if($likemans && strpos($likemans,",")){
                $likemansArr = explode(",",$likemans);
                $result[$k]['likemansArr'] = $likemansArr;
                if(in_array($this->qq['qq'],$likemansArr)){
                    $result[$k]['islike'] = true;
                }else{
                    $result[$k]['islike'] = false;
                }
                $result[$k]['likemansAndNum'] = $v['likenum']-count($likemansArr);
            }
            $result[$k]['user'] = $this->getUserInfo($uqq);
            if($v['cmtnum']){
                $comment = $ssLogic->getComment($uqq,$v['cellid']);
                foreach($comment as $k2=>$v2){
                    $comment[$k2]['date'] = date("Y-m-d H:i",$v2['time']);
                    $comment[$k2]['user'] = $this->getUserInfo($v2['fuin']);;
                    if($v2['replynum']>0){
                        $replys = $ssLogic->getReplys($v2['cellid'],$v2['commentid']);
                        foreach($replys as $k3=>$v3){
                            $replys[$k3]['date'] = date("Y-m-d H:i",$v3['time']);
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
        /*echo("<pre>");
        print_r($result);
        echo("</pre>");exit;*/
        return $this->ajaxReturn($result);

    }






    public function like(){

        $uin = I('post.uin');
        $cellid = I('post.cellid');
        $c = I('post.c');
        $ssLogic = D('Shuoshuo','Logic');
        if(!$uin || !$cellid){
            return $this->ajaxReturn(array("status"=>false,"msg"=>"参数错误"));
        }
        $ssRow = $ssLogic->getShuoshuoRow($uin,$cellid);
        if(!$ssRow){
            return $this->ajaxReturn(array("status"=>false,"msg"=>"数据异常"));
        }
        $data = array(
            "opuin"=>$uin,
            "unikey"=>$ssRow['curlikekey'],
            "curkey"=>$ssRow['curlikekey'],
            "from"=>1,
            "appid"=>311,
            "typeid"=>0,
            "abstime"=>time(),
            "fid"=>$ssRow['cellid'],
            "active"=>0,
            "fupdate"=>1,
        );
        if($c){
            $url = "http://w.cnc.qzone.qq.com/cgi-bin/likes/internal_dolike_app?g_tk=".$this->qq['gtk'];
        }else{
            $url = "http://w.cnc.qzone.qq.com/cgi-bin/likes/internal_unlike_app?g_tk=".$this->qq['gtk'];
        }
        $res = $this->sendToQq($url,array(),$data);
        //返回点赞者
        return $this->ajaxReturn(array("status"=>true,"qq"=>$this->qq['qq']));

    }


    public function commentSs(){
        $uin = I('post.uin');
        $cid = I('post.cid');
        $content = I('post.content');
        $private = I('post.private');
        $url = "http://taotao.qzone.qq.com/cgi-bin/emotion_cgi_re_feeds?g_tk=".$this->qq['gtk'];
        if(!$uin || !$cid){
            return $this->ajaxReturn(array("status"=>false,"msg"=>"参数错误"));
        }
        if(!$content){
            return $this->ajaxReturn(array("status"=>false,"msg"=>"内容不能为空"));
        }
        //是否为私密
        $private = $private?$private:0;
        $data = array(
            "topicId"=>$uin."_".$cid."_1",
            "feedsType"=>"100",
            "inCharset"=>"utf-8",
            "outCharset"=>"utf-8",
            "plat"=>"qzone",
            "source"=>"ic",
            "hostUin"=>$uin,
            "platformid"=>"50",
            "uin"=>$this->qq['qq'],
            "format"=>"fs",
            "ref"=>"feeds",
            "content"=>$content,
            "private"=>$private,
            "paramstr"=>"1"
        );
        $res = $this->sendToQq($url,array(),$data);
        preg_match("\"message\"\:\"(.*?)\"",$res,$results);


    }


}