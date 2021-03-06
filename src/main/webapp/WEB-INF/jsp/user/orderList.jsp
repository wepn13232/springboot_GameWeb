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
    <%@include file="common/head.jsp" %>
    <link href="${pageContext.request.contextPath}/statics/css/popup.css" type="text/css" rel="stylesheet">
</head>
<body>
<%@include file="common/header.jsp" %>
<div class="banner-1"></div>

<%--购物车显示模块--%>

<div class="container-fluid">
    <%--未付款的订单（待购买）--%>
    <div class="clearfix" style="padding: 1em"></div>
    <div class="panel panel-info">
        <div class="panel-heading">未付款的订单</div>
        <div class="panel-body">
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th></th>
                    <th>购买的游戏</th>
                    <th>购买用户</th>
                    <th>下单日期</th>
                    <th>金额</th>
                    <th>订单状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <c:forEach var="shopCar" items="${shopCarList}">
                    <c:if test="${shopCar.status==0}">
                        <%--<input type="hidden" data-id="d${shopCar.id}" class="id" name="id" value="${shopCar.id}"/>--%>
                        <input type="hidden" data-gameprice="${shopCar.id}" class="game_price" name="game_price"
                               value="${shopCar.game_price}"/>
                        <tbody>
                        <tr id="shopStatus1">
                            <td><input type="checkbox" value="${shopCar.id}" name="shopCharsId" class="shopCharsId">
                            </td>
                            <td>${shopCar.game_name}</td>
                            <td>${shopCar.username}</td>
                            <td>${shopCar.date}</td>
                            <td class="td_game_price">${shopCar.game_price}</td>
                            <td>未付款</td>

                            <td><%--data-自定义标签 ,用按钮的id做唯一标识--%>
                                <button class="btn btn-warning delete_game" id="${shopCar.id}">删除订单</button>
                                <button class="btn btn-success buy_game" style="width:6em" id="${shopCar.id}">付款</button>
                            </td>

                        </tr>
                        </tbody>
                    </c:if>
                </c:forEach>
            </table>
            <div class="hidden" id="button_group">
                <button class="btn btn-info allcheck col-md-1 col-sm-1">全选</button>
                <button class="btn btn-info nocheck col-md-1 col-sm-1" style="margin-left: 5px">取消</button>
                <%--全部金额--%>
                <p id="yuan" style="width: 120px;margin-left: 58%;padding-top: 6px" class="col-md-1 col-sm-1"  >总共需支付：
                </p>
                <p id="totalPrice" style="color: red;font-size: 1.5em;width: 100px" class="col-md-1 col-sm-1">
                    0
                </p>

                <button class="btn btn-success buy_moregame col-md-1 col-sm-1" id="duoxuanPay" disabled>
                    多选付款
                </button>
            </div>


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
                <c:forEach var="shopCar" items="${shopCarList}">
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


<%--付款模态框--%>
<div class="modal fade" style="padding: 15em" id="payModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <p class="col-md-12 col-sm-12 message" style="width: 300px">请输入登录密码以支付购买：</p>
            <input type="password" class="form-control payPassword col-md-12 col-sm-12" style="width: 500px" required/>
        </div>
        <div class="clearfix" style="padding-top: 3em"></div>
        <div slot="afooter">
            <a type="button" class="btn btn-success col-md-offset-3 col-sm-offset-3" style="margin-top: 1em"
               id="qrmodalBtn">确认</a>
            <a type="button" class="btn btn-danger" style="margin-left: 4em;margin-top: 1em" id="qxmodalBtn"
               data-dismiss="modal">取消</a>
        </div>
    </div>
</div>

<%@include file="common/footer.jsp" %>
<script type="application/javascript" src="${pageContext.request.contextPath}/statics/js/shopcar.js"></script>
<script type="application/javascript" src="${pageContext.request.contextPath}/statics/js/popup.js"></script>
</body>
</html>
