<%--
  Created by IntelliJ IDEA.
  User: linqiyuan
  Date: 2019-03-28
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>游戏详情</title>
    <%@include file="common/head.jsp" %>
</head>
<body>
<%@include file="common/header.jsp" %>
<div class="banner-1"></div>
<div class="container-fluid" style="background-color: #fbfbfb">
    <%--游戏图--%>
    <div class="clearfix" style="padding: 1em"></div>
    <div class="game_pic text-center">
        <img src="${pageContext.request.contextPath}/statics/images/gamepic/pic${gameinfoByid.id}.jpg"
             class="img-rounded" style="width: 350px;height: 500px" alt="">
    </div>
    <div class="clearfix" style="padding: 1em 1em"></div>
    <%--游戏简介--%>
    <div class="game_info col-md-12 col-sm-12 ">
        <div class="info col-md-6 col-sm-6  col-md-offset-3 col-sm-offset-3">
            ${gameinfoByid.game_info}
        </div>
    </div>
        <div class="clearfix" style="padding: 1em 1em"></div>

    <%--游戏具体内容--%>
    <div class="game_form col-md-12 col-sm-12 center-block">
        <ul class="list-group col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
            <li class="list-group-item" style="height: 40px">
                <p class="col-md-2 col-md-2">游戏名字：</p>
                <p class="" style="color: #00AFF0">${gameinfoByid.game_name}</p>
            </li>
            <li class="list-group-item" style="height: 40px">
                <p class="col-md-2 col-md-2">游戏价格：</p>
                <p style="color: red">$ ${gameinfoByid.game_price}</p>
            </li>

            <li class="list-group-item" style="height: 40px">
                <p class="col-md-2 col-md-2">最低显卡要求：</p>
                <p style="color: #00AFF0">${gameinfoByid.GPU}</p>
            </li>

            <li class="list-group-item" style="height: 40px">
                <p class="col-md-2 col-md-2">最低CPU要求：</p>
                <p style="color: #00AFF0">${gameinfoByid.cpu}</p>
            </li>

            <li class="list-group-item" style="height: 40px">
                <p class="col-md-2 col-md-2">最低内存要求：</p>
                <p style="color: #00AFF0">${gameinfoByid.memory}</p>
            </li>

            <li class="list-group-item" style="height: 40px">
                <p class="col-md-2 col-md-2">最低系统要求：</p>
                <p style="color: #00AFF0">${gameinfoByid.system}</p>
            </li>


        </ul>
    </div>
    <div class="bt _group" style="margin: 0 auto;width: 200px">
        <a href="${pageContext.request.contextPath}/user/###"
           class="btn btn-success " style="margin-left: 25px">购买</a>
        <a href="${pageContext.request.contextPath}/user/###"
           class="btn btn-info" style="margin-left: 10px; ">加入购物车</a>
    </div>
    <div class="clearfix" style="padding-top: 1em"></div>
</div>
<%@include file="common/footer.jsp" %>
</body>
</html>
