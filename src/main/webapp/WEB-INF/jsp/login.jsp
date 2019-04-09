<%--
  Created by IntelliJ IDEA.
  User: linqiyuan
  Date: 2019-03-27
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
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

        <div class="lowin-box lowin-login">
            <div class="lowin-box-inner">
                <form  name="login_form" class="login_form">
                    <p>请登录</p>
                    <div class="lowin-group">
                        <label>Username <a href="#" class="login-back-link">Sign in?</a></label>
                        <input type="text" autocomplete="text" name="username" class="lowin-input" id="username">
                    </div>
                    <div class="lowin-group">
                        <label>Password <a href="#" class="login-back-link">Sign in?</a></label>
                        <input type="password" autocomplete="password" name="password" class="lowin-input" id="password">
                    </div>
                    <span id="spanError" style="color: red" class="col-md-offset-4"></span>
                    <div class="clearfix" style="padding: 1em"></div>
                    <input class="lowin-btn login-btn" id="form_submit" value="登录" type="button"/>
                    <div class="text-foot">
                        还没有账号吗? <a href="${pageContext.request.contextPath}/register" class="register-link">注册</a>
                    </div>
                </form>
            </div>
        </div>
    </div>


</div>

<%@include file="common/footer.jsp" %>
<script type="application/javascript" src="${pageContext.request.contextPath}/statics/js/loginjs.js"></script>
</body>
</html>
