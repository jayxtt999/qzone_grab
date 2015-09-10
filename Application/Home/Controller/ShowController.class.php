<?php
namespace Home\Controller;
class ShowController extends AbstractController {

    private $shuoshuo = array();

    /**
     * 分类配置项
     * @var array
     */
    private $class = array(

        "0X00000000"=>array("className"=>"未知分类","conf"=>0),
        "0X00000001"=>array("className"=>"旅游","conf"=>0),
        "0X00000002"=>array("className"=>"游戏","conf"=>0),
        "0X00000003"=>array("className"=>"人物","conf"=>0),
        "0X00000004"=>array("className"=>"体育","conf"=>0),
        "0X00000005"=>array("className"=>"音乐","conf"=>0),
        "0X00000006"=>array("className"=>"影视","conf"=>0),
        "0X00000007"=>array("className"=>"软件","conf"=>0),
        "0X00000008"=>array("className"=>"文学","conf"=>0),
        "0X00000009"=>array("className"=>"美食","conf"=>0),
        "0X00000010"=>array("className"=>"动漫","conf"=>0),
        "0X00000011"=>array("className"=>"教育","conf"=>0),
        "0X00000012"=>array("className"=>"科技","conf"=>0),
        "0X00000013"=>array("className"=>"军事","conf"=>0),
        "0X00000014"=>array("className"=>"天气","conf"=>0),
        "0X00000015"=>array("className"=>"广告","conf"=>0),
        "0X00000016"=>array("className"=>"群体聚集","conf"=>0),
        "0X00000017"=>array("className"=>"自然灾害","conf"=>0),
        "0X00000018"=>array("className"=>"交通事故","conf"=>0),
        "0X00000019"=>array("className"=>"金融安全","conf"=>0),
        "0X00000021"=>array("className"=>"敏感政治","conf"=>0),
        "0X00000022"=>array("className"=>"贪腐","conf"=>0),
        "0X00000023"=>array("className"=>"非法组织","conf"=>0),
        "0X00000024"=>array("className"=>"反动言论","conf"=>0),
        "0X00000025"=>array("className"=>"先进事迹","conf"=>0),
        "0X00000028"=>array("className"=>"心灵鸡汤","conf"=>0),
        "0X000000A"=>array("className"=>"健康","conf"=>0),
        "0X000000B"=>array("className"=>"医药","conf"=>0),
        "0X000000C"=>array("className"=>"商铺","conf"=>0),
        "0X000000D"=>array("className"=>"财经","conf"=>0),
        "0X000000E"=>array("className"=>"汽车","conf"=>0),
        "0X000000F"=>array("className"=>"房产","conf"=>0),
        "0X000000G"=>array("className"=>"健康","conf"=>0),
        "0X0000001A"=>array("className"=>"刑事犯罪","conf"=>0),
        "0X0000001B"=>array("className"=>"暴力执法","conf"=>0),
        "0X0000001C"=>array("className"=>"求职招聘","conf"=>0),
        "0X0000001D"=>array("className"=>"食品安全","conf"=>0),
        "0X0000001E"=>array("className"=>"环境污染","conf"=>0),
        "0X0000001F"=>array("className"=>"疾病疫情","conf"=>0),
        "0X0000002A"=>array("className"=>"其它政治类","conf"=>0),
        "0X0000003D"=>array("className"=>"文化","conf"=>0),
        "0X0000FFFF"=>array("className"=>"其他","conf"=>0),
        "0X00000029"=>array("className"=>"其他社会类别","conf"=>0),
        "0X0000002F"=>array("className"=>"幽默搞笑","conf"=>0),

        );


