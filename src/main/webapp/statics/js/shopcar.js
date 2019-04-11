$(function () {
    $(".shopcar_form").bind("click", addShopCar);
    $(".buy_game").bind("click", buyGame);
    $(".delete_game").bind("click", deleteGame);

});

//加入购物车响应函数
function addShopCar() {
    var id = $(this).attr('id');
    $.ajax({
        contentType: "application/json; charset=utf-8",
        type: "get",
        url: "/addshopcar",
        data: {
            "game_name": $("input[data-gamename=" + id + "]").val(),
            "game_price": $("input[data-gameprice=" + id + "]").val()
        },
        async: true,
        dataType: "json",
        success: function (data) {
            if (data.msg === "success") {
                $("[data-disable=" + id + "]").attr("disabled", "true");
            } else {
                $("[data-span=" + id + "]").html("加入购物车失败！");
            }
        },
        error: function () {

        }
    })
}


//弹出操作模态框
function buyGame() {
    var id = $(this).attr('id');
    $("#payModal").modal("show");
    /*console.log(id);*/
    $("#qrmodalBtn").bind("click", confirmBuyGame);

    //付款操作模态框（输入密码）
    function confirmBuyGame() {
        //输入密码，判断密码
        $.ajax({
            contentType: "application/json; charset=utf-8",
            type: "get",
            url: "/payok",
            data: {
                "paypassword": $(".payPassword").val()
            },
            async: true,
            dataType: "json",

            success: function (data) {
                //密码正确，付款购买响应函数
                if (data.msg === "success") {
                    $.ajax({
                        contentType: "application/json; charset=utf-8",
                        type: "get",
                        url: "/buygame",
                        data: {
                            "id": $("input[data-id=" + id + "]").val(),
                            "game_price": $("input[data-gameprice=" + id + "]").val()
                        },
                        async: true,
                        dataType: "json",
                        success: function (data) {
                            if (data.msg === "success") {
                                $("#payModal").modal("hide");
                                setTimeout(function () {
                                    window.location.reload();
                                }, 500)
                            }
                            if (data.msg === "error") {
                                alert("付款失败");
                            }
                            if (data.msg === "less") {
                                window.confirm("余额不足，是否现在充值？");
                                window.location.href = "/user/charge?username=" + data.username;
                            }
                        },
                        error: function () {
                        }
                    })
                }
                if (data.msg === "error") {
                    /* $("#payModal").modal("show");*/
                    $(".message").html("密码错误！请重新输入");
                    $(".payPassword").val("");
                }
            },

            error: function () {

            }
        })

    }

}


//删除订单
function deleteGame() {
    var id = $(this).attr('id');
    window.confirm("确认删除？");
    $.ajax({
        contentType: "application/json; charset=utf-8",
        type: "get",
        url: "/deletegame",
        data: {
            "id": $("input[data-id=" + id + "]").val()
        },
        async: true,
        dataType: "json",
        success: function (data) {
            if (data.msg === "success") {
                window.location.reload();
            }
            if (data.msg === "error") {
                alert("删除失败");
            }
        },
        error: function () {
        }
    })
}

