<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: linqiyuan
  Date: 2019-03-26
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>社区论坛</title>
    <%@include file="common/head.jsp" %>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/aboutCss.css">

</head>
<body>
<!-- header -->
<%@include file="common/header.jsp" %>
<!-- //header -->
<!-- banner -->
<div class="banner-1">
</div>
<!-- //banner -->
<!-- about -->
<div class="about">
    <div class="container">
        <div class="w3ls-title">
            <h3 class="agileits-title">社区论坛</h3>
        </div>
        <%--论坛内容区--%>
        <div class="container-fluid">
            <div class="content">

                <c:if test="${!empty gamesinfo}">
                    <div class="row">
                        <c:forEach var="gameinfo" items="${gamesinfo}">
                            <a href="${pageContext.request.contextPath}/showforum?game_id=${gameinfo.id}"
                               class="col-md-3 col-sm-3 col-md-6 game_a" target="_blank">
                                <div class="content_div">
                                    <h5 style="color: #00AFF0">${gameinfo.game_name}</h5>
                                    <p class="content_p">${gameinfo.game_info}</p>
                                </div>
                                <div class="clearfix" style="margin-bottom: 1em"></div>

                            </a>
                        </c:forEach>
                        <div class="clearfix" style="margin-bottom: 4em"></div>

                    </div>

                </c:if>

                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!-- //about -->
<!-- work start here -->
<div class="work jarallax">
    <div class="container">
        <div class="work-agileinfo">
            <h3>已经有喜欢的游戏?</h3>
            <p>那还等什么！赶紧来了解一蛤！掏出你的钱包！挑选你的游戏！</p>
            <div class="w3btns-agile">
                <a href="${pageContext.request.contextPath}/profile">前往游戏商城</a>
            </div>
        </div>
    </div>
</div>
<!-- work end here -->
<%@include file="common/footer.jsp" %>
</body>
</html>
