<%--
  Created by IntelliJ IDEA.
  User: linqiyuan
  Date: 2019-04-08
  Time: 09:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户个人信息</title>
    <%@include file="common/head.jsp"%>
</head>
<body>
<%@include file="common/header.jsp"%>
<div class="banner-1"></div>

<%--用户信息界面--%>
<div class="container">
    <%--头像标题--%>
    <div class="col-md-12 col-sm-12" style="height: 120px;background-color: rgba(237,237,237,0.52);margin: 1em">
        <%--头像--%>
        <div class="col-md-12 col-sm-12">
            <img src="${pageContext.request.contextPath}/statics/images/t1.jpg"  class="img-circle col-md-3 col-sm-3" style="width: 120px;height: 100px;margin: 10px" alt="">
            <div class="content col-md-4 col-sm-4" style="margin: 30px 0">
                <p >用户名：${usersession.username}</p>
                <div class="clearfix" style="padding: 5px"></div>
                <p>余额：${cashLeft}</p>
            </div>

        </div>
    </div>
        <div class="clearfix" style="padding: 2em"></div>

        <h4 style="padding-left: 1em">你拥有的游戏</h4>
        <div class="col-md-12 col-sm-12" style="height: 320px;background-color: rgba(237,237,237,0.52);margin: 1em">
        <%--头像--%>
        <div class="col-md-12 col-sm-12">

        </div>
    </div>
    <%--详细信息--%>
    <div class="">

    </div>
</div>

<%@include file="common/footer.jsp"%>
</body>
</html>
