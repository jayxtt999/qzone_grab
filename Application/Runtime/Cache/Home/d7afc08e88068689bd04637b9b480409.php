<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="主界面" />
<meta name="description" content="主界面" />
<meta name="generator" content="naix" />
<title>Hello Mr. Memory </title>
<head>
    <meta charset="utf-8">
    <link href="/Public/css/bootstrap.css" rel="stylesheet">
    <link href="/Public/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="/Public/css/docs.css" rel="stylesheet">
    <script src="/Public/js/jquery.min.js"></script>
    <script src="/Public/js/bootstrap.min.js"></script>
    <script src="/Public/js/bootstrap-tooltip.js"></script>
    <script src="/Public/js/layer.min.js"></script>
    <script src="/Public/js/bootstrap-popover.js"></script>
    <style>
        .control-label{text-align: left;}
        #disabledInput{height: 18px;margin-left: 145px;width: 200px}
        .showInfo{float: left;margin-left: 10px;height: 400px;border-left:1px solid gray;padding-left: 10px;width: 740px;}
        .timeInfo{display:none}
        .msgInfo{display:none}
        .alert{width:650px;float:right}
        .well{margin-top: 26px;display:none}
        #danxiang{margin-top: 20px}
    </style>
</head>
<body data-spy="scroll" data-target=".subnav" data-offset="50" style="">
<div class="container">
    <header class="jumbotron subhead" id="overview">
        <h1> <?php echo ($qq); ?>登陆成功</h1>
        <p class="lead">
            选择一个好友。
        </p>
    </header>
    <form class="form-horizontal">
        <input type="hidden" name="sid" id="sid" value="<?=$sid?>">
        <input type="hidden" name="uqq" id="uqq" value="<?=$qq?>">
        <div class="control-group">
            <div class="controls">
                <div class="input-append" style="float: left;">
                    <?php for($i=0;$i<count($groud);$i++){?>
                    <div class="control-group success">
                        <label class="control-label" for="selectError"><?php echo "--分组".($i+1)."--".$groud[$i]->gpname ?></label>
                        <div class="controls">
                            <select class="selectError">
                                <option value="0">==请选择一位好友==</option>
                                <?php foreach($data->list as $list){ if($list->groupid==$groud[$i]->gpid){ ?>
                                <option value="<?php echo $list->uin?>"><?php echo $list->remark."---".$list->uin?></option>
                                <?php } } ?>
                            </select>
                            <span class="help-inline">耶！</span>
                        </div>
                    </div>
                    <?php } ?>
                    <input name="qq" class="input-xlarge disabled" id="disabledInput"  type="text" placeholder="" readonly="readonly">
                    <input class="btn" id="go" value="执行" type="button">
                    <div class="well">
                        <a  class="btn btn-danger" id="timeInterval"  data-toggle="modal" data-target="#myModal" rel="popover" data-content="该功能可以查看好友发表说说的时间分布,评论,赞统计记录" data-original-title="功能说明">评论&赞</a>
                        <a  class="btn btn-danger" id="keyitem"  data-toggle="modal" data-target="#myModal" rel="popover" data-content="该功能可以查看好友发表说说的相关关键字" data-original-title="功能说明">关键字解析</a>



                    </div>


                    <div class="breadcrumb" style="margin-top: 20px">

                        <span class="badge badge-success">通用功能</span>

                        <div class="btn-group" data-toggle="buttons-radio" style="margin-top: 10px">
                            <div class="btn-group" style="float: left;">
                            <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">　赞　<span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a id="zan_on" href="javascript:;">开启自动赞</a></li>
                                    <li><a id="zan_off" href="javascript:;">取消自动赞</a></li>
                                </ul>
                            </div>

                            <select id="auto_zan_time">
                                <option value="0">请选择自动点赞持续时间</option>
                                <option value="60">测试(仅一次)</option>
                                <option value="3600">1小时</option>
                                <option value="86400">1天</option>
                                <option value="604800">1周</option>
                                <option value="2592000">1个月</option>
                            </select>


                        </div>

                        <div class="btn-group" data-toggle="buttons-radio" style="margin-top: 10px">
                            <div class="btn-group" style="float: left;">
                                <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">评　论<span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a id="comm_on" href="javascript:;">开启自动评论</a></li>
                                    <li><a id="comm_off" href="javascript:;">取消自动评论</a></li>
                                </ul>
                            </div>
                            <select id="auto_comm_time">
                                <option value="0">请选择自动点评论持续时间</option>
                                <option value="60">测试(仅一次)</option>
                                <option value="3600">1小时</option>
                                <option value="86400">1天</option>
                                <option value="604800">1周</option>
                                <option value="2592000">1个月</option>
                            </select>

                        </div>
                        <a  class="btn btn-primary" id="danxiang"  data-toggle="modal" data-target="#myModal" rel="popover"
                            data-content="该功能可以查看把你删除的好友" data-original-title="功能说明">单向好友查询
                        </a>




                    </div>




                </div>
                <div class="showInfo">
                    <!--信息区-->
                    <div class="alert fade in">
                        <a class="close" data-dismiss="alert" href="#">×</a>
                        <strong>-友情提示-</strong> 第一次获取数据的时候会很慢，大约30s左右，请耐心等待。
                    </div>
                    <div class="alert alert-info timeInfo">
                        获取数据中,已耗时  <strong class="time">0</strong>  s
                    </div>
                    <div class="alert alert-info msgInfo">
                    </div>
                </div>
                <div style="clear:both"></div>
            </div>
        </div>

    </form>
