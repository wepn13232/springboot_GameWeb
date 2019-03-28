<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>你还没登录呢！</title>
    <link href="${pageContext.request.contextPath}/statics/css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="wallpaper" id="wallpaper"
     style="width: 100%;height: 100%;background-color: #ccd0d4;background-position: center center;background-size: cover">
    <div class="container">
        <div class="jumbotron">
            <h1>你想干嘛？</h1>
            <p>你还没登录呢！</p>
            <p><a href="${pageContext.request.contextPath}/index" class="btn btn-danger btn-lg"
                  role="button">确定</a></p>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/statics/js/bootstrap.js"></script>
</body>
</html>
