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
                            var box =document.getElementById("box");    //获取原来页面的标签
                            var html="";
                            html+="<div class='col-md-12 col-sm-12' style='height: 120px;background-color: rgba(237,237,237,0.52);margin: 1em'>"    //新增评论模板
                                +"<div class='col-md-12 col-sm-12'>"
                                +"<img src='${pageContext.request.contextPath}/statics/images/t1.jpg' class='img-circle col-md-3 col-sm-3' style='width: 120px;height: 100px;margin: 10px' alt=' '>"
                                +"<div class='content col-md-4 col-sm-4' style='margin: 30px 0'>"
                                +"<p>"+username+':'+"</p>"
                                +"<p>"+comment+"</p>"
                                +"</div>"
                                +"</div>"
                                +"</div>"

                                box.innerHTML+=html;    //拼接显示
                            alert("评论成功!")
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