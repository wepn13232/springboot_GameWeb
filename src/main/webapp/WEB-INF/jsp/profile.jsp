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
   <%@include file="common/head.jsp"%>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/shopcss.css">
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
        <%--如果gamelist不为空,显示查询的游戏，gamelist是方法c层findgame用model传过来的值--%>
        <c:if test="${!empty gamelist}">
           <div class="row col-md-13 col-sm-13">
                <c:forEach var="game" items="${gamelist}">
                    <div class="col-sm-6 col-md-3 gamebox">
                        <a href="${pageContext.request.contextPath}/game_info?id=${game.id}" target="_blank">
                            <div class="thumbnail boxshodow">
                                    &lt;%&ndash;打折符号&ndash;%&gt;
                                <c:if test="${game.status==1}">
                                    <img  src="${pageContext.request.contextPath}/statics/images/sale.png" id="discountPic" style="width: 100px;height: 100px;position:absolute;margin-left: 135px" alt="">
                                </c:if>
                                <img src="${pageContext.request.contextPath}/statics/images/gamepic/pic${game.id}.jpg"
                                     alt="通用的占位符缩略图" style="width: 245px;height: 346px">
                                <div class="caption">
                                    <p class="game_info">${game.game_info}</p>
                                    <div class="text-center">
                                        <p style="color: red;font-size: 2em">
                                            $${game.game_price}</p>
                                    </div>
                                    <div class="button_shop center-block text-center">
                                        <a class="btn btn-info" href="${pageContext.request.contextPath}/user/addshopcar">加入购物车</a>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </c:if>

        <%--如果gamelist为空,显示分页--%>
<c:if test="${empty gamelist}">
        <c:if test="${!empty requestScope.gameinfo}">
            <div class="row col-md-13 col-sm-13">
                <c:forEach var="gameinfo" items="${requestScope.gameinfo.lists}">
                    <div class="col-sm-6 col-md-3 gamebox">
                        <a href="${pageContext.request.contextPath}/game_info?id=${gameinfo.id}" target="_blank">
                            <div class="thumbnail boxshodow">
                                    <%--打折符号--%>
                                <c:if test="${gameinfo.status==1}">
                                    <img  src="${pageContext.request.contextPath}/statics/images/sale.png" id="discountPic" style="width: 100px;height: 100px;position:absolute;margin-left: 135px" alt="">
                                </c:if>
                                <img src="${pageContext.request.contextPath}/statics/images/gamepic/pic${gameinfo.id}.jpg"
                                     alt="通用的占位符缩略图" style="width: 245px;height: 346px">
                                <div class="caption">
                                    <p class="game_info">${gameinfo.game_info}</p>
                                    <div class="text-center">
                                        <p style="color: red;font-size: 2em">
                                            $${gameinfo.game_price}</p>
                                    </div>

                                    <div class="button_shop center-block text-center">
                                        <a class="btn btn-info" href="${pageContext.request.contextPath}/user/addshopcar">加入购物车</a>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>
                </c:forEach>

            </div>

        </c:if>
</c:if>

        <%--搜索框--%>
        <div class="search col-md-12 col-sm-12" style="width: 100%;margin: 0 auto">
            <form class="form-inline center-block" >
                <input type="text" class="form-control" id="form_content" style="width: 400px;margin-left: 580px" value=""
                      name="form_content" required placeholder="请输入想搜索的游戏"/>

                <button class="btn btn-primary col-md-1 col-md-2" style="float: right" href="${pageContext.request.contextPath}/findgame">查询</button>
                <%--<input type="button" value="查询" class="btn btn-primary col-md-1 col-md-2 form_submit" style="float: right">--%>
            </form>
            <span id="msg" style="margin-left: 52%;color: red" >${msg}</span>
        </div>

        <div class="clearfix" style="padding: 2em"></div>

    </div>


    <table class="table" border="0" cellpadding="0" cellspacing="0" width="900px">
        <tr>
            <td class="td2">
                <span>第${requestScope.gameinfo.currPage }/ ${requestScope.gameinfo.totalPage}页</span>
                <span>总记录数：${requestScope.gameinfo.totalCount }  每页显示:${requestScope.gameinfo.pageSize}</span>

                <nav aria-label="Page navigation">
                    <ul class="pager">
                        <c:if test="${requestScope.gameinfo.currPage != 1}">
                            <li>
                                <a href="${pageContext.request.contextPath }/profile?currentPage=1">首页</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath }/profile?currentPage=${requestScope.gameinfo.currPage-1}">上一页</a>
                            </li>
                        </c:if>

                        <c:if test="${requestScope.gameinfo.currPage != requestScope.gameinfo.totalPage}">
                            <li>
                                <a href="${pageContext.request.contextPath }/profile?currentPage=${requestScope.gameinfo.currPage+1}">下一页</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath }/profile?currentPage=${requestScope.gameinfo.totalPage}">尾页</a>
                            </li>
                        </c:if>
                    </ul>
                </nav>

            </td>
        </tr>
    </table>

    <div class="clearfix"></div>
</div>
<!-- //portfolio -->
<!-- footer -->

<div class="footer-w3copy w3-agileits">
    <p>
        2019.林启元
    </p>
</div>

<script src="${pageContext.request.contextPath}/statics/js/bootstrap.js"></script>
<script type="application/javascript" src="${pageContext.request.contextPath}/statics/js/shopcar.js"></script>
<%--<script type="application/javascript" src="${pageContext.request.contextPath}/statics/js/game_select.js"></script>--%>
</body>
</html>