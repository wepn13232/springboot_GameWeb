$(function () {
    $(".charge_btn1").bind("click", showCash);
    $(".charge_btn2").bind("click", showCash);
    $(".charge_btn3").bind("click", showCash);
    $("#selfCash").bind("blur", showCash);
    $("#charge_button").bind("click", confirm); //付款按钮
    $(".wcmodalBtn").bind("click", wcLocationHref) //完成付款按钮
});


function showCash() {
    var cashNum = $(this).val();
    // alert(cashNum);
    $('.showCashNum').html(cashNum);
    // alert(num.html());
}

function confirm() {
    var radio = document.getElementsByName('payRadio');
    for (var i = 0; i < radio.length; i++) {
        if (radio[0].checked) {
            $("#wechatModal").modal("show");
        } else if (radio[1].checked) {
            $("#aliModal").modal("show");
        }
    }

}


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
                    setTimeout(function () {
                        window.location.href = "/user/index"
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


