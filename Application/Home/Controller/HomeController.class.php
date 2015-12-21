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


    public  function showShuoshuoList(){

        $uqq = "154894476";
        $shuoshuoAll = array();
        $friendShuoshuo = M('friend_shuoshuo');
        $ssLogic = D('Shuoshuo','Logic');
        $result = $friendShuoshuo->where("uin=".$uqq)->select();
        foreach($result as $k=>$v){
            $result[$k]['user'] = $this->getUserInfo($uqq);
            if($v['cntnum']){
                $result[$k]['comment'] = $ssLogic->getComment($uqq,$v['cellid']);
            }
            
        }


        $this->assign("ssAll",$result);
        $this->display('sslist');


    }



}