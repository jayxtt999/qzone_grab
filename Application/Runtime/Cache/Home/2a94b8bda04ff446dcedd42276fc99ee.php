<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="QQ登陆" />
<meta name="description" content="QQ登陆" />
<meta name="generator" content="naix" />
<title>Hello Mr. N'aix</title><head>
    <meta charset="utf-8">
    <link href="/Public/css/bootstrap.css" rel="stylesheet">
    <link href="/Public/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="/Public/css/docs.css" rel="stylesheet">
	<style>
	#qq_loginform{width: 50%;display: block;float: left;}
	#version{display:block;float: left;}
	</style>
</head>
<body data-spy="scroll" data-target=".subnav" data-offset="50" style="">

<div class="container">
    <header class="jumbotron subhead" id="overview">
        <h1>敬请期待， </h1>
        <p class="lead">
             Analysis Of Your Friends
        </p>
    </header>

    <form xmlns="http://www.w3.org/1999/xhtml" id="qq_loginform" action="/index.php/home/home/index" method="post">
        <div class="control-group">
            <div class="controls">
                <div class="input-append">
                    <p class="tabs-1">QQ号码:</p>
                    <p class="tabs-1">
                        <input name="qq" type="text" maxlength="40" value="" />
                    </p>
                    <p class="tabs-1 margin-t-5">QQ密码:</p>
                    <p class="tabs-1">
                        <input name="pwd" type="password" value="" />
                    </p>
                    <p class="tabs-1 margin-t-5">
                        <input name="loginsubmit" type="submit" class="btn-s" value="登录" />
                    </p>
                    <p></p>
                    <input type="hidden" name="login_url" value="http://pt.3g.qq.com/s?aid=nLogin" />
                    <input type="hidden" name="sidtype" value="1" />
                    <input type="hidden" name="bid" value="0" />
                    <input type="hidden" name="nopre" value="0" />
					<input type="hidden" name="loginType" value="3" />
                </div>
            </div>
        </div>

    </form>

	<div class="version">

<div class="span4">
<pre class="prettyprint linenums">历史记录;
<ol class="linenums"><li class="L0"><span class="pln">QQ模拟登陆以及获取好友信息模块</span></li><li class="L1"><span class="pln"></span><span class="pln">获取指定好友说说以及赞</span></li><li class="L2"><span class="pln"></span><span class="pln">统计以及页面外观微调</span></li><li class="L3"><span class="pln">采用ThinkPHP3.2</span></li><li class="L3"><span class="pln">分词统计模块</span></li><li class="L4"><span class="pln">自动赞模块</span></li><li class="L5"><span class="pln">自动评论模块</span></li><li class="L6"><span class="pln">兼容服务器的php5.2</span></li></li><li class="L7"><span class="pln">验证码问题：当你登陆时候提示服务器错误或者未连接等请先点击<a href="http://pt.3g.qq.com/s?aid=nLoginqz" target="_blank">这里</a>登陆一次后尝试（Ps：正在处理）</span></li>



</ol>
</pre>




	</div>

</div>


<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"slide":{"type":"slide","bdImg":"0","bdPos":"left","bdTop":"100"}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
</body>
</html>