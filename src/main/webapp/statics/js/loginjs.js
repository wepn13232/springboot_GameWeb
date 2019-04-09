$(function () {
    $("#form_submit").bind("click", checkUser);
});


function checkUser() {
    alert("sss");
    $.ajax({
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        type: "post",
        url: "/dologin",
        data: {
            "username": $('#username').val(), "password": $('#password').val()
        },
        async: true,
        dataType:
            "json",
        success: function (data) {
            if (data.lg === "error") {
                $("#spanError").html("账号密码错误！");
            }
            else {
                window.location.href = "/user/index";
            }
        }

        ,
        error: function () {

        }
        ,
        complete: function () {

        }

    })
}


