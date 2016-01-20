jQuery(document).ready(function () {

    Metronic.init(); // init metronic core componets
    Layout.init(); // init layout
    Demo.init(); // init demo features
    //图片插件
    $('.mix-grid').mixitup();
    //元素固定
    $('.pinconsole').pin();
    $('.pinshuoshuo ').pin();
    //好友列表
    $(".myfriend").select2()
    $(".myfriend").change(function () {
        //$(".well").hide(1000)
        val = $(this).val();
        $("#friendQq").val(val)
        $("#friendQq").attr("readonly", "readonly")
    })
    //选择好友
    $(".findfriend").click(function () {
        var btn = $(this)
        btn.button('loading')
        //校验合法性
        var uqq = $("#friendQq").val();
        if (!uqq) {
            layer.msg('请先选择好友', function () {
                $(".findfriend").button('reset')
            });
            return false;
        }
        $(".scroller").html("")
        //加载拉取状态
        Metronic.blockUI({
            target: '.scroller',
            boxed: true
        });
        $("#iframe").attr("src", "/home/console/getshuoshuoall?uqq=" + uqq + "&r=" + new Date().getTime())
    })

    $(".scroller").on("click", ".commentShow", function () {
        cellid = $(this).attr("data-cellid")
        $(".ic" + cellid).focus();
    })

    $(".scroller").on("click", ".repComment", function () {

        z = $(this)
        cellid = $(this).attr("data-cellid")
        uin = $(this).attr("data-uin")
        hostuin = $(this).attr("data-host-uin")
        commentid = $(this).attr("data-commentid")
        commentuin = $(this).attr("data-commentuin")
        content = z.parent().prev().val();
        if (!uin || !cellid) {
            layer.msg('参数错误', function () {
            });
        }
        if (!$.trim(content)) {
            layer.msg('评论不能为空', function () {
            });
        }
        $.ajax({
            "url": "/home/home/commentSs",
            "dataType": "json",
            "type": "post",
            "data": {
                uin: uin,
                hostuin: hostuin,
                commentid: commentid,
                cellid: cellid,
                content: content,
                commentuin: commentuin
            },
            "success": function (d) {
                if (d.status) {
                    v = d.data
                    //渲染dom
                    layer.alert('评论成功', {icon: 1})
                    tpl = "<div class='media shuoshuoRow'><a href='#' class='pull-left'><img alt=''src='http://q.qlogo.cn/headimg_dl?bs=qq&dst_uin=" + v.qq + "&src_uin=www.xietaotao.cn&fid=blog&spec=100'  class='media-object img-circle'></a><div class='media-body'><h6 class='media-heading'>" + v.user + "<span>&nbsp&nbsp" + v.date + " / <a class='commentOther' data-commentuin=" + v.commentuin + "  data-commentid=" + v.commentid + " data-host-uin=" + v.hostUin + " data-cellid=" + v.cid + " data-uin=" + v.uin + " href='javascript:;'>评论 </a> </span></h6><h4>" + v.content + "</h4></div></div>";
                    z.parent().parent().before(tpl)
                } else {
                    layer.msg(d.msg, function () {
                    });
                }
            }
        })

    })


    $(".scroller").on("click", ".likes", function () {
        z = this
        if ($(z).find("i").hasClass("fa-thumbs-o-up")) {
            c = true
        } else {
            c = false
        }
        uin = $(z).attr("data-uin")
        cellid = $(z).attr("data-cellid")
        if (!uin || !cellid) {
            layer.msg('参数错误', function () {
            });
        }
        $.ajax({
            "url": "/home/home/like",
            "dataType": "json",
            "type": "post",
            "data": {uin: uin, cellid: cellid, c: c},
            "success": function (d) {
                if (d.status) {
                    if (c) {
                        //拇指样式
                        $(z).find("i").removeClass("fa-thumbs-o-up").addClass("fa-thumbs-up")
                        num = parseInt($(z).find("em").text())
                        $(z).find("em").text(num + 1)
                        //添加点赞者头像
                        avatarShow(z, d.qq)
                    } else {
                        //拇指样式
                        $(z).find("i").removeClass("fa-thumbs-up").addClass("fa-thumbs-o-up")
                        num = parseInt($(z).find("em").text())
                        $(z).find("em").text(num - 1)
                        //移除点赞者头像
                        avatarHide(z, d.qq)
                    }
                } else {
                    layer.msg(d.msg, function () {
                    });
                }
            }
        })
    })

    $(".scroller").on("click", ".repSs", function () {
        z = $(this)
        cellid = $(this).attr("data-cellid")
        uin = $(this).attr("data-uin")
        content = $(".ic" + cellid).val();
        if (!uin || !cellid) {
            layer.msg('参数错误', function () {
            });
        }
        if (!$.trim(content)) {
            layer.msg('评论不能为空', function () {
            });
        }
        $.ajax({
            "url": "/home/home/commentSs",
            "dataType": "json",
            "type": "post",
            "data": {uin: uin, hostuin: uin, cellid: cellid, content: content},
            "success": function (d) {
                if (d.status) {
                    v = d.data
                    //渲染dom
                    layer.alert('评论成功', {icon: 1})
                    tpl = "<div class='media shuoshuoRow'><a href='#' class='pull-left'><img alt=''src='http://q.qlogo.cn/headimg_dl?bs=qq&dst_uin=" + v.qq + "&src_uin=www.xietaotao.cn&fid=blog&spec=100'  class='media-object img-circle'></a><div class='media-body'><h6 class='media-heading'>" + v.user + "<span>&nbsp&nbsp" + v.date + " / <a class='commentOther' data-host-uin=" + v.hostUin + " data-commentuin=" + v.qq + " data-commentid=" + v.commentid + " data-cellid=" + v.cid + " data-uin=" + v.uin + " href='javascript:;'>评论 </a> </span></h6><h4>" + v.content + "</h4></div></div>";
                    z.parent().parent().before(tpl)
                } else {
                    layer.msg(d.msg, function () {
                    });
                }
            }
        })
    })

    $(".scroller").on("click", ".commentOther", function () {
        z = $(this)
        if (z.data("ison") == true && $(z).data("ison") != "undefined") {
            closeComment(z)
            z.data("ison", false)
            return false
        }
        commentid = z.attr("data-commentid")
        commentuin = z.attr("data-commentuin")
        hostuin = z.attr("data-host-uin")
        cellid = z.attr("data-cellid")
        uin = z.attr("data-uin")
        //隐藏其它区域的待评论输入框
        $(".reCommentChildren").remove()
        $(".reCommentChildren").data("ison", false)
        //加载回复评论区域  隐藏主评论区域
        tpl = $("<div class='input-group input-medium reComment reCommentChildren'><input type='text'  class='form-control' placeholder='输入...'><span class='input-group-btn'><button class='btn  blue repComment' data-commentid=" + commentid + " data-commentuin=" + commentuin + " data-host-uin=" + hostuin + " data-cellid=" + cellid + " data-uin=" + uin + "  type='button'>回复</button></span></div>");
        f = z.parent().parent().parent()
        f.find(".reComment").remove()
        f.append(tpl)
        tpl.find("input").focus();
        z.data("ison", true)
    })

    $(".loadMore").on("click", function () {
        var btn = $(this)
        btn.button('loading')
        uin = btn.attr("data-uin")
        page = btn.attr("data-page")
        type = 2;
        getShuoshuoMore(uin, page,type)
    })
});

