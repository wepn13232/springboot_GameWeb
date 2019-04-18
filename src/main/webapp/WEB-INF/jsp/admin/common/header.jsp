<%--
  Created by IntelliJ IDEA.
  User: linqiyuan
  Date: 2019-03-26
  Time: 23:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    .pointer{
        cursor: pointer;
    }
</style>
<div class="header">
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header navbar-left wthree">
                <h1><a href="${pageContext.request.contextPath}/index">You3Dm<span>Gamer Heaven</span></a></h1>
            </div>
            <!-- navigation -->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="header-right wthree">
                <div class="top-nav-text">

                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-left cl-effect-14">
                        <li><a href="${pageContext.request.contextPath}/admin/index">主页</a></li>
                        <li><a href="${pageContext.request.contextPath}/admin/profile">游戏商城</a></li>
                        <li><a href="${pageContext.request.contextPath}/admin/about">社区论坛</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                管理
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a id="changePrice"  class="pointer">修改游戏价格</a></li>
                                <li><a id="tieziManage"  class="pointer">论坛帖子管理</a></li>
                                <li><a id="logout"  class="pointer">注销</a></li>
                            </ul>

                        </li>
                    </ul>
                    <div class="clearfix"> </div>
                </div><!-- //navigation -->
            </div>
            <div class="clearfix"> </div>
        </div>
    </nav>
</div>

