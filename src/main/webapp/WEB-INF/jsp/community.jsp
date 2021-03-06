<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: linqiyuan
  Date: 2019-03-27
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>详细论坛</title>
    <%@include file="common/head.jsp" %>
</head>
<body>
<%@include file="common/header.jsp" %>

<div class="banner-1"></div>

<%--帖子内容--%>
<div class="container">
    <div class="clearfix" style="padding: 1em"></div>
    <%--列表组--%>
    <c:forEach var="forum" items="${forumList}">
        <div class="list-group">
            <a href="${pageContext.request.contextPath}/findcontent?id=${forum.id}" class="list-group-item lis list-group-item-info">
                <h3 class="list-group-item-heading">${forum.forum_title}</h3>
                <h5 style="padding-top: 5px">发帖人:${forum.username}</h5>
                <p style="overflow: hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;"
                   class="list-group-item-text">${forum.forum_content}</p>
            </a>
        </div>
    </c:forEach>


</div>


<%@include file="common/footer.jsp" %>
</body>
</html>
