$(function () {
    $("#register").bind("click", registerUser);
    $("#modalBtn").bind("click",locationHref);
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

function locationHref() {
    if($("#registerModal").modal("hide")){
        setTimeout(function () {
            window.location.href="/login"
        },1000)
    }
}