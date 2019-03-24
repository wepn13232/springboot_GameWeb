<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: linqiyuan
  Date: 2019-03-06
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JDBC需求</title>
</head>
<body>
<div class="container">
    <form action="${pageContext.request.contextPath}/allUser">
        <div>
            <label>用户名</label>
            <input name="username" type="text">
        </div>
        <div>
            <label>密码</label>
            <input name="password" type="password">
        </div>
        <button type="submit">增加用户</button>
    </form>
    <a href="${pageContext.request.contextPath}/allUser"><button type="button">查看用户</button></a>
    <div class="userinfo">
        <c:forEach var="userinfo" items="#{userinfo}">
            <div>
            用户名:<p>${userinfo.username}</p>
                <a href="${pageContext.request.contextPath}/delectUser"><button>删除用户</button></a>
                <a href="${pageContext.request.contextPath}/updatePwd"><button>更改密码</button></a>
                <br>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
