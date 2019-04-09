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
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>购买的游戏</th>
                    <th>购买用户</th>
                    <th>下单日期</th>
                    <th>金额</th>
                    <th>订单状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <c:forEach var="shopCar" items="${shopCarList}" >
                <c:if test="${shopCar.status==0}">
                <tbody>
                    <input type="hidden" id="id" name="id" value="${shopCar.id}" />
                <tr>
                    <td>${shopCar.game_name}</td>
                    <td>${shopCar.username}</td>
                    <td>${shopCar.date}</td>
                    <td>${shopCar.game_price}</td>
                    <td>未付款</td>
                    <td><button class="btn btn-warning">删除订单</button>
                        <button class="btn btn-success" style="width: 22%">付款</button>
                    </td>
                </tr>
                </tbody>
                </c:if>
              </c:forEach>
            </table>
        </div>
    </div>


<%--已付款的订单（已拥有的游戏）--%>
<div class="clearfix" style="padding: 1em"></div>
<div class="panel panel-success">
    <div class="panel-heading">已完成的订单</div>
    <div class="panel-body">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>购买的游戏</th>
                <th>购买用户</th>
                <th>购买日期</th>
                <th>订单状态</th>
            </tr>
            </thead>
           <c:forEach var="shopCar" items="${shopCarList}" >
            <c:if test="${shopCar.status==1}">
            <tbody>
            <tr>
                <td>${shopCar.game_name}</td>
                <td>${shopCar.username}</td>
                <td>${shopCar.date}</td>
                <td>已购买</td>
            </tr>
            </tbody>
            </c:if>
           </c:forEach>
        </table>
    </div>
</div>

</div>
<%@include file="common/footer.jsp"%>
</body>
</html>