    /**
     * 显示列表
     */
    public function Table(){
        ini_set('date.timezone','Asia/Shanghai');
        $uqq = session('uqq');
        $shuoshuoAll = F("shuoshuo_$uqq");
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

    /**
     * 分类 && 情绪分析
     */
    public function Emotion(){
        set_time_limit(0);
        ini_set('memory_limit', '2048M');
        $uqq = session('uqq');
        if($this->shuoshuo[$uqq]){
            $strShuoshuo = $this->shuoshuo[$uqq];
        }else{
            $strShuoshuo = $this->getShuoshuoAll($uqq);
        }
        $chartData = "";
        Vendor('QcloudApi.QcloudApi');
        $service = \QcloudApi::load(\QcloudApi::MODULE_WENZHI, C("QcloudApi"));
        $method = 'POST';
        $service->setConfigRequestMethod($method);
        $ratio = array();
        $classAll = array();
        foreach($strShuoshuo as $k=>$v){

            $content = iconv( "gb2312//IGNORE", "UTF-8" ,$v['comment']);
            if(!$content){
                continue;
            }
            //文本分类
            $class = array();
            $request = $service->TextClassify(array("content"=>$content));
            if ($request === false) {
                $error = $service->getError();
                echo "Class Error code:" . $error->getCode() . ".\n";
                echo "message:" . $error->getMessage() . ".\n";
                echo "ext:" . var_export($error->getExt(), true) . ".\n";
                var_dump($request);exit;
            }else{
                foreach($request['classes'] as $v2){
                    if($v2['class_num']<10){
                        $code = "0X0000000".$v2['class_num'];
                    }else{
                        $code = "0X000000".strtoupper(dechex($v2['class_num']));
                    }
                    if(!isset($this->class[$code])){
                        echo "Error:Not ID ".$code;
                        var_dump($v2);exit;
                    }
                    $this->class[$code]['conf'] += $v2['conf'];
                }
            }
            //情感分析
            $request = $service->TextSentiment(array("content"=>$content));
            if ($request === false) {
                $error = $service->getError();
                echo "Sentiment Error code:" . $error->getCode() . ".\n";
                echo "message:" . $error->getMessage() . ".\n";
                echo "ext:" . var_export($error->getExt(), true) . ".\n";
                var_dump($request);exit;

            }else{
                $chartData.="{'time': '".$v['time']."','positive':".$request['positive'].",'comment':\"".iconv( "gb2312//IGNORE", "UTF-8" ,$v['comment'])."\"},";
            }
            //正负面情绪比例  由于k是递增的,固用k记录条数 叠加 positive 正情绪比即为 k/$request[positive]
            $ratio[] = $request['positive'];
            //positive
            /*echo "{'time': '".$v['time']."','positive':".$request['positive'].",'comment':\"".iconv( "gb2312//IGNORE", "UTF-8" ,$v['comment'])."\"},<br/>";
            ob_flush();
            flush();*/
        }
        $chartDataPid = "";
        foreach($this->class as $v){
            if($v['conf'] == 0){
                continue;
            }
            $chartDataPid.="{'country': '".$v['className']."','value':".$v['conf']."},";
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


    /**
     * 获取说说
     * @param $uqq
     * @return mixed
     */
    public function getShuoshuoAll($uqq){

        if(is_array($this->shuoshuo[$uqq]) && !empty($this->shuoshuo[$uqq])){
            return $this->shuoshuo[$uqq];
        }else{
            $shuoshuoAll = F("shuoshuo_$uqq");
            $shuoshuoAll = @array_reverse($shuoshuoAll);
            foreach( $shuoshuoAll as $k=>$v){
                if(!isset($v['timeline']['timestr'])){
                    //如果没有timeline.timestr
                    if(!isset($v['comment']['comments'][0]['date'])){
                        //如果comment.comments 也没有 取评论数据
                        if(!isset($v['comm']['time'])){
                            //没有办法了
                            continue;
                        }else{
                            $this->shuoshuo[$uqq][$k]['time'] = date("Y/m/d",$v['comm']['time']);
                        }
                    }else{
                        $this->shuoshuo[$uqq][$k]['time'] = date("Y/m/d",$v['comment']['comments'][0]['date']);
                    }
                }else{
                    //如果为今年发布的说说
                    if(!preg_match("/^\d{4}\/\d{2}\/\d{2}$/",$v['timeline']['timestr'],$match)){
                        $this->shuoshuo[$uqq][$k]['time'] = date("Y",time())."/".$v['timeline']['timestr'];
                    }else{
                        $this->shuoshuo[$uqq][$k]['time'] = $v['timeline']['timestr'];
                    }
                }
                $this->shuoshuo[$uqq][$k]['comment'] = iconv( "UTF-8", "gb2312//IGNORE" ,$v['summary']['summary']);
            }
            return $this->shuoshuo[$uqq];
        }

    }

}