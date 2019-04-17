$(function () {
    $("#addComment").bind("click",checkComment);
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