//初始参数

var lodingSsOver = false;

function lodingSs() {
    lodingSsOver = true;
}
//获取说说
function getShuoshuo(uin) {
    if (!lodingSsOver) {
        return false
    }
    if (!uin) {
        layer.msg('请先选择好友', function () {
        })
    }
    page = 1;
    type = 1;
    dataToTpl(uin, page,type)
}

//获取更多说说
function getShuoshuoMore(uin, page,type) {

    if (!uin || !page) {
        layer.msg('参数错误', function () {
        })
        return false
    }
    dataToTpl(uin, page,type)
}


function dataToTpl(uin, page,type) {

    $.ajax({
        "url": "/home/home/showShuoshuoList",
        "dataType": "json",
        "type": "post",
        "data": {uin: uin, page: page},
        "success": function (res) {
            var html = "";
            var d = res.result
            var uinSup = res.uin
            var isMore = res.isMore
            var nextPage = res.nextPage
            if (d && (d.length > 0)) {
                $.each(d, function (n, v) {
                        //拼接说说评论与回复
                        var uin = v.uin;
                        var cellid = v.cellid;
                        var user = v.user.realname ? v.user.realname : v.user.nickname;
                        var likeStyle = v.islike ? "fa fa-thumbs-up" : "fa fa-thumbs-o-up";
                        html += "<div class='media shuoshuoRow'> <a href='http://user.qzone.qq.com/" + uin + "' class='pull-left'><img alt='' src='http://q.qlogo.cn/headimg_dl?bs=qq&dst_uin=" + uin + "&src_uin=www.xietaotao.cn&fid=blog&spec=100'  class='media-object img-circle'></a><div class='media-body'><h6 class='media-heading'>" + user + "<span>&nbsp&nbsp" + v.timeline + "</span></h6><h4>" + v.summary + "</h4>";


                        if (v.img && (v.img).length > 0) {
                            html += "<div class='clearfix'><div class='row mix-grid'>";
                            $.each(v.img, function (imgk, imgv) {
                                /*/home/home/showpic?picurl="+imgv.url+"*/
                                html += " <div class='col-md-3 col-sm-4 mix category_1' style='display: block; opacity: 1;'><div class='mix-inner'><img class='img-responsive' src='/home/home/showpic?picurl=" + imgv.url + "' alt=''><div class='mix-details'><a class='mix-link'><i class='fa fa-link'></i></a><a class='mix-preview ' data-lightbox='" + cellid + "' href='/home/home/showpic?picurl=" + imgv.url + "'><i class='fa fa-search'></i></a></div></div></div>";
                            })
                            html += "</div></div>";
                        }
                        html += "<div class='clearfix'><span class='btn commentShow'  data-uin='" + v.uin + "' data-cellid='" + cellid + "'><i class='fa  fa-comments-o'></i>评论(<em>" + v.cmtnum + "</em>)</span><span class='btn likes'  data-uin='" + v.uin + "' data-cellid='" + cellid + "'><i class='" + likeStyle + "'></i>(<em>" + v.likenum + "</em>)</span></div>";

                        if (v.video && (v.video).length > 0){

                            html += "<div class='clearfix'><div class='row mix-grid'>";
                            $.each(v.video, function (videok, videov) {
                                html += " <video controls='controls'  loop='loop' name='media'><source src='"+videov+"' type='video/mp4'></video>";
                            })
                            html += "</div></div>";

                        }

                        html += "<div class='clearfix'>";
                        if (v.story_info){
                            var story_info = v.story_info
                            var lbs_idname = story_info.idname
                            //var lbs_name = story_info.name
                            //var lbs_pos_x = story_info.pos_x
                            //var lbs_pos_y = story_info.pos_y
                            html+="拍摄于&nbsp"+lbs_idname+"&nbsp&nbsp";
                        }
                        if (v.source_name){
                            html+="来自&nbsp"+source_name;
                        }
                        html += "</div>"
                        if (v.likenum > 0) {

                            html += "<div class='clearfix'><span class='media'><a href='javascript:;' class='pull-left'><i class='fa fa-thumbs-up' style='font-size: 20px;line-height: 25px'></i></a>"
                            if (v.likemansArr && (v.likemansArr).length > 0) {
                                $.each(v.likemansArr, function (n2, v2) {
                                    html += "<a href='http://user.qzone.qq.com/" + v2 + "' class='pull-left' target='_blank'><img alt='' src='http://q.qlogo.cn/headimg_dl?bs=qq&dst_uin=" + v2 + "&src_uin=www.xietaotao.cn&fid=blog&spec=100' class='media-object likeAva'></a>"
                                })
                            }
                            if (v.likemansAndNum) {
                                html += "<span class='pull-left' style='line-height: 30px;'>等" + v.likemansAndNum + "人觉得很赞</span>"
                            }
                            html += "</span></div><hr/>";
                        }

                        if (v.comment) {
                            if (v.comment && (v.comment.length) > 0) {
                                $.each(v.comment, function (n3, v3) {
                                    var user = v3.user.realname ? v3.user.realname : v3.user.nickname
                                    html += "<div class='media shuoshuoRow'><a href='http://user.qzone.qq.com/" + v3.user.qq + "' class='pull-left'><img alt=''src='http://q.qlogo.cn/headimg_dl?bs=qq&dst_uin=" + v3.user.qq + "&src_uin=www.xietaotao.cn&fid=blog&spec=100' class='media-object img-circle'></a><div class='media-body'><h6 class='media-heading'>" + user + "<span>&nbsp&nbsp" + v3.date + " / <a class='commentOther' data-commentuin=" + v3.fuin + " data-commentid=" + v3.commentid + " data-host-uin=" + uin + " data-cellid=" + v3.cellid + " data-uin=" + v3.user.qq + " href='javascript:;'>评论 </a> </span></h6><h4>" + v3.content + "</h4></div></div>";
                                    if (v3.replys && (v3.replys).length > 0) {
                                        $.each(v3.replys, function (n4, v4) {
                                            var user = v4.user.realname ? v4.user.realname : v4.user.nickname
                                            html += "<div class='media shuoshuoRow'><a href='http://user.qzone.qq.com/" + v4.user.qq + "' class='pull-left'><img alt='' src='http://q.qlogo.cn/headimg_dl?bs=qq&dst_uin=" + v4.user.qq + "&src_uin=www.xietaotao.cn&fid=blog&spec=100'  class='media-object img-circle'></a><div class='media-body'><h6 class='media-heading'>" + user + "<span>&nbsp&nbsp" + v4.date + " / <a class='commentOther' data-commentuin=" + v4.fuin + " data-commentid=" + v4.commentid + " data-host-uin=" + uin + " data-cellid=" + v4.cellid + " data-uin=" + v4.user.qq + " href='javascript:;'>评论 </a> </span></h6><h4>回复:" + v4.content + "</h4></div></div>";
                                        })
                                    }

                                })
                            }

                        }
                        html += "<div class='chat-form'><div class='input-cont'><input class='form-control ic" + cellid + "'  type='text' placeholder='我也说一句'/></div><div class='btn-cont'><span class='arrow'></span><a href='javascript:;' class='btn blue icn-only repSs' data-cellid='" + cellid + "' data-uin='" + uin + "'><i class='fa fa-check icon-white'></i></a></div></div></div></div>";

                    });
                $(".loadMore").attr("style","display:block");

                if (isMore==true){
                    $(".loadMore").text("LoadMore");
                    $(".loadMore").removeClass("disabled");
                    $(".loadMore").attr("data-uin", uinSup)
                    $(".loadMore").attr("data-page",nextPage)
                }else{
                    $(".loadMore").text("没有更多了");
                    $(".loadMore").addClass("disabled");
                    $(".loadMore").attr("data-uin", uinSup)
                    $(".loadMore").attr("data-page", 1)
                }

                if(type==1){
                    //init
                    $(".scroller").html(html)
                    $(".findfriend").button('reset')
                }else{
                    //addMore
                    $(".scroller").append(html)
                    $(".loadMore").button('reset')
                }
                Metronic.unblockUI('.scroller');
            }

        }
    })

}

