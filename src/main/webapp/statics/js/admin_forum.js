$(function () {
    $(".deleteTZ").bind("click", deletetz);
});

function deletetz() {
    var id = $(this).attr('id');
    // var r = window.confirm("确认删除？");
    var popup = new Popup({
        'type': 'submit',
        'title': '删除帖子',
        'text': '确定要删除该帖子吗？',
        'cancelbutton': true,
        'submitCallBack': function () {
            $.ajax({
                contentType: "application/json; charset=utf-8",
                type: "get",
                url: "/admin/deleteforum",
                data: {
                    id: $("input[data-id=" + id + "]").val()
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
    });
}