/*$(function () {
   $(game).bind("click", addShopCar);
});*/
$(".shopcar_form").on("click",function addShopCar() {
    var id = $(this).attr('id');
    $.ajax({
        contentType:"application/json; charset=utf-8",
        type:"get",
        url:"/addshopcar",
        data:{
            "game_name":$("input[data-gamename="+id+"]").val(),"game_price":$("input[data-gameprice="+id+"]").val()
        },
        async: true,
        dataType:"json",
        success:function (data) {
            if (data.msg === "success") {
                $("[data-disable="+id+"]").attr("disabled","true");
            }
            else {
                $("[data-span="+id+"]").html("加入购物车失败！");
            }
        },
        error:function () {

        }
    })
});