<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <h1>${forum.forum_title}</h1>
                <div class="clearfix" style="padding: 8px"></div>
                <div class="info col-md-12 col-sm-12 text-center center-block">
                    <h4 class="col-md-3 col-sm-3 col-md-offset-3 col-sm-offset-3">发帖人:${forum.username}</h4>
                    <h4 class="col-md-4 col-sm-4">发帖时间:${forum.date}</h4>
                </div>

            </div>
            <br>
            <br>
            <br>
            <%--文章的内容--%>
            <div class="news_content">
                <p>${forum.forum_content}</p>
            </div>


        </div>
    </div>
</div>


<%@include file="common/footer.jsp"%>
</body>
</html>
