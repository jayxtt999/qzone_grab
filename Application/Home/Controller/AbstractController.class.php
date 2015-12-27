<?php
/**
 * Created by PhpStorm.
 * User: xiett
 * Date: 15-9-8
 * Time: 下午9:57
 */

namespace Home\Controller;
use Think\Controller;

class AbstractController  extends Controller{

    protected $qq;

    function __construct()
    {
        parent::__construct();
        if(!session("qq")){
           $this->error("登录超时","/home/home/index");
        }
        $this->qq = session("qq");
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
     * 过滤 Callback 字符 方法不够严谨 以后更新
     * @param $str
     * @return mixed
     */
    public function filterCallback($str){

        $str = str_replace("_Callback(","",$str);
        $str = str_replace(");","",$str);
        return $str;
    }


    /**
     * 保存用户信息
     * @param $qq
     * @return mixed
     */
    public function saveQqInfo($uin){


        //api 1
        $url = "http://r.qzone.qq.com/cgi-bin/user/cgi_personal_card?uin=".$uin."&remark=0&g_tk=".$this->qq['gtk'];
        $cookieArr = array(
            "uid"=>92869281,
            "pgv_pvid"=>164833436,
        );
        $result = $this->sendToQq($url,$cookieArr);
        $result = $this->filterCallback($result);
        $data = array();
        $userData = json_decode($result);
        $data['qq'] = $uin;
        $data['nickname'] = $userData->nickname;
        $data['avatarUrl'] = $userData->avatarUrl;
        $data['qqvip'] = $userData->qqvip;
        $data['from'] = $userData->from;
        $data['gender'] = $userData->gender;
        $data['realname'] = $userData->realname;
        if($userData->isFriend){
            //是好友 获取更多信息
            $url ="http://user.qzone.qq.com/p/base.s8/cgi-bin/user/cgi_userinfo_get_all?uin=".$uin."&vuin=".$this->qq['qq']."&fupdate=1&rd=0.".rand(1000)."&g_tk=".$this->qq['gtk'];
            $resultMore = $this->sendToQq($url);
            $resultMore = $this->filterCallback($resultMore);
            $userDataMore = json_decode($resultMore);
            if($userDataMore->code=="0"){
                $userData2 = $userDataMore->data;
                $data['age'] = $userData2->age;
                $birth = $userData2->birthday;
                $birthArr = explode("-",$birth);
                $data['birthday'] = $birthArr[1];
                $data['birthmonth'] = $birthArr[1];
                $data['birthyear'] = $userData2->birthyear;
                $data['city'] = $userData2->city;
                $data['constellation'] = $userData2->constellation;
                $data['country'] = $userData2->country;
                $data['province'] = $userData2->province;
                $data['signature'] = $userData2->signature;
            }
        }

        $user = M('user');
        $r = $user->where('qq='.$uin)->add($data);
        var_dump($r);
        var_dump($data);exit;
        return $data;

    }


    /**
     * 说说通用核心发包接口  特别注意的是  这个cookie key组装的时候前面要有个空格，没有就会失败，这个原因找个许久，也比较奇葩不是以为;分割么.....
     * @param $url
     * @param string $cookieCode
     * @return mixed
     */
    public function sendToQq($url,$cookieCode=array()){

        $cookie = array(
            " uin"=>$this->qq['uin'],
            " skey"=>$this->qq['sKey'],
            " p_uin"=>$this->qq['pUin'],
            " p_skey"=>$this->qq['pSkey'],
            " pt4_token"=>$this->qq['pt4Token'],
        );
        if(is_array($cookieCode) && $cookieCode){
            $cookie = array_merge($cookie,$cookieCode);
        }
        $cookieAs = "";
        foreach($cookie as $k=>$v){
            $cookieAs .=  ($k."=".$v.";");
        }
        $headers['Host'] = 'm.qzone.com';
        $curl = curl_init($url);
        curl_setopt($curl, CURLOPT_REFERER, '');
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt ($curl, CURLOPT_HTTPHEADER,$headers);
        curl_setopt($curl, CURLOPT_COOKIE, $cookieAs);
        $result = curl_exec($curl);
        curl_close($curl);
        return ($result);

    }

    /**
     * 获取qq用户信息
     * @param $qq
     * @return mixed
     */
    public function getUserInfo($qq){
        $user = M('user');
        $row = $user->where("qq=".$qq)->find();
        if($row){
            return $row;
        }else{
            return $this->saveQqInfo($qq);
        }
    }

    /*控制台*/
    public function console($msg){
        $this->display("console");
        consoleShow($msg);
    }


} 