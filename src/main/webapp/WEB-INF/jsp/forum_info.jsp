<%--
  Created by IntelliJ IDEA.
  User: linqiyuan
  Date: 2019-04-17
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>攻略</title>
    <%@include file="common/head.jsp"%>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/tiezi.css">

</head>
<body>
<%@include file="common/header.jsp"%>
<div class="banner-1 col-md-12 col-sm-12">
    <div class="whiteblock  center-block">
    </div>
</div>

<%--新闻界面模块--%>
<div class="wallpaper" id="wallpaper">
    <div class="container">
        <div class="content">
            <%--文章的标题--%>
            <div class="title" style="text-align: center">
                <h1>《彩虹六号：围攻》新进打法</h1>
                <div class="clearfix" style="padding: 8px"></div>
                <div class="info col-md-12 col-sm-12 text-center center-block">
                    <h4 class="col-md-3 col-sm-3 col-md-offset-3 col-sm-offset-3">发帖人:PostMalone</h4>
                    <h4 class="col-md-3 col-sm-3">发帖时间:2019</h4>
                </div>

            </div>
            <br>
            <br>
            <br>
            <%--文章的内容--%>
            <div class="news_content">
                <p>Rush B 就对了</p>
            </div>


        </div>
    </div>
</div>

<%@include file="common/footer.jsp"%>
</body>
</html>
