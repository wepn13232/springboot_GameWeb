$(function () {
    $.ajax({
        type:"GET",
        url:path+"/jsp/user/game_info",
        data:{method:"comment"},
        dataType:"json",
        success:function(data){
            alert("进入方法");
            addComment(data);
        }
    });
});
    function addComment(data) {
        $.each(data,function(index,obj){
            $("#box").append("<div class='col-md-12 col-sm-12' style='height: 120px;background-color: rgba(237,237,237,0.52);margin: 1em'>"
                +//<%--头像--%>
                "<div class='col-md-12 col-sm-12'>"
                +"<img src='${pageContext.request.contextPath}/statics/images/t1.jpg'  class='img-circle col-md-3 col-sm-3' style='width: 120px;height: 100px;margin: 10px' alt=''>"
                +"<div class='content col-md-4 col-sm-4' style='margin: 30px 0'>"
                +"<p>obj{'username'}:</p>"
            +"<p>obj{'comment'}</p>"
            +"</div>"
            +"</div>"
            +"</div>");
        });
}