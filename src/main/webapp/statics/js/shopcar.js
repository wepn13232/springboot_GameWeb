$(function () {
    $(".shopcar_form").bind("click", addShopCar);
    $(".buy_game").bind("click", buyGame);
    $(".delete_game").bind("click", deleteGame);
    $(".buy_moregame").bind("click", buyMoreGame)
    /* $("#qrmodalBtn").bind("click",confirmBuyGame);*/
    //判断是否有订单显示按钮
    var status1 = $("#shopStatus1").html();
    if (status1 != null) {
        $("#button_group").removeClass("hidden");
    }
    $(".shopCharsId").bind("click", checkBoxOK);

});


//全选
$(function () {
    $(".allcheck").click(function () {
        $(":checkbox").prop("checked", true);
        $("#duoxuanPay").attr("disabled", false);
        //计算总价值
        var sum=0;
        $(".shopCharsId").each(function () {
            var isChecked = $(this).prop("checked");
            if (isChecked === true) {
                var list_val = $(this).parent().parent("tr").children("td").eq(4).html();
                sum+=parseInt(list_val);
            }
        });
        $("#totalPrice").html(sum);
    });

// 全不选
    $(".nocheck").click(function () {
        $(":checkbox").prop("checked", false);
        $("#duoxuanPay").attr("disabled", true);
        $("#totalPrice").html("");
    });

});

//判断checkBox选上了
function checkBoxOK() {
    var c = $(".shopCharsId");
    var list = $(this).parent().parent("tr").children("td").eq(4);
    //复选框
    for (var i = 0; i < c.length; i++) {
        if ((c[i].checked) === true) {
            $("#duoxuanPay").attr("disabled", false);
            break;
        } else {
            $("#duoxuanPay").attr("disabled", true);
            $("#totalPrice").html("0");
        }
    }

//计算被选上的游戏的价值（计算需支付的总金额）
    var sum=0;
    c.each(function () {
        var isChecked = $(this).prop("checked");
        if (isChecked === true) {
            var list_val = $(this).parent().parent("tr").children("td").eq(4).html();
            sum+=parseInt(list_val);
        }
    });
    $("#totalPrice").html(sum);
}



//加入购物车响应函数
function addShopCar() {
    var id = $(this).attr('id');
    $.ajax({
        contentType: "application/json; charset=utf-8",
        type: "get",
        url: "/user/addshopcar",
        data: {
            "game_name": $("input[data-gamename=" + id + "]").val(),
            "game_price": $("input[data-gameprice=" + id + "]").val()
        },
        async: true,
        dataType: "json",
        success: function (data) {
            if (data.msg === "success") {
                $("[data-disable=" + id + "]").attr({
                    "disabled": "true",
                    "value": "已加入购物车"
                });
                $("[data-disable=" + id + "]").removeClass("btn-info");
                $("[data-disable=" + id + "]").addClass("btn-warning");
            } else {
                $("[data-span=" + id + "]").html("加入购物车失败！");
            }
        },
        error: function () {

        }
    })
}


//购买游戏，弹出操作模态框
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
            url: "/user/payok",
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
                        url: "/user/buygame",
                        data: {
                            "id": $("input[data-id=" + id + "]").val(),
                            "game_price": $("input[data-gameprice=" + id + "]").val()
                        },
                        async: true,
                        dataType: "json",
                        success: function (data) {
                            if (data.msg === "success") {
                                alert("购买成功！");
                                $("#payModal").modal("hide");
                                setTimeout(function () {
                                    window.location.reload();
                                }, 500)
                            } else if (data.msg === "error") {
                                alert("付款失败");
                            } else if (data.msg === "less") {
                                //调用confirm确认框，确认是否充值
                                var r = window.confirm("余额不足，是否现在充值？");
                                if (r === true) {
                                    window.location.href = "/user/charge?username=" + data.username;
                                } else {
                                    // $("#payModal").modal("hide");
                                    // $(".payPassword").val("");
                                }
                            }
                        },
                        error: function () {
                        }
                    })
                }
                if (data.msg === "error") {
                    $(".message").html("密码错误！请重新输入");
                    $(".payPassword").val("");
                }
            },
            error: function () {
            }
        })
    }
}


//购买多个游戏，弹出操作模态框
function buyMoreGame() {
    $("#payModal").modal("show");
    /*console.log(id);*/
    $("#qrmodalBtn").bind("click", confirmBuyGame);
}


//付款操作模态框（输入密码）
function confirmBuyGame() {
    //输入密码，判断密码
    $.ajax({
        contentType: "application/json; charset=utf-8",
        type: "get",
        url: "/user/payok",
        data: {
            "paypassword": $(".payPassword").val()
        },
        async: true,
        dataType: "json",
        success: function (data) {
            //密码正确，付款购买响应函数
            if (data.msg === "success") {
                var arrays = [];
                var moregame_price = 0;
                var items = document.getElementsByName("shopCharsId");
                for (var i = 0; i < items.length; i++) {
                    if (items[i].checked) {
                        arrays.push(parseInt(items[i].value));
                        moregame_price += parseFloat($("input[data-gamesprice=" + items[i].value + "]").val());
                    }
                }
                /*console.log(arrays);*/
                $.ajax({
                    contentType: "application/json; charset=utf-8",
                    type: "get",
                    url: "/user/buymoregame",
                    data: {
                        "moreid": JSON.stringify(arrays),
                        "moregame_price": moregame_price
                    },
                    async: true,
                    dataType: "json",
                    success: function (data) {
                        if (data.msg === "success") {
                            alert("购买成功！");
                            $("#payModal").modal("hide");
                            setTimeout(function () {
                                window.location.reload();
                            }, 500)
                        } else if (data.msg === "error") {
                            alert("付款失败");
                        } else if (data.msg === "less") {
                            //调用confirm确认框，确认是否充值
                            var r = window.confirm("余额不足，是否现在充值？");
                            if (r === true) {
                                window.location.href = "/user/charge?username=" + data.username;
                            } else {
                            }
                        }
                    },
                    error: function () {
                    }
                })
            }
            if (data.msg === "error") {
                $(".message").html("密码错误！请重新输入");
                $(".payPassword").val("");
            }
        },
        error: function () {
        }
    })
}

//删除订单
function deleteGame() {
    var id = $(this).attr('id');
    var r = window.confirm("确认删除？");
    if (r === true) {
        $.ajax({
            contentType: "application/json; charset=utf-8",
            type: "get",
            url: "/user/deletegame",
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
}

