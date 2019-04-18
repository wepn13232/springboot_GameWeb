$(function () {
    $("#logout").bind("click",logout);
});

function logout() {
    $.ajax({
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        type: "post",
        url: "/logout",
        async: true,
        dataType: "json",
        success:function (data) {
            if(data.msg==="success"){
                alert("注销成功！");
                window.location.href="/login";
            }else{
                alert("注销失败！");
            }
        },error:function () {
            alert("注销失败！");
        },complete:function () {

        }
    })
}