//倒计时
$(function calculateDiffTime(){
    var highestTimeoutId = setTimeout(";"); for (var i = 0 ; i < highestTimeoutId ; i++) { clearTimeout(i); }
    var startTime = jQuery.now() , endTime = new Date($("#end_time").val()).getTime();
    // alert(startTime+"*********"+endTime);
    if (endTime-startTime>0){
        var timeDiff = (endTime - startTime)/1000   //转化为秒
        var hour = Math.floor(timeDiff / 3600); //转化为时
        timeDiff = timeDiff % 3600;
        var minute = Math.floor(timeDiff / 60); //转化为分
        timeDiff = timeDiff % 60;
        var second = Math.ceil(timeDiff);   //转化为秒，向上取整
        // alert(hour+"时"+ minute+"分"+ second+"秒");
        $("#hour").val(hour);
        $("#minute").val(minute);
        $("#second").val(second);


    }else{
        // alert("打折已结束！");
    }


});

//计时器方法
$(function set_time() {
    var highestTimeoutId = setTimeout(";"); for (var i = 0 ; i < highestTimeoutId ; i++) { clearTimeout(i); }
    var h = $("#hour").val()
    var m = $("#minute").val()
    var s = $("#second").val()
    var t1=""
    // alert("计时器开始")
    if (h!=0||m!=0||s!=0){     //还有剩余时间时执行计时器方法
        // alert("进入计时器")
        t1 = window.setTimeout(startLoadTime,1000)
        function startLoadTime() {
        if (s==0&&m==0&&h==0){
            window.clearTimeout(t1)
            alert("打折已结束!")

            //页面等待恢复原价代码块
            $.ajax({                                                //确认游戏打折状态
                contentType: "application/json; charset=utf-8",
                type: "get",
                url: "/admin/checkStatu",
                data: {
                    id:$("#game_id").val()
                },
                async: true,
                dataType: "json",
                success: function (data){
                    if (data.msg==="yes"){
                        $.ajax({                                            //对游戏进行打折恢复操作
                            contentType: "application/json; charset=utf-8",
                            type: "get",
                            url: "/admin/modifyGamePriceBack",
                            data: {
                                id:$("#game_id").val()
                            },
                            async: true,
                            dataType: "json",
                            success: function (data) {
                                if(data.msg==="success") {
                                    // alert("恢复成功")
                                    // $("#save_box").load("http://localhost:8080/admin/game_info?id="+id+" #save_box" );   //修改后刷新div信息
                                    // $("#game_info").load("http://localhost:8080/admin/game_info?id=" + id + " #game_info");
                                    // window.location.reload();
                                }   else if (data.msg==="error") {
                                    alert("恢复失败")
                                }
                            },
                            error:function () {

                            },
                            complete:function () {

                            }
                        })
                    }   else if (data.msg==="no"){
                        alert("该游戏未打折!不能恢复原价!")
                    }
                }
            })
            //页面等待恢复原价代码块


            window.location.reload();
        }
        if (s==0&&m==0&&h!=0){
            window.clearTimeout(t1)
            s=59;
            m=59;
            h--;
            $("#hour").val(h);
            $("#minute").val(m);
            $("#second").val(s);
            t1 = window.setTimeout(startLoadTime,1000)
        }
        if (s==0&&m!=0){
            window.clearTimeout(t1)
            s=59;
            m--;
            $("#minute").val(m);
            $("#second").val(s);
            t1 = window.setTimeout(startLoadTime,1000)
        }
        else {
            window.clearTimeout(t1)
            s--;
            $("#second").val(s);
            t1 = window.setTimeout(startLoadTime,1000)
        }
    }
    }

});