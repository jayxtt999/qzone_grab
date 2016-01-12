jQuery(document).ready(function () {

    Metronic.init(); // init metronic core componets
    Layout.init(); // init layout
    Demo.init(); // init demo features
    //元素固定
    $('.pinconsole').pin();
    $('.pinshuoshuo ').pin();
    //好友列表
    $(".myfriend").select2()
    $(".myfriend").change(function () {
        //$(".well").hide(1000)
        val = $(this).val();
        $("#friendQq").val(val)
        $("#friendQq").attr("readonly","readonly")
    })
    //选择好友
    $(".findfriend").click(function(){
        var btn = $(this)
        btn.button('loading')
        //校验合法性
        var uqq = $("#friendQq").val();
        if(!uqq){
            layer.msg('请先选择好友',function(){$(".findfriend").button('reset')});
            return false;
        }
        $("#iframe").attr("src","/home/console/getshuoshuoall?uqq="+uqq+"&r="+new Date().getTime())
    })

});

//初始参数
var lodingSsOver = false;
function lodingSs(){
    lodingSsOver = true;
}
//获取说说
function getShuoshuo(uin){
    if(!lodingSsOver){
        return false
    }
    $(".scroller").html("")
    //加载拉取状态
    Metronic.blockUI({
        target: '.scroller',
        boxed: true
    });
    $.ajax({
        "url":"/home/home/showShuoshuoList",
        "dataType":"json",
        "type":"post",
        "data":{uin:uin},
        "success":function(d){
            var html = "";
            $.each(d,function(n,v) {
                //拼接说说评论与回复
                var uin = v.uin;
                var cellid = v.cellid;
                var user = v.user.realname?v.user.realname:v.user.nickname;
                var likeStyle = v.islike?"fa fa-thumbs-up":"fa fa-thumbs-o-up";
                html+="<div class='media'> <a href='#' class='pull-left'><img alt='' src='http://q.qlogo.cn/headimg_dl?bs=qq&dst_uin="+ v.user.uin+"&src_uin=www.xietaotao.cn&fid=blog&spec=100' style='width: 50px;height: 50px' class='media-object img-circle'></a><div class='media-body'><h6 class='media-heading'>"+user+"<span>&nbsp&nbsp"+ v.timeline+"</span></h6><h4>"+ v.summary+"</h4><div class='clearfix'><span class='btn'><i class='fa  fa-comments-o'></i>评论("+ v.cntnum+")</span><span class='btn likes' onclick='like(this)' data-uin='"+v.uin+"' data-cellid='"+cellid+"'><i class='"+likeStyle+"'></i>(<em>"+ v.likenum+"</em>)</span></div>";

                if(v.likenum>0){
                    html+="<div class='clearfix '><span class='media'><a href='javascript:;' class='pull-left'><i class='fa fa-thumbs-up' style='font-size: 20px;line-height: 25px'></i></a>"
                    $.each(v.likemansArr,function(n2,v2) {
                        html+="<a href='http://user.qzone.qq.com/"+v2+"' class='pull-left' target='_blank'><img alt='' src='http://q.qlogo.cn/headimg_dl?bs=qq&dst_uin="+ v2+"&src_uin=www.xietaotao.cn&fid=blog&spec=100' class='media-object' style='width:30px;height:30px'></a>"
                    })
                    if(v.likemansAndNum){
                        html+="<span class='pull-left' style='line-height: 30px;'>等"+v.likemansAndNum+"人觉得很赞</span>"
                    }
                }
                html+="</span></div><hr/>";
                if(v.comment){
                    $.each(v.comment,function(n3,v3){
                        var user = v3.user.realname?v3.user.realname:v3.user.nickname
                        html+="<div class='media'><a href='#' class='pull-left'><img alt=''src='http://q.qlogo.cn/headimg_dl?bs=qq&dst_uin="+ v3.user.qq+"&src_uin=www.xietaotao.cn&fid=blog&spec=100' style='width: 50px;height: 50px' class='media-object img-circle'></a><div class='media-body'><h6 class='media-heading'>"+user+"<span>&nbsp&nbsp"+v3.date+" / <a href='javascript:;' onclick='comment(this)'>评论 </a> </span></h6><h4>"+v3.content+"</h4></div></div>";
                        if(v3.replys){
                            $.each(v3.replys,function(n4,v4){
                                var user = v4.user.realname?v4.user.realname:v4.user.nickname
                                html+="<div class='media'><a href='#' class='pull-left'><img alt='' src='http://q.qlogo.cn/headimg_dl?bs=qq&dst_uin="+ v4.user.qq+"&src_uin=www.xietaotao.cn&fid=blog&spec=100' style='width: 50px;height: 50px' class='media-object img-circle'></a><div class='media-body'><h6 class='media-heading'>"+user+"<span>&nbsp&nbsp"+v4.date+" / <a href='javascript:;' onclick='comment(this)'>评论 </a> </span></h6><h4>回复:"+v4.content+"</h4></div></div>";

                            })
                        }

                    })
                }
                html +="<div class='chat-form'><div class='input-cont'><input class='form-control' type='text' placeholder='我也说一句'/></div><div class='btn-cont'><span class='arrow'></span><a href='' class='btn blue icn-only'><i class='fa fa-check icon-white'></i></a></div></div></div></div>";
            });
            $(".findfriend").button('reset')
            $(".scroller").html(html)
            Metronic.unblockUI('.scroller');

        }
    })

}

function closeComment(z){

    layer.confirm('你要关闭评论吗？', {
        btn: ['是','否'] //按钮
    }, function(index){
        f =  $(z).parent().parent().parent();
        f.find(".reComment").remove();
        $(z).attr("ison",false)
        layer.close(index)
    }, function(index){
        layer.close(index)
    });
}

//回复其它好友评论
function comment(z){
    if($(z).data("ison")==true && $(z).data("ison")!="undefined"){
        console.log($(z).data("ison"))
        closeComment(z)
        $(z).data("ison",false)
        return false
    }
    //加载回复评论区域  隐藏主评论区域
    tpl = "<div class='input-group input-medium reComment'><input type='text' class='form-control' placeholder='输入...'><span class='input-group-btn'><button class='btn  blue' type='button'>回复</button></span></div>";
    f =  $(z).parent().parent().parent()
    f.find(".reComment").remove()
    f.append(tpl);
    $(z).data("ison",true)

}

function like(z){
    if($(z).find("i").hasClass("fa-thumbs-o-up")){
        c = true
    }else{
        c = false
    }
    uin = $(z).attr("data-uin")
    cellid = $(z).attr("data-cellid")
    if(!uin || !cellid){
        layer.msg('参数错误',function(){});
    }
    $.ajax({
        "url":"/home/home/like",
        "dataType":"json",
        "type":"post",
        "data":{uin:uin,cellid:cellid,c:c},
        "success":function(d){
            if(d.status){
                if(c){
                    $(z).find("i").removeClass("fa-thumbs-o-up").addClass("fa-thumbs-up")
                    num = parseInt($(z).find("em").text())
                    $(z).find("em").text(num+1)
                }else{
                    $(z).find("i").removeClass("fa-thumbs-up").addClass("fa-thumbs-o-up")
                    num = parseInt($(z).find("em").text())
                    $(z).find("em").text(num-1)
                }
            }else{
                layer.msg(d.msg,function(){});
            }
        }
    })
}












