<?php
namespace Home\Controller;
use Think\Controller;
class ShowController extends Controller {

    private $shuoshuo = "";


    /**
     * 显示列表
     */
    public function Table(){
        ini_set('date.timezone','Asia/Shanghai');
        $uqq = session('uqq');
        $shuoshuoAll = unserialize(F($uqq));
        $shuoshuoAll = @array_reverse($shuoshuoAll);
        $chartData = "";
        $max = array();
        $numAll = 0;
        $likeAll = 0;
        $shuoshuoNum = count($shuoshuoAll)+1;
        $shuoshuoOne = date('Y,m,d',$shuoshuoAll[0]['comm']['time']);
        foreach( $shuoshuoAll as $shuoshuo){
            //统计全部评论与赞数目
            $numAll += @$shuoshuo['comment']['num'];
            $likeAll += @$shuoshuo['like']['num'];
            if(isset($shuoshuo[original])){
                //转发不计
                continue;
            }
            $ymd = date('Y-m-d',$shuoshuo['comm']['time']);
            if(!@($shuoshuo['comment']['num'])){
                $shuoshuo['comment']['num'] = 0;
            }
            if(!@($shuoshuo['like']['num'])){
                $shuoshuo['like']['num'] = 0;
            }
            if( $shuoshuo['like']['num'] == 0 && $shuoshuo['comment']['num'] == 0){
                continue;
            }
            $commentTop[$shuoshuo['comment']['num']] = @$shuoshuo['summary']['summary']."$$$".$shuoshuo['comm']['curlikekey'];
            $max[] =  $shuoshuo['comment']['num'];
            $max[] = $shuoshuo['like']['num'];
            //合并数据
            $chartData.="{'date': '".$ymd."','italy': 1,'like':".$shuoshuo['like']['num'].",'comment':".$shuoshuo['comment']['num']."},";
            //echo $chartData;exit();
        }
        //计算 说说或者赞 中最大值 为显示最大值用
        $pos = array_search(max($max), $max);
        $maxVal = $max[$pos];
        //计算 评论前十
        $top = array_reverse($commentTop);
        $this->chartData = $chartData;
        $this->maxVal = $maxVal;
        $this->top = $top;
        $this->shuoshuoAll = $shuoshuoAll;
        $this->shuoshuoNum = $shuoshuoNum;
        $this->shuoshuoOne = $shuoshuoOne;
        $this->likeAll = $likeAll;
        $this->numAll = $numAll;
        $this->display('index');
    }



    public function Emotion(){

        $uqq = session('uqq');
        error_reporting( E_ALL & ~E_STRICT );
        ini_set('date.timezone','Asia/Shanghai');
        $strShuoshuo = "";
        if($this->shuoshuo){
            $strShuoshuo = $this->shuoshuo;
        }else{
            $shuoshuoAll = unserialize(F($uqq));
            $shuoshuoAll = @array_reverse($shuoshuoAll);
            foreach( $shuoshuoAll as $shuoshuo){
                @$strShuoshuo.=$shuoshuo['summary']['summary']."  ";
            }
            $strShuoshuo = iconv( "UTF-8", "gb2312//IGNORE" ,$strShuoshuo);
        }

        

        //F()

        Vendor('QcloudApi.QcloudApi');
        $service = \QcloudApi::load(\QcloudApi::MODULE_WENZHI, C("QcloudApi"));
        $method = 'POST';
        $service->setConfigRequestMethod($method);
        $package = array("content"=>"李亚鹏挺王菲：加油！孩儿他娘。");
        $request = $service->TextSentiment($package);
        if ($request === false) {
            $error = $service->getError();
            echo "Error code:" . $error->getCode() . ".\n";
            echo "message:" . $error->getMessage() . ".\n";
            echo "ext:" . var_export($error->getExt(), true) . ".\n";
        } else {
            var_dump($request);
        }
        $this->display('emotion');
        exit;

    }


