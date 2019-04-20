$(function () {
    $("#addComment").bind("click",checkComment);
    $("#discount").bind("click",discount);
    $("#cancelDiscount").bind("click",cacelDiscount);
});


//查看是否有评论的权限
function checkComment() {
    $.ajax({
        contentType: "application/json; charset=utf-8",
        type: "get",
        url: "/user/checkComment",
        data: {
            "username":$("#username").val(),"game_name":$("#game_name").val()
        },
        async: true,
        dataType: "json",
        success:function (data) {
            if(data.commentMsg==="checked"){
            //    执行插入评论的方法
                $(function () {
                    var username = $("#username").val();
                    var comment = $("#addTxt").val();
                    var id = $("#game_id").val();
                    $.ajax({
                        contentType: "application/json; charset=utf-8",
                        type: "get",
                        url: "/user/addComment",
                        data: {
                            "name":$("#username").val(),
                            "comments":$("#addTxt").val(),
                            "id":$("#game_id").val()
                        },
                        async: true,
                        dataType: "json",
                        success: function (data) {
                            if (data.msg === "success") {
                            //     var cp=$("#comment_pic").attr("data_pic");
                            // var html="";
                            // html+="<div class='col-md-12 col-sm-12' style='height: 120px;background-color: rgba(237,237,237,0.52);margin: 1em'>"    //新增评论模板
                            //     +"<div class='col-md-12 col-sm-12'>"
                            //     +"<img src='"+cp+"' class='img-circle col-md-3 col-sm-3' style='width: 120px;height: 100px;margin: 10px' alt=' '>"
                            //     +"<div class='content col-md-4 col-sm-4' style='margin: 30px 0'>"
                            //     +"<p  style='color: #00AFF0'>"+username+':'+"</p>"
                            //     +"<p>"+comment+"</p>"
                            //     +"</div>"
                            //     +"</div>"
                            //     +"</div>"
                            //
                            //     $("#box").prepend(html);//添加至选定标签前
                                $("#box").load("http://localhost:8080/user/game_info?id="+id+" #box");  //重新加载评论的div
                                $("#page").load("http://localhost:8080/user/game_info?id="+id+" #page");  //重新加载分页的div
                            alert("评论成功!");
                                $("#addTxt").val('');

                            }
                            else if (data.msg === "error1") {
                                alert("发表评论错误！")
                            }
                        }
                    })
                });
            }else if (data.commentMsg === "noChecked") {
                $("#checkModal").modal("show");
            }
        },
        error:function () {

        },
        complete:function () {

        }
    })
}


//游戏打折
function discount() {
    var id = $("#game_id").val();
    $.ajax({                                                //确认游戏打折状态
        contentType: "application/json; charset=utf-8",
        type: "get",
        url: "/admin/checkStatu",
        data: {
            id:$("#game_id").val()
        },
        async: true,
        dataType: "json",
        success: function (data){
            if (data.msg==="yes"){
                alert("该游戏已打折!")
            }   else if (data.msg==="no") {
                if ($("#gamePrice").val() > $("#changePriceNum").val()) {
                $.ajax({                                            //对游戏进行打折操作
                    contentType: "application/json; charset=utf-8",
                    type: "get",
                    url: "/admin/modifyGamePrice",
                    data: {
                        save_price: $("#changePriceNum").val(),
                        id: $("#game_id").val()
                    },
                    async: true,
                    dataType: "json",
                    success: function (data) {
                        if (data.msg === "success") {
                            alert("修改成功")
                            // $("#save_box").load("http://localhost:8080/admin/game_info?id=" + id + " #save_box");   //修改后刷新div信息
                            // $("#game_info").load("http://localhost:8080/admin/game_info?id=" + id + " #game_info");
                            window.location.reload();
                        } else if (data.msg === "error") {
                            alert("修改失败")
                        }
                    },
                    error: function () {

                    },
                    complete: function () {

                    }
                })
            }
                else {
                    alert("修改价格大于原先价格!");
                }
            }
        }
    })

}

function cacelDiscount() {
    var id = $("#game_id").val();
    $.ajax({                                                //确认游戏打折状态
        contentType: "application/json; charset=utf-8",
        type: "get",
        url: "/admin/checkStatu",
        data: {
            id:$("#game_id").val()
        },
        async: true,
        dataType: "json",
        success: function (data){
            if (data.msg==="yes"){
                $.ajax({                                            //对游戏进行打折恢复操作
                    contentType: "application/json; charset=utf-8",
                    type: "get",
                    url: "/admin/modifyGamePriceBack",
                    data: {
                        id:$("#game_id").val()
                    },
                    async: true,
                    dataType: "json",
                    success: function (data) {
                        if(data.msg==="success") {
                            alert("恢复成功")
                            // $("#save_box").load("http://localhost:8080/admin/game_info?id="+id+" #save_box" );   //修改后刷新div信息
                            // $("#game_info").load("http://localhost:8080/admin/game_info?id=" + id + " #game_info");
                            window.location.reload();
                        }   else if (data.msg==="error") {
                            alert("恢复失败")
                        }
                    },
                    error:function () {

                    },
                    complete:function () {

                    }
                })
            }   else if (data.msg==="no"){
                alert("该游戏未打折!不能恢复原价!")
            }
        }
    })

}



