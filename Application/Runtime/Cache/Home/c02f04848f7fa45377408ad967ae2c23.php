<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta name="keywords" content="统计关键字" />
<meta name="description" content="统计关键字" />
<meta name="generator" content="naix" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<title>Hello Mr. Memory </title>
<head>
    <link href="/shuoshuo/Public/css/style.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="/shuoshuo/Public/js/jquery.min.js"></script>
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
    body{font:12px/180% Arial, Helvetica, sans-serif ,"宋体";}

    .demo{background:#FFF8DE;border:solid 1px #ff6600;width:800px;margin:20px auto;}
    .demo h2{font-size:18px;height:32px;padding:10px 0 0 20px;font-family:"微软雅黑","宋体";border-bottom:solid 1px #ff6600;}
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

        <?php echo ($res); ?>

    </div>
</div>





</body>
</html>