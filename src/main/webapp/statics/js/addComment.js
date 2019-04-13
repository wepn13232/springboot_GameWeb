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