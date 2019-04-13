$(function () {
    $(".charge_btn1").bind("click", showCash);
    $(".charge_btn2").bind("click", showCash);
    $(".charge_btn3").bind("click", showCash);
    $("#selfCash").bind("input propertychang",function (event) {
        var cashNum = $(this).val();
        $('.showCashNum').html(~~cashNum);
        $("#selfCash").val(~~cashNum);
    });
    $("#charge_button").bind("click", confirm); //付款按钮
    $(".wcmodalBtn").bind("click", wcLocationHref) //完成付款按钮
});


function showCash() {
    var cashNum = $(this).val();
    // alert(cashNum);
    $('.showCashNum').html(~~cashNum);
    $("#selfCash").val("");

    // alert(num.html());
}
function showCash1() {
    var cashNum = $(this).val();
    $('.showCashNum').html(~~cashNum);
    $("#selfCash").val(~~cashNum);

}



//确认付款总操作
function confirm() {
    var radio = document.getElementsByName('payRadio');
    var selfC = $("#selfCash").val();
    if (selfC > 600 || selfC < 0 ) {
        var cashError = "充值金额一次性不可超过600且不能小于0。";
        $(".fukuang_error").html(cashError);
    }
    else
    if ($("#showCashNum").html() !== ""||''||0) {
        $(".fukuang_error").html("");
        for (var i = 0; i < radio.length; i++) {
            if (radio[0].checked) {
                $("#wechatModal").modal("show");
            } else if (radio[1].checked) {
                $("#aliModal").modal("show");
            }
        }
    } else {
        var error = "请选择需要充值的金额数！";
        $(".fukuang_error").html(error);
    }
}


//显示模态框后的操作
function wcLocationHref() {
    if ($("#wechatModal").modal("hide") || $("#aliModal").modal("hide")) {
        $.ajax({
            contentType: "application/x-www-form-urlencoded;charset=utf-8",
            type: "post",
            url: "/user/userCharge",
            data: {
                "cashCharge": $("#showCashNum").html() + '', "username": $("#username").html()
            },
            async: true,
            dataType:
                "json",
            success: function (data) {
                if (data.charge === "success") {
                    var username=$(".username").html();
                    setTimeout(function () {
                        window.location.href = "/user/userinfo?username="+username
                    }, 500)
                } else {
                    // window.location.href = "/user/index";
                }
            }
            ,
            error: function () {
            }
            ,
            complete: function () {
            }
        });
    }
}