</div>
<script>

    autoisclick = 0;
    $(function(){
        $('#timeInterval').popover()
        $('#keyitem').popover()
        $('#danxiang').popover()
        $("#timeInterval").click(function(){
            $.layer({
                type : 2,
                title: '统计线形图',
                shadeClose: true,
                maxmin: true,
                fix : false,
                area: ['1024px', 500],
                iframe: {
                    src : '/index.php/Home/show/table'
                }
            });
        })
        $("#keyitem").click(function(){
            $.layer({
                type : 2,
                title: '内容分词',
                shadeClose: true,
                maxmin: true,
                fix : false,
                area: ['1024px', 500],
                iframe: {
                    src : '/index.php/Home/show/keyitem'
                }
            });
        })

        $("#danxiang").click(function(){

        })


    })
    var c,t
    //计时器
    function timedCount()
    {
        c=$(".time").text();
        c++
        $(".time").text(c)
        if(c==60){
        //超时处理
            stopCount()
            $(".msgInfo").show(1000)
            $(".msgInfo").html("返回超时，你可以重试")
        }
        t=setTimeout("timedCount()",1000)
    }
    function stopCount()
    {
        clearTimeout(t)
    }
    $(".selectError").change(function(){
        $(".well").hide(1000)
        val=$(this).val();
        $(".selectError").find("option[value='0']").attr("selected",true);
        $(this).find("option[value="+val+"]").attr("selected",true);
        $("#disabledInput").val(val)
    })
    $("#go").click(function(){
        $(".time").text(0)
        stopCount()
        timedCount()
        $.ajax({
            type:'POST',
            url:'/index.php/home/home/show',
            dataType:'json',
            data: {sid:$("#sid").val(), uqq:$("#uqq").val(),qq:$("#disabledInput").val(),program:"one"},
            beforeSend:function(){
                $(".msgInfo").hide(1000)
                $(".timeInfo").show(1000)
            },
            success:function(data){
                $(".timeInfo").hide(1000)
                $(".msgInfo").show(1000)
                if(data.status==1){
                    $(".msgInfo").html(data.msg)
                    $(".well").show(1000)
                }else{
                    $(".msgInfo").html(data.msg)
                }
            }
        })
    })



    $("#zan_on").click(function(){
        if($("#auto_zan_time").val()==0){
            alert("必须选择一个持续时间!!")
            return false;
        }
        $.ajax({
            type:'POST',
            url:'/index.php/home/home/autozan',
            dataType:'json',
            data: {time:$("#auto_zan_time").val()}
        })
    })


    $("#zan_off").click(function(){
        $.ajax({
            type:'POST',
            url:'/index.php/home/home/autozanoff',
            dataType:'text',
            success:function(m){
                alert(m)
            }
        })
    })



    $("#comm_on").click(function(){
        if($("#auto_comm_time").val()==0){
            alert("必须选择一个持续时间!!")
            return false;
        }
        $.ajax({
            type:'POST',
            url:'/index.php/home/home/autoComm',
            dataType:'json',
            data: {time:$("#auto_comm_time").val()}
        })
    })

    $("#comm_off").click(function(){
        $.ajax({
            type:'POST',
            url:'/index.php/home/home/autoCommoff',
            dataType:'text',
            success:function(m){
                alert(m)
            }
        })
    })



</script>
<div class="shuoshuo"></div>
</body>
</html>