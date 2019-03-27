<%--
  Created by IntelliJ IDEA.
  User: linqiyuan
  Date: 2019-03-27
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
    <%@include file="common/head.jsp" %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/auth.css" type="text/css">
</head>
<body>
<%@include file="common/header.jsp" %>
<div class="banner-1"></div>
<div class="lowin">
    <div class="lowin-brand">
        <img src="${pageContext.request.contextPath}/statics/images/kodinger.jpg" alt="logo">
    </div>
    <div class="lowin-wrapper">

        <div class="lowin-box lowin-register">
            <div class="lowin-box-inner">
                <form>
                    <p>来创建个账户吧~</p>
                    <div class="lowin-group">
                        <label>Username</label>
                        <input type="text" autocomplete="text" name="username" class="lowin-input">
                    </div>
                    <div class="lowin-group">
                        <label>Password</label>
                        <input type="password" name="password" autocomplete="current-password" class="lowin-input">
                    </div>
                    <button class="lowin-btn">
                        注册
                    </button>

                    <div class="text-foot">
                        已经有账号了？ <a href="${pageContext.request.contextPath}/login" class="login-link">登录</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
