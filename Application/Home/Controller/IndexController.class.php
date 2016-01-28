<?php
namespace Home\Controller;

use Think\Controller;

class IndexController extends Controller
{

    private $tdCode;

    /**
     * 获取二维码
     */
    public function ptqrShow()
    {

        $rand = $_GET['r'];
        $ch = curl_init("http://ptlogin2.qq.com/ptqrshow?appid=549000912&e=2&l=M&s=3&d=72&v=4&t=0." . $rand . "&daid=5");
        $this->tdCode = tempnam('/tmp', 'tdcode');
        curl_setopt($ch, CURLOPT_REFERER, '');
        curl_setopt($ch, CURLOPT_COOKIEJAR, $this->tdCode);
        session("tdCodeTmp", $this->tdCode);
        $result = curl_exec($ch);
        curl_close($ch);
        header('Content-type: image/jpg');
        echo $result;
    }

    /**
     * 验证二维码
     * @return string
     */
    public function tdCodeCheck()
    {

        //存储临时cookie
        $tdCodeTmp = session("tdCodeTmp");
        //13位时间戳
        $microTime = explode(" ", microtime());
        $url = "http://ptlogin2.qq.com/ptqrlogin?u1=http%3A%2F%2Fqzs.qq.com%2Fqzone%2Fv5%2Floginsucc.html%3Fpara%3Dizone&ptredirect=0&h=1&t=1&g=1&from_ui=1&ptlang=2052&action=0-0-" . $microTime[1] . ceil($microTime[0] * 1000) . "&js_ver=10141&js_type=1&login_sig=&pt_uistyle=32&aid=549000912&daid=5&";
        $curl = curl_init($url);
        curl_setopt($curl, CURLOPT_REFERER, '');
        curl_setopt($curl, CURLOPT_COOKIEFILE, $tdCodeTmp); // 发送初始Cookie
        curl_setopt($curl, CURLOPT_COOKIEJAR, $tdCodeTmp); //    存储cookie
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        $result = curl_exec($curl);
        curl_close($curl);
        if (strpos($result, "'66'")) {
            return jsonObject(array("status" => 0, "msg" => "二维码未失效"));
        } else if (strpos($result, "'65'")) {
            return jsonObject(array("status" => 1, "msg" => "二维码已失效"));
        } else if (strpos($result, "'67'")) {
            return jsonObject(array("status" => 2, "msg" => "二维码认证中"));
        } else if (strpos($result, "http://ptlogin4.qzone.qq.com")) {
            //验证成功 获取相关cookie值
            preg_match("/ptuiCB\('0','0','(.*?)\'/", $result, $res);
            $url = $res[1];
            preg_match("/&uin=(\d+)&service/", $url, $qq);
            $qq = $qq[1];
            $curl = curl_init($url);
            curl_setopt($curl, CURLOPT_REFERER, '');
            curl_setopt($curl, CURLOPT_COOKIEFILE, $tdCodeTmp); // 发送初始Cookie
            curl_setopt($curl, CURLOPT_COOKIEJAR, $tdCodeTmp); //    存储cookie
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
            $result = curl_exec($curl);
            curl_close($curl);
            $exp = IS_WIN?"\r\n":"\n";//linux 没有\r
            $result = explode($exp, file_get_contents($tdCodeTmp));
            //挂服务器不知道为毛少了.qq.com	TRUE	/	FALSE	0	ptisp	ctc  这玩意干嘛的？
            if(count($result)==21){
                //有ptcz
                $uinRes = explode("	", $result[6]);
                $sKeyRes = explode("	", $result[7]);
                $ptczRes = explode("	", $result[16]);
                $pUinRes = explode("	", $result[17]);
                $pSkeyRes = explode("	", $result[18]);
                $pt4TokenRes = explode("	", $result[19]);
            }else{
                //无ptcz
                $uinRes = explode("	", $result[6]);
                $sKeyRes = explode("	", $result[7]);
                $ptczRes = explode("	", $result[15]);
                $pUinRes = explode("	", $result[16]);
                $pSkeyRes = explode("	", $result[17]);
                $pt4TokenRes = explode("	", $result[18]);
            }
            $uin = $uinRes[6];
            $sKey = $sKeyRes[6];
            $pUin = $pUinRes[6];
            $pSkey = $pSkeyRes[6];
            $pt4Token = $pt4TokenRes[6];
            $ptcz = $ptczRes[6];
            //根据sKey获取gtk
            $gtk = getGTK($sKey);
            $gtk2 = getGTK($pSkey);
            $data = array(
                "uin" => $uin,
                "sKey" => $sKey,
                "pUin" => $pUin,
                "pSkey" => $pSkey,
                "pt4Token" => $pt4Token,
                "ptcz" => $ptcz,
                "gtk" => $gtk,
                "gtk2" => $gtk2,
            );
            //存储信息.
            $data['qq']=$qq;
            $accredit = M('accredit');
            $row = $accredit->where("qq=".$qq)->find();
            if($row){
                $r = $accredit->where('qq='.$qq)->save($data);
            }else{
                $r = $accredit->add($data);
                file_put_contents("a.txt",$result);

            }
            if($r){
                session("loginType","tdCode");
                session("qq",$data);
                return jsonObject(array("status" => 3, "msg" => "ok"));
            }else{
                return jsonObject(array("status" => 4, "msg" => "授权失败,请重试"));
            }
        }
    }


    public function index()
    {
        $this->display('index');
    }

    public function login()
    {
        $qq = I('post.qq');
        $pwd = I('post.pwd');
        if (!$qq || !$pwd) {
            $this->error("QQ号码或密码为空", "/home/home/index");
        }
        if (!preg_match("/^\d{4,12}$/", $qq, $match)) {
            $this->error("QQ号码格式错误", "/home/home/index");
        }
        //获取初始sid与vdata
        $initookie = tempnam('./temp', 'initookie');
        $ch = curl_init("http://pt.3g.qq.com/s?aid=nLoginqz");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HEADER, true);
        curl_setopt($ch, CURLOPT_COOKIEJAR, $initookie);
        $result = curl_exec($ch);
        curl_close($ch);
        preg_match("/<go href=\"(.*)\" method/", $result, $match);
        $goUrl = $match[1];

        //登录
        $cookie = tempnam('./temp', 'cookie' . $qq);
        $curl = curl_init($goUrl);
        curl_setopt($curl, CURLOPT_HEADER, 0);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_COOKIEFILE, $initookie); // 发送初始Cookie
        curl_setopt($curl, CURLOPT_COOKIEJAR, $cookie); //    存储cookie
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_REFERER, "pt.3g.qq.com");
        curl_setopt($curl, CURLOPT_HTTPHEADER, get_client_ip());
        curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($_POST));
        $result = curl_exec($curl);
        curl_close($curl);
        //提取sid
        preg_match("/.+<a href=\".+sid=((\w|\W)+)\"/", $result, $res);
        $sid = $res[1];

        if (empty($sid)) {
            $this->error("Error", '/', 3);
        } else {
            session('sid', $sid);
            session('qq', $qq);
            $this->success("登陆成功", "/home/home/index");
        }
    }

}