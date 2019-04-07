$(function () {
    $(".charge_btn1").bind("click", showCash);
    $(".charge_btn2").bind("click", showCash);
    $(".charge_btn3").bind("click", showCash);
    $("#selfCash").bind("blur",showCash);
});


function showCash() {
    var cashNum=$(this).val();
    // alert(cashNum);
    $('.showCashNum').html(cashNum);
}