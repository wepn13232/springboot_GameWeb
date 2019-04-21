$(function () {
    $("#register").bind("click", registerUser);
    $("#modalBtn").bind("click",locationHref);
    $("#userName").bind("blur",checkRegisterUser);
});


function registerUser() {
    $.ajax({
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        type: "post",
        url: "/doregister",
        data: {
            "userName": $('#userName').val(),
            "password": $('#passWord').val()
        },
        async: true,
        dataType: "json",
        success: function (data) {
            if (data.useradd === "1") {
                $("#registerModal").modal("show");
            }
        },
        error: function () {

        },
        complete: function () {

        }
    })
}

//判断是否已经存在用户
function checkRegisterUser() {
    $.ajax({
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        type: "post",
        url: "/checkUser",
        data: {
            "userName": $('#userName').val()
        },
        async: false,
        dataType: "json",
        success: function (data) {
            if (data.checkUser === "1") {
                $("#registerError").html("已经存在该用户！");
                $("#register").attr({
                    disabled: true
                });
            }else if(data.checkUser === "0"){
                $("#registerError").html("");
                $("#register").attr({
                    disabled: false
                });
            }
        },
        error: function () {

        },
        complete: function () {

        }
    })
}


function locationHref() {
    if($("#registerModal").modal("hide")){
        setTimeout(function () {
            window.location.href="/login"
        },1000)
    }
}