    /**
     * 分词
     */
    public function KeyItem(){

        $strShuoshuo = "";
        ini_set('date.timezone','Asia/Shanghai');
        $uqq = session('uqq');
        error_reporting( E_ALL & ~E_STRICT );
        $shuoshuoAll = unserialize(F($uqq));
        $shuoshuoAll = @array_reverse($shuoshuoAll);
        foreach( $shuoshuoAll as $shuoshuo){
            @$strShuoshuo.=$shuoshuo['summary']['summary']."  ";
        }
        $strShuoshuo = iconv( "UTF-8", "gb2312//IGNORE" ,$strShuoshuo);
        $stag = 'source';
        $slen = strlen($stag);
        if (isset($_SERVER['QUERY_STRING'])
            && !strncmp($_SERVER['QUERY_STRING'], $stag, $slen))
        {
            $qlen = strlen($_SERVER['QUERY_STRING']);
            $files = array('pscws2', 'pscws3', 'dict', 'xdb_r');
            $file = ($qlen > $slen && $qlen < ($slen + count($files))) ? $files[$qlen-$slen] . '.class.php' : __FILE__;
            highlight_file($file);
            exit(0);
        }

        $time_start = $this->get_microtime();
        $allcity="";
        $city = explode("\r\n",F("ssx"));
        $dict = 'dict/dict.xdb';
        $mydata  = NULL;
        $version = 3;
        $autodis = false;
        $ignore  = true;
        $debug   = false;
        $stats	 = true;
        $is_cli  = (php_sapi_name() == 'cli');
        $sample_text = $strShuoshuo;
        if ($is_cli)
        {
            $argc = $_SERVER['argc'];
            for ($i = 1; $i < $argc; $i++)
            {
                $optarg = $_SERVER['argv'][$i];
                if (!strncmp($optarg, "--", 2))
                {
                    $cmp = substr($optarg, 2);
                    if (!strcasecmp($cmp, "help"))
                    {
                        $mydata = NULL;
                        break;
                    }
                    else if (!strcasecmp($cmp, "autodis"))
                        $autodis = true;
                    else if (!strcasecmp($cmp, "ignore"))
                        $ignore = true;
                    else if (!strcasecmp($cmp, "v2"))
                        $version = 2;
                    else if (!strcasecmp($cmp, "debug"))
                        $debug = true;
                    else if (!strcasecmp($cmp, "stats"))
                        $stats = true;
                    else if (!strcasecmp($cmp, "dict"))
                    {
                        $i++;
                        $dict = $_SERVER['argv'][$i];
                    }
                }
                else if (is_null($mydata))
                {
                    if (is_file($optarg)) $mydata = @file_get_contents($optarg);
                    else $mydata = trim($optarg);
                }
            }
        }
        else
        {
            $checked_ignore = $checked_autodis = $checked_v2 = '';
            $mydata = $sample_text;
            if (get_magic_quotes_gpc()){
                $mydata = stripslashes($mydata);
            }
        }
        if (!is_null($mydata)){
            $mydata = trim($mydata);
        }
        $object = 'pscws' . $version;
        import("Home.Pscws23.".strtolower($object));
        $cws = new $object($dict);
        $cws->set_ignore_mark($ignore);
        $cws->set_autodis($autodis);
        $cws->set_debug($debug);
        $cws->set_statistics($stats);
        $cws->segment($mydata);
        $array = array("不","是","几","你","我","他","它","好","了","么","吗","去","恩","嗯","呀","哼","哦","嗄","吧","啊","嘛","的","得","地","为","喔","是","个","好","就","啦","在","这","才","那","没");
        $list = array_reverse($cws->get_statistics());
        $word_num = 0;
        $i = 0;
        $res = "";
        foreach ($list as $k => $v)
        {
            if(strlen($k)<4){
                continue;
            }
            if(array_intersect(str_split($k,2),$array)){
                continue;
            }
            $res.= "<a href='http://www.baidu.com/s?wd=<".$k."' target='_blank'>".$k."</a>";
            $count[$i]['name'] = $k;
            $count[$i]['v'] = $v['times'];
            $word_num += $v['times'];
            $i++;
        }
        $this->res = iconv('gbk','utf-8',$res);
        $this->display('keyitem');
    }

    public function get_microtime()
    {
        list($usec, $sec) = explode(' ', microtime());
        return ((float)$usec + (float)$sec);
    }

    public function sysSortArray($ArrayData,$KeyName1,$SortOrder1 = "SORT_ASC",$SortType1 = "SORT_REGULAR")
    {
        if(!is_array($ArrayData))
        {
            return $ArrayData;
        }
        $ArgCount = func_num_args();
        for($I = 1;$I < $ArgCount;$I ++)
        {
            $Arg = func_get_arg($I);
            if(!eregi("SORT",$Arg))
            {
                $KeyNameList[] = $Arg;
                $SortRule[] = '$'.$Arg;
            }
            else
            {
                $SortRule[] = $Arg;
            }
        }
        foreach($ArrayData AS $Key => $Info)
        {
            foreach($KeyNameList AS $KeyName)
            {
                ${$KeyName}[$Key] = $Info[$KeyName];
            }
        }
        $EvalString = 'array_multisort('.join(",",$SortRule).',$ArrayData);';
        eval ($EvalString);
        return $ArrayData;
    }



}