$(function () {
    $(".charge_btn1").bind("click", showCash);
    $(".charge_btn2").bind("click", showCash);
    $(".charge_btn3").bind("click", showCash);
    $("#selfCash").bind("blur", showCash);
    $("#charge_button").bind("click", confirm);
    $("#wcmodalBtn").bind("click",wcLocationHref)
});


function showCash() {
    var cashNum = $(this).val();
    // alert(cashNum);
    var num=$('.showCashNum').html(cashNum);
    // alert(num.html());
}

function confirm() {
    $.ajax({
        contentType: "application/x-www-form-urlencoded;charset=utf-8",
        type: "post",
        url: "/user/userCharge",
        data: {
            "cashCharge":$("#showCashNum").html()+'',"username":$("#username").html()
        },
        async: true,
        dataType:
            "json",
        success: function (data) {
            if (data.charge === "success") {
              $("#wechatModal").modal("show");
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


function wcLocationHref() {
    if ($("#wechatModal").modal("hide")){
        setTimeout(function () {
            window.location.href="/user/index"
        },500)
    }

}