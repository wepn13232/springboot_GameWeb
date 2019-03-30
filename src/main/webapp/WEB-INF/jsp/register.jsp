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
                        <label>
                            <input type="text" autocomplete="text" name="username" id="userName" class="lowin-input"/>
                        </label>
                    </div>
                    <div class="lowin-group">
                        <label>Password</label>
                        <label>
                            <input type="password" name="password" id="passWord" autocomplete="current-password" class="lowin-input"/>
                        </label>
                    </div>
                    <input type="button" class="lowin-btn" value="注册" id="register"/>


                    <div class="text-foot">
                        已经有账号了？ <a href="${pageContext.request.contextPath}/login" class="login-link">登录</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<%--模态框--%>
<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <h4 class="modal-title" id="myModalLable">恭喜你，注册成功啦！！</h4>
        </div>
        <div class="clearfix" style="padding-top: 1em"></div>
        <a type="button" class="btn btn-success" id="modalBtn" data-dismiss="modal">好的</a>
    </div>
</div>


<%@include file="common/footer.jsp"%>
<script type="application/javascript" src="${pageContext.request.contextPath}/statics/js/registerJs.js"></script>

</body>
</html>
