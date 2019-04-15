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
    <%@include file="common/head.jsp" %>
</head>
<body>
<%@include file="common/header.jsp" %>
<div class="banner-1"></div>

<%--用户信息界面--%>
<div class="container">
    <%--头像标题--%>
    <div class="col-md-12 col-sm-12" style="height: 120px;background-color: rgba(237,237,237,0.52);margin: 1em">
        <%--头像--%>
        <div class="col-md-12 col-sm-12">
            <img src="${pageContext.request.contextPath}/statics/images/t1.jpg" class="img-circle col-md-3 col-sm-3"
                 style="width: 120px;height: 100px;margin: 10px" alt="">
            <div class="content col-md-8 col-sm-8" style="margin: 20px 0">
                <p class="col-md-3 col-sm-3" STYLE="margin-top: 13px">用户名：${usersession.username}</p>
                <div class="col-md-5 col-sm-5 col-md-offset-3">
                    <p style="width: 130px;margin-top: 13px;position:absolute;">游戏总价值：</p>
                    <p style="color: red;font-size: 2em;height: 20px;position:absolute;margin-left: 100px"
                       >${sumGamePrice}</p>
                </div>
                <div class="clearfix" style="padding: 7px"></div>
                <p class="col-md-3 col-sm-3">余额：${cashLeft}</p>
            </div>

        </div>
    </div>
    <div class="clearfix" style="padding: 2em"></div>

    <h4 style="padding-left: 1em;color: #00AFF0">你拥有的游戏</h4>
    <div class="col-md-12 col-sm-12" style="background-color: rgba(237,237,237,0.52);margin: 1em">
        <div class="col-md-12 col-sm-12" style="padding: 1em">

            <%--游戏块--%>
            <c:if test="${!empty requestScope.userGameInfo}">
                <c:forEach var="usergameinfo" items="${requestScope.userGameInfo}">
                    <div class="col-md-3 col-sm-4">
                        <a href="${pageContext.request.contextPath}/user/game_info?id=${usergameinfo.id}"
                           class="thumbnail text-center">
                            <img src="${pageContext.request.contextPath}/statics/images/gamepic/pic${usergameinfo.id}.jpg"
                                 style="width: 230px;height: 325px" class="img-rounded" alt="">
                            <p>${usergameinfo.game_name}</p>
                        </a>
                    </div>
                </c:forEach>
            </c:if>


        </div>
    </div>

</div>

<%@include file="common/footer.jsp" %>
</body>
</html>
