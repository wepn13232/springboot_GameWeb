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
        <c:if test="${!empty requestScope.gameinfo}">

            <div class="row col-md-13 col-sm-13">

                <c:forEach var="gameinfo" items="${requestScope.gameinfo.lists}">
                    <div class="col-sm-6 col-md-3 gamebox">
                        <a href="${pageContext.request.contextPath}/user/game_info?id=${gameinfo.id}" target="_blank">
                            <div class="thumbnail boxshodow">
                                <img src="${pageContext.request.contextPath}/statics/images/gamepic/pic${gameinfo.id}.jpg"
                                     alt="通用的占位符缩略图" style="width: 245px;height: 346px">
                                <div class="caption">
                                    <p class="game_info">${gameinfo.game_info}</p>
                                    <div class="text-center">
                                        <p style="color: red;font-size: 2em">
                                            $${gameinfo.game_price}</p>
                                    </div>

                                    <div class="button_shop center-block text-center">
                                        <a class="btn btn-info" href="${pageContext.request.contextPath}/user/###">加入购物车</a>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>
                </c:forEach>

            </div>

        </c:if>

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
                                <a href="${pageContext.request.contextPath }/user/profile?currentPage=1">首页</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath }/user/profile?currentPage=${requestScope.gameinfo.currPage-1}">上一页</a>
                            </li>
                        </c:if>

                        <c:if test="${requestScope.gameinfo.currPage != requestScope.gameinfo.totalPage}">
                            <li>
                                <a href="${pageContext.request.contextPath }/user/profile?currentPage=${requestScope.gameinfo.currPage+1}">下一页</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath }/user/profile?currentPage=${requestScope.gameinfo.totalPage}">尾页</a>
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