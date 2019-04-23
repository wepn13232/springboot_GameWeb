$(function () {
    $(".form_submit").bind("click",findGame)
})

function findGame() {

    console.log($("#form_content").val());
    $.ajax({
        contentType:"application/json; charset=utf-8",
        type: "get",
        url: "/findgame",
        data:{
            "form_content":$("#form_content").val()
        },
        async: true,
        dataType: "json",
        success: function (data) {
            if (data.msg === "success") {
                window.location.href = "profile";

            } else {
                $("#form_content").val("");
                $("#msg").html("没有此游戏，请再次输入！");
            }
        },
        error: function () {
        }
    })

}