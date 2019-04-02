<%--
  Created by IntelliJ IDEA.
  User: LinQQQY
  Date: 2019/4/2
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的购物车/订单</title>
    <%@include file="common/head.jsp"%>
</head>
<body>
<%@include file="common/header.jsp"%>
<div class="banner-1"></div>

<%--购物车显示模块--%>
<div class="container-fluid">
    <%--未付款的订单（待购买）--%>
    <div class="clearfix" style="padding: 1em"></div>
    <div class="panel panel-info">
        <div class="panel-heading">未付款的订单</div>
        <div class="panel-body">
            Panel content
        </div>
    </div>


<%--已付款的订单（已拥有的游戏）--%>
<div class="clearfix" style="padding: 1em"></div>
<div class="panel panel-success">
    <div class="panel-heading">已完成的订单</div>
    <div class="panel-body">
        Panel content
    </div>
</div>

</div>

<%@include file="common/footer.jsp"%>
</body>
</html>
