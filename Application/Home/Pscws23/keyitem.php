<?php
session_start();
ini_set('date.timezone','Asia/Shanghai');
$qq = @$_SESSION['qq'];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>
<div class="headeline"></div>
<script type="text/javascript">
$(document).ready(function(){
	
	var tags_a = $("#tags").find("a");
	tags_a.each(function(){
		var x = 9;
		var y = 0;
		var rand = parseInt(Math.random() * (x - y + 1) + y);
		$(this).addClass("size"+rand);
	});
	
});
</script>

<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font:12px/180% Arial, Helvetica, sans-serif ,"����";}

.demo{background:#FFF8DE;border:solid 1px #ff6600;width:800px;margin:20px auto;}
.demo h2{font-size:18px;height:32px;padding:10px 0 0 20px;font-family:"΢���ź�","����";border-bottom:solid 1px #ff6600;}
.taglist{padding:20px 20px 30px 20px;}
.taglist a{padding:3px;display:inline-block;white-space:nowrap;overflow: hidden;max-width: 770px;}
a.size1{font-size:25px;padding:10px;color:#804D40;}
a.size1:hover{color:#E13728;}
a.size2{padding:7px;font-size:20px;color:#B9251A;}
a.size2:hover{color:#E13728;}
a.size3{padding:5px;font-size:35px;color:#C4876A;}
a.size3:hover{color:#E13728;}
a.size4{padding:5px;font-size:15px;color:#B46A47;}
a.size4:hover{color:#E13728;}
a.size5{padding:5px;font-size:25px;color:#E13728;}
a.size5:hover{color:#B46A47;}
a.size6{padding:0px;font-size:12px;color:#77625E}
a.size6:hover{color:#E13728;}
</style>
<div class="demo">
	<div class="taglist" id="tags">
<?php

error_reporting( E_ALL & ~E_STRICT );

//�÷�gbk utf-8
header("content-type:text/html; charset=gb2312");
$data = @file_get_contents("../data/".$qq.".log");


$shuoshuoAll = unserialize($data);
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

/**
 * ʵ��ʼ
 */

// ���Լ���ʵ������ʱ��
function get_microtime()
{
	list($usec, $sec) = explode(' ', microtime()); 
	return ((float)$usec + (float)$sec); 
}
$time_start = get_microtime();


$allcity="";

$city = @file_get_contents("./ssx.txt");
$city = explode("\r\n",$city );

// ʵ��ǰ�Ĳ���ָ�����ȡ
$dict = 'dict/dict.xdb';	// Ĭ�ϲ��� xdb (���������κ�����) dict/dict.gdbm  dict/dict.txt dict/dict.sqlite dict/dict.cdb
$mydata  = NULL;	// �������
$version = 3;		// ���ð汾
$autodis = false;	// �Ƿ�ʶ������
$ignore  = true;	// �Ƿ���Ա��
$debug   = false;	// �Ƿ�Ϊ���ģʽ
$stats	 = true;	// �Ƿ�鿴ͳ�ƽ��
$is_cli  = (php_sapi_name() == 'cli');	// �Ƿ�Ϊ cli ���л���
$sample_text = $strShuoshuo;

// ��ݲ�ͬ�汾�Ļ�����ȡ��������
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
	// ���ֲ���ѡ��
	$checked_ignore = $checked_autodis = $checked_v2 = '';
		$mydata = $sample_text;
		if (get_magic_quotes_gpc()){
			$mydata = stripslashes($mydata);
	     }
}

// ������� \r\n\t
if (!is_null($mydata)){ 
	$mydata = trim($mydata);
   }
   
// ʵ��ִʶ���(mydata�ǿ�)
$object = 'pscws' . $version;
require (strtolower($object) . '.class.php');
	
$cws = new $object($dict);
$cws->set_ignore_mark($ignore);

$cws->set_autodis($autodis);

$cws->set_debug($debug);
// hightman.060330: ǿ�п���ͳ��
$cws->set_statistics($stats);

?>


<?php
function sysSortArray($ArrayData,$KeyName1,$SortOrder1 = "SORT_ASC",$SortType1 = "SORT_REGULAR") 
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


// ִ���з�, �ִʽ������ִ�� words_cb()
$cws->segment($mydata);
/*$cws->set_autodis(true);
$yname = $cws->segment($mydata);

//print_R($yname);
//print_R($nname);exit();

$newlist = array_diff($yname,$nname);
foreach($newlist as $k=>$v){
if(strlen($v)<4){
 unset($newlist[$k]);
}
}
*/
$array = array("��","��","��","��","��","��","��","��","��","ô","��","ȥ","��","��","ѽ","��","Ŷ","��","��","��","��","��","��","��","Ϊ","�","��","��","��","��","��","��","��","��","��","û");
$list = array_reverse($cws->get_statistics());
	$word_num = 0;
	$i = 0;
	foreach ($list as $k => $v)
	{
		if(strlen($k)<4){
			continue; 
		}
		if(array_intersect(str_split($k,2),$array)){
			continue;
		}
		?>
    <a href="http://www.baidu.com/s?wd=<?=$k?>" target="_blank"><?=$k?></a>
	
<?php		
		$count[$i]['name'] = $k;  
		$count[$i]['v'] = $v['times'];  	
		$word_num += $v['times'];
		$i++;
	}
	//print_r($count);
?>
	</div>
</div>	
	



	
</body>
</html>


