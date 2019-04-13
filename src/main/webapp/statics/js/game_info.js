$(function () {
    $("#addComment").bind("click", addComment);
});
    function addComment() {
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
                var html ="";
                html+="<div class='col-md-12 col-sm-12' style='height: 120px;background-color: rgba(237,237,237,0.52);margin: 1em'>"
                +"<div class='col-md-12 col-sm-12'>"
                +"<img src='${pageContext.request.contextPath}/statics/images/t1.jpg' class='img-circle col-md-3 col-sm-3' style='width: 120px;height: 100px;margin: 10px' alt=' '>"
                +"<div class='content col-md-4 col-sm-4' style='margin: 30px 0'>"
                +"<p>"+username+':'+"</p>"
                +"<p>"+comment+"</p>"
                +"</div>"
                +"</div>"
                +"</div>"

                $("#box").html(html);
                alert("评论成功!")
            },
            error1: function () {
                alert("发表评论错误！")
             }//,
            // error2: function () {
            //     alert("你还没购买该游戏，无法发表评论!")
            // }
        })
}