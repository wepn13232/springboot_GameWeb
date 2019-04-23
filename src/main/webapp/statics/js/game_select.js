$(function () {
    $("#game_search_btn").bind("click", findGame)
});

function findGame() {
    var val = $("#form_content").val();
    console.log(val);
    $.ajax({
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        type: "post",
        url: "/profile/search",
        data: {
            "form_content": val
        },
        async: false,
        dataType: "json",
        success: function (data) {
            console.log(data);
            if (data.length === 0) {
                // $("#form_content").val("");
                $("#msg").html("没有此游戏，请再次输入！");
            } else {
                $("#row_col").html("");
                for (var i = 0; i < data.length; i++) {
                    if (data[i].status == 1) {
                        $("#row_col").append("<div class=\"col-sm-6 col-md-3 gamebox\">\n" +
                            "                        <a href=\"/game_info?id=" + data[i].id +
                            "\" target=\"_blank\">\n" +
                            "                            <div class=\"thumbnail boxshodow\">\n" +
                            "                                    <img src=\"/statics/images/sale.png\"\n" +
                            "                                         id=\"discountPic\"\n" +
                            "                                         style=\"width: 100px;height: 100px;position:absolute;margin-left: 135px\" alt=\"\">\n" +
                            "                                <img src=\"/statics/images/gamepic/pic" + data[i].id +
                            ".jpg\"\n" +
                            "                                     alt=\"通用的占位符缩略图\" style=\"width: 245px;height: 346px\">\n" +
                            "                                <div class=\"caption\">\n" +
                            "                                    <p class=\"game_info\">" + data[i].game_info +
                            "</p>\n" +
                            "                                    <div class=\"text-center\">\n" +
                            "                                        <p style=\"color: red;font-size: 2em\">\n" +
                            "                                            $" +data[i].game_price+
                            "</p>\n" +
                            "                                    </div>\n" +
                            "\n" +
                            "                                    <div class=\"button_shop center-block text-center\">\n" +
                            "                                        <a class=\"btn btn-info\"\n" +
                            "                                           href=\"/user/addshopcar\">加入购物车</a>\n" +
                            "                                    </div>\n" +
                            "\n" +
                            "                                </div>\n" +
                            "                            </div>\n" +
                            "                        </a>\n" +
                            "                    </div>");
                    } else {
                        $("#row_col").append("<div class=\"col-sm-6 col-md-3 gamebox\">\n" +
                            "                        <a href=\"/game_info?id=" + data[i].id +
                            "\" target=\"_blank\">\n" +
                            "                            <div class=\"thumbnail boxshodow\">\n" +
                            "                                <img src=\"/statics/images/gamepic/pic" + data[i].id +
                            ".jpg\"\n" +
                            "                                     alt=\"通用的占位符缩略图\" style=\"width: 245px;height: 346px\">\n" +
                            "                                <div class=\"caption\">\n" +
                            "                                    <p class=\"game_info\">" + data[i].game_info +
                            "</p>\n" +
                            "                                    <div class=\"text-center\">\n" +
                            "                                        <p style=\"color: red;font-size: 2em\">\n" +
                            "                                            $" +data[i].game_price+
                            "</p>\n" +
                            "                                    </div>\n" +
                            "\n" +
                            "                                    <div class=\"button_shop center-block text-center\">\n" +
                            "                                        <a class=\"btn btn-info\"\n" +
                            "                                           href=\"/user/addshopcar\">加入购物车</a>\n" +
                            "                                    </div>\n" +
                            "\n" +
                            "                                </div>\n" +
                            "                            </div>\n" +
                            "                        </a>\n" +
                            "                    </div>");
                    }
                }
            }
        },
        error: function () {
        }
    })

}