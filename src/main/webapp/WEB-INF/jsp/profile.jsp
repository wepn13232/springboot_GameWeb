<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: linqiyuan
  Date: 2019-03-26
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>游戏商城</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- Custom Theme files -->
    <link href="${pageContext.request.contextPath}/statics/css/bootstrap.css" type="text/css" rel="stylesheet"
          media="all">
    <link href="${pageContext.request.contextPath}/statics/css/style.css" type="text/css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/statics/css/font-awesome.css" rel="stylesheet">
    <!-- font-awesome icons -->
    <link href="${pageContext.request.contextPath}/statics/css/index.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- filter css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/swipebox.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/shopcss.css"> <!-- filter css -->
    <!-- //Custom Theme files -->
    <!-- js -->
    <script src="${pageContext.request.contextPath}/statics/js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!-- web-fonts -->
    <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">
    <!-- //web-fonts -->
</head>
<body>
<!-- header -->

<%@include file="common/header.jsp" %>
<!-- //header -->
<!-- banner -->
<div class="banner-1">
</div>
<!-- //banner -->
<!-- portfolio -->
<div class="portfolio">
    <div class="container">
        <div class="w3ls-title">
            <h3 class="agileits-title w3title1">游戏商城</h3>
        </div>
        <c:if test="${!empty requestScope.gameinfo}">
        <div class="gallery_gds agileits-w3layouts">
            <div class="filtr-container">

                <c:forEach var="gameinfo" items="${requestScope.gameinfo.lists}">
                <div class="thumbnail col-md-3 col-sm-3 col-xs-6 boxshodow">
                    <div class="game_pic">
                        <img src="${pageContext.request.contextPath}/statics/images/gamepic/pic${gameinfo.id}" alt="">
                    </div>
                    <div class="game_content">
                        <p class="game_info">${gameinfo.game_info}</p>
                    </div>
                    <div class="game_price col-md-4 col-md-offset-8">
                        <p style="color: red;font-size: 2em">$${gameinfo.game_price}</p>
                    </div>
                    <div class="col-md-12 col-sm-12 col-md-offset-4">
                        <a class="btn btn-info" href="#">加入购物车</a>
                        <a class="btn btn-default" href="#">查看</a>
                    </div>
                </div>
                </c:forEach>

                <div class="clearfix"></div>
            </div>
        </div>
        </c:if>
    </div>
</div>
<!-- //portfolio -->
<!-- footer -->

<div class="footer-w3copy w3-agileits">
    <p>
        2019.林启元
    </p>
</div>
<!-- //footer -->
<!-- Include jQuery & Filterizr -->
<script src="${pageContext.request.contextPath}/statics/js/jquery.filterizr.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/controls.js"></script>
<!-- Kick off Filterizr -->
<script type="text/javascript">
    $(function () {
        //Initialize filterizr with default options
        $('.filtr-container').filterizr();
    });
</script>
<!--//gallery-->
<!-- swipe box js -->
<script src="${pageContext.request.contextPath}/statics/js/jquery.swipebox.min.js"></script>
<script type="text/javascript">
    jQuery(function ($) {
        $(".swipebox").swipebox();
    });
</script>
<!-- //swipe box js -->
<script src="${pageContext.request.contextPath}/statics/js/bootstrap.js"></script>
</body>
</html>