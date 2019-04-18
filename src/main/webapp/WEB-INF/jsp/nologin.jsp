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
            <h1>什么操作都做不了呢</h1>
            <p>因为你还没登录撒！</p>
            <p><a href="${pageContext.request.contextPath}/login" class="btn btn-danger btn-lg"
                  role="button">前往登录页</a></p>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/statics/js/bootstrap.js"></script>
</body>
</html>
