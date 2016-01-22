<?php
namespace Home\Controller;
class ShowController extends AbstractController {

    private $shuoshuo = array();

    /**
     * 显示列表
     */
    public function Table(){
        ini_set('date.timezone','Asia/Shanghai');
        $uqq = I("get.uqq");
        if(!$uqq){
            echo "请先选择好友";exit;
        }
        $ssLogic = D('Shuoshuo', 'Logic');
        $shuoshuoAll = $ssLogic->getShuoShuoAll(array("uin"=>$uqq));
        $shuoshuoAll = array_reverse($shuoshuoAll);
        $chartData = "";
        $max = array();
        $numAll = 0;
        $likeAll = 0;
        $shuoshuoNum = count($shuoshuoAll);
        $shuoshuoOne = date('Y,m,d',$shuoshuoAll[0]['time']);
        foreach( $shuoshuoAll as $shuoshuo){
            //统计全部评论与赞数目
            $numAll += $shuoshuo['cmtnum'];
            $likeAll += $shuoshuo['likenum'];
            $ymd = date('Y-m-d',$shuoshuo['time']);
            if( $shuoshuo['likenum'] == 0 && $shuoshuo['cmtnum'] == 0){
                continue;
            }
            $commentTop[$shuoshuo['cmtnum']] = @$shuoshuo['summary']."$$$".$shuoshuo['curlikekey'];
            $max[] =  $shuoshuo['cmtnum'];
            $max[] = $shuoshuo['likenum'];
            //合并数据
            $chartData.="{'date': '".$ymd."','italy': 1,'like':".$shuoshuo['likenum'].",'comment':".$shuoshuo['cmtnum']."},";
            //echo $chartData;exit();
        }
        //计算 说说或者赞 中最大值 为前端显示最大y值用
        $pos = array_search(max($max), $max);
        $maxVal = $max[$pos];
        //评论前十 排序 翻转 截取
        sort($commentTop);
        $top = array_reverse($commentTop);
        $top = array_slice($top,1,10);
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

    /**
     * 分类 && 情绪分析
     */
    public function Emotion(){

        $uqq = session('uqq');
        $uqq = 136787510;
        $ssLogic = D('Shuoshuo', 'Logic');
        $where = array('uin' => $uqq);
        $shuoshuoAll = $ssLogic->getShuoshuoAll($where);
        $shuoshuoAll = array_reverse($shuoshuoAll);

        $classArr = $ssLogic::getTextClassArr();
        $chartData = "";
        foreach($shuoshuoAll as $k=>$v){
            $classCode = explode(",",$v['class_code']);
            $classConf = explode(",",$v['class_conf']);
            foreach($classCode as $key=>$classCodeV){
                $classArr[$classCodeV]['conf'] += $classConf[$key];
            }
            $positive = $v['positive']?$v['positive']:0.5;
            $v['summary'] = strip_tags(preg_replace('/\r|\n/', '', $v['summary']));
            $time = date("Y/m/d",$v['time']);
            $chartData.="{'time': '".$time."','positive':".$positive.",'comment':\"".$v['summary']."\"},";
            //正负面情绪比例  由于k是递增的,固用k记录条数 叠加 positive 正情绪比即为 k/$request[positive]
            $ratio[] = $v['positive'];
        }
        $chartDataPid = "";
        foreach($classArr as $v2){
            if($v2['conf'] == 0){
                continue;
            }
            $chartDataPid.="{'country': '".$v2['className']."','value':".$v2['conf']."},";
        }
        //正能量
        $pe = number_format(array_sum($ratio)/count($ratio)*100,2);
        //负能量
        $ne = 100-$pe;
        $this->assign("chartDataPid",$chartDataPid);
        $this->assign("chartData",$chartData);
        $this->assign("pe",$pe);
        $this->assign("ne",$ne);
        $this->display('emotion');
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

    /**
     * @return float
     */
    public function get_microtime()
    {
        list($usec, $sec) = explode(' ', microtime());
        return ((float)$usec + (float)$sec);
    }

    /**
     * @param $ArrayData
     * @param $KeyName1
     * @param string $SortOrder1
     * @param string $SortType1
     * @return mixed
     */
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