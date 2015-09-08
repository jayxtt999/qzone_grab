<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        $this->display('index');
    }

    public function login(){
        $qq = I('post.qq');
        $pwd = I('post.pwd');
        if(!$qq || !$pwd){
            $this->error("QQ号码或密码为空","/home/home/index");
        }
        if(!preg_match("/^\d{4,12}$/",$qq,$match)){
            $this->error("QQ号码格式错误","/home/home/index");
        }
        //获取初始sid与vdata
        $initookie = tempnam('./temp', 'initookie');
        $ch = curl_init("http://pt.3g.qq.com/s?aid=nLoginqz");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HEADER, true);
        curl_setopt ( $ch, CURLOPT_COOKIEJAR, $initookie);
        $result = curl_exec($ch);
        curl_close($ch);
        preg_match("/<go href=\"(.*)\" method/",$result,$match);
        $goUrl = $match[1];

        //登录
        $cookie = tempnam('./temp', 'cookie' . $qq);
        $curl = curl_init($goUrl);
        curl_setopt($curl, CURLOPT_HEADER, 0);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_COOKIEFILE, $initookie); // 发送初始Cookie
        curl_setopt($curl, CURLOPT_COOKIEJAR, $cookie); //    存储cookie
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt ($curl,CURLOPT_REFERER,"pt.3g.qq.com");
        curl_setopt($curl, CURLOPT_HTTPHEADER,get_client_ip());
        curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($_POST));
        $result = curl_exec($curl);
        curl_close($curl);
        //提取sid
        preg_match("/.+<a href=\".+sid=((\w|\W)+)\"/", $result, $res);
        $sid = $res[1];

        if (empty($sid)) {
            $this->error("Error", '/', 3);
        }else{
            session('sid', $sid);
            session('qq', $qq);
            $this->success("登陆成功","/home/home/index");
        }
    }
}