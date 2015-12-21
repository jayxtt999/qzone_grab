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


    public function sendToQq($url,$cookieCode=""){

        $curl = curl_init($url);
        if($cookieCode){
            $cookie = $cookieCode;
        }else{
            $cookie = " p_uin=".$this->qq['pUin']."; skey=".$this->qq['sKey']."; uin=".$this->qq['uin'];
        }
        $headers['Host'] = 'm.qzone.com';
        curl_setopt($curl, CURLOPT_REFERER, '');
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt ($curl, CURLOPT_HTTPHEADER,$headers);
        curl_setopt($curl, CURLOPT_COOKIE, $cookie);
        $result = curl_exec($curl);
        curl_close($curl);
        return ($result);

    }


    /*控制台*/
    public function console($msg){
        $this->display("console");
        consoleShow($msg);
    }


} 