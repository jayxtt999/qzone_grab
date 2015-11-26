<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {

    private  $tdCode;


    public function ptqrShow(){

        $rand = $_GET['r'];
        $ch = curl_init("http://ptlogin2.qq.com/ptqrshow?appid=549000912&e=2&l=M&s=3&d=72&v=4&t=0.".$rand."&daid=5");
        $this->tdCode = tempnam('./temp', 'tdcode');
        curl_setopt ($ch,CURLOPT_REFERER,'');
        curl_setopt ( $ch, CURLOPT_COOKIEJAR, $this->tdCode);
        session("tdCodeTmp",$this->tdCode);
        $result = curl_exec($ch);
        curl_close($ch);
        header('Content-type: image/jpg');
        echo $result;
    }

    public function tdCodeCheck(){

        $tdCodeTmp = session("tdCodeTmp");
        //13位时间戳
        $microTime = explode(" ",microtime());
        $url = "http://ptlogin2.qq.com/ptqrlogin?u1=http%3A%2F%2Fqzs.qq.com%2Fqzone%2Fv5%2Floginsucc.html%3Fpara%3Dizone&ptredirect=0&h=1&t=1&g=1&from_ui=1&ptlang=2052&action=0-0-".$microTime[1].ceil($microTime[0] * 1000)."&js_ver=10141&js_type=1&login_sig=&pt_uistyle=32&aid=549000912&daid=5&";
        $curl = curl_init($url);
        curl_setopt ($curl,CURLOPT_REFERER,'');
        curl_setopt($curl, CURLOPT_COOKIEFILE,$tdCodeTmp); // 发送初始Cookie
        curl_setopt($curl, CURLOPT_COOKIEJAR,$tdCodeTmp); //    存储cookie
        $result = curl_exec($curl);
        curl_close($curl);
        if(strpos($result,"二维码未失效")){
            return json_encode(array("status",0));
        }else if(strpos($result,"二维码已失效")){
            return json_encode(array("status",1));
        }else if(strpos($result,"二维码认证中")){
            return json_encode(array("status",2));
        }else if(strpos($result,"http://ptlogin4.qzone.qq.com")){
            return json_encode(array("status",3));
        }
    }

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