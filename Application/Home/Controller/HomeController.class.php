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
        $result = $this->sendToQq($url);
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


    public  function showShuoshuoList(){

        //return $this->ajaxReturn(array(1,2,3));

        $uqq = "154894476";
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
                $result[$k]['likemansAndNum'] = $v['likenum']-count($likemansArr);
            }
            $result[$k]['user'] = $this->getUserInfo($uqq);exit;
            if($v['cntnum']){
                $comment = $ssLogic->getComment($uqq,$v['cellid']);
                foreach($comment as $k2=>$v2){
                    $comment[$k2]['date'] = date("Y-m-d H:i",$v2['time']);
                    $comment[$k2]['user'] = $this->getUserInfo($v2['fuin']);;
                    if($v2['replynum']>0){
                        $replys = $ssLogic->getReplys($v2['cellid'],$v2['commentid']);
                        foreach($replys as $k3=>$v3){
                            $replys[$k3]['date'] = date("Y-m-d H:i",$v3['time']);
                            $comment[$k3]['user'] = $this->getUserInfo($v3['fuin']);exit;
                        }
                        $comment[$k2]['replys'] = $replys;
                    }
                }
                exit;

                $result[$k]['comment'] = $comment;
                echo date("Y-m-d H:i:s")."<br/>";
                ob_flush();
                flush();
            }
            echo date("Y-m-d H:i:s")."<br/>";
            ob_flush();
            flush();
        }
        //debug pass
        //var_dump($result[0]['comment'][0]['replys'][0]);exit;
        return $this->ajaxReturn($result);


    }



}