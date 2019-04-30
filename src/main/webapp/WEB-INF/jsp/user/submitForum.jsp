<%--
  Created by IntelliJ IDEA.
  User: linqiyuan/林启元
  Date: 2019-04-30
  Time: 10:28
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发表帖子</title>
    <%@include file="common/head.jsp" %>
</head>
<body>
<%@include file="common/header.jsp" %>
<div class="banner-1"></div>

<%--帖子面板--%>
<div class="container">
    <div class="clearfix" style="padding: 2em"></div>
    <div class="forum_title col-md-offset-2">
        <form class="form-inline" action="${pageContext.request.contextPath}/user/submit">
            <h4 class="col-md-5 col-sm-5" style="width: 400px">游戏板块：${games.game_name}</h4>
            <div class="clearfix" style="padding: 1em"></div>
            <h4 class="col-md-2 col-sm-2" style="width: 100px">标题：</h4>
            <label>
                <input class="col-md-6 col-sm-6 form-control" id="forum_title" name="forum_title"
                       style="width: 600px;height: 30px" required>
            </label>
            <div class="clearfix" style="padding: 1em"></div>
            <div class="forum_content">
                <h4 class="col-md-2 col-sm-2" style="width: 100px">内容：</h4>
                <label>
                    <textarea class="col-md-6 col-sm-6 form-control" id="forum_content" name="forum_content" rows="20"
                              style="width: 600px"></textarea>
                </label>
            </div>

            <div class="clearfix" style="padding: 1em"></div>

            <input type="submit" class="btn btn-success col-md-offset-8 col-sm-offset-5" value="发表">

            <label>
                <input type="text" id="game_id" name="game_id" value="${game_id}" hidden>
            </label>
            <input type="text" hidden value="${usersession.username}" id="username" name="username">
        </form>
    </div>


    <div class="clearfix" style="padding: 1em"></div>
</div>

<%@include file="common/footer.jsp" %>
</body>
</html>