//关闭评论
function closeComment(z) {

    layer.confirm('你要关闭评论吗？', {
        btn: ['是', '否'] //按钮
    }, function (index) {
        f = z.parent().parent().parent();
        f.find(".reComment").remove();
        z.attr("ison", false)
        layer.close(index)
    }, function (index) {
        layer.close(index)
    });
}

//添加点赞者头像
function avatarShow(z, qq) {
    insertHtml = "<a href='http://user.qzone.qq.com/" + qq + "' class='pull-left' target='_blank'><img alt='' src='http://q.qlogo.cn/headimg_dl?bs=qq&amp;dst_uin=" + qq + "&amp;src_uin=www.xietaotao.cn&amp;fid=blog&amp;spec=100' class='media-object likeAva'></a>";
    $(z).parent().next().find(".media a").eq(0).after(insertHtml);

}

//移除点赞者头像
function avatarHide(z, qq) {
    $(z).parent().next().find(".media a").eq(1).remove();
}

//批量点赞
function batchLikeGo(z,c){
    //c true 点赞 false 取消点赞
    $(z).button('loading')
    var v = $(".batchLikeV")
    var uqq = $("#friendQq").val()
    if(!uqq){
        layer.msg('请选定一个好友', function () {
            $(z).button('reset')
        })
    }
    if(!v){
        layer.msg('请选择一个时间节点', function (){
            $(z).button('reset')
        })
    }
    if(c){
        $("#iframe").attr("src", "/home/console/batchlike?uqq=" + uqq + "&time="+v+"&c=1&r=" + new Date().getTime())
    }else{
        $("#iframe").attr("src", "/home/console/batchlike?uqq=" + uqq + "&time="+v+"&c=0&r=" + new Date().getTime())
    }

}

//批量点赞完毕
function batchLikeGoOver(){
    layer.msg('操作完毕')
    $(".batchLikeGo").button('reset')
}


//批量评论
function batchCommentGo(z){
    $(z).button('loading')
    var uqq = $("#friendQq").val()
    if(!uqq){
        layer.msg('请选定一个好友', function () {
            $(z).button('reset')
        })
    }
    var v = $(".batchCommentV")
    if(!v){
        layer.msg('请选择一个时间节点', function (){
            $(z).button('reset')
        })
    }
    var batchCommentType = $("input[name='batchCommentType']:checked").val();
    var content = ""
    if(batchCommentType=="diy"){
        content = $(".batchCommentDiy").val();
        if($.trim(content)==""){
            layer.msg('自定义内容不能为空', function () {
                $(z).button('reset');return false;
            })
        }
    }
    var isPrivate = $(".batchCommentIsPrivate").is(':checked')
    var private = isPrivate?1:0;
    $("#iframe").attr("src", "/home/console/batchcomment?uqq=" + uqq + "&time="+v+"&content="+content+"private="+private+"&r=" + new Date().getTime())
}

//批量评论完毕
function batchCommentGoOver(){
    layer.msg('操作完毕')
    $(".batchCommentGo").button('reset')
}





