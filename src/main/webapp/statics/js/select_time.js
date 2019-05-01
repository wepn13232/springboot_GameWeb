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