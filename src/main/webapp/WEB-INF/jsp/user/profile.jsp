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
                <%--requestScope通常是在servlet或者action的服务端中通过request.setAttribute()方法把数据放到request对象中供客户端获取，然后客户端获取的方法就是requestScope.getAttribute()--%>
                <c:forEach var="gameinfo" items="${requestScope.gameinfo.lists}">
                        <div class="col-sm-6 col-md-3 gamebox">
                            <a href="${pageContext.request.contextPath}/user/game_info?id=${gameinfo.id}"
                               target="_blank">
                                <div class="thumbnail boxshodow">
                                    <img src="${pageContext.request.contextPath}/statics/images/gamepic/pic${gameinfo.id}.jpg"
                                         alt="通用的占位符缩略图" style="width: 245px;height: 346px">
                                    <div class="caption">
                                        <p class="game_info">${gameinfo.game_info}</p>
                                        <div class="text-center">
                                            <p style="color: red;font-size: 2em">
                                                    $${gameinfo.game_price}</p>
                                        </div>
                                            <%--加入购物车模块--%>
                                        <input type="hidden" data-gamename="${gameinfo.id}" class="game_name" name="game_name" value="${gameinfo.game_name}" >
                                        <input type="hidden" data-gameprice="${gameinfo.id}" class="game_price" name="game_price" value="${gameinfo.game_price}" >
                                        <c:if test="${gameinfo.game_status==null}">
                                            <a type="button" class="button_shop center-block text-center">
                                                <input type="button" data-disable="${gameinfo.id}" class="btn btn-info shopcar_form "  id="${gameinfo.id}"  value="加入购物车"/>
                                            </a>
                                        </c:if>
                                        <c:if test="${gameinfo.game_status==1}">
                                            <a type="button" class="button_shop center-block text-center">
                                                <input type="button"  class="btn btn-success "  value="已购买" disabled>
                                            </a>
                                        </c:if>
                                        <c:if test="${gameinfo.game_status==0}">
                                            <a type="button" class="button_shop center-block text-center">
                                                <input type="button" class="btn btn-warning "  value="已加入购物车" disabled/>
                                            </a>
                                        </c:if>




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

<!-- //footer -->
<%@include file="common/footer.jsp" %>
<script type="application/javascript" src="${pageContext.request.contextPath}/statics/js/shopcar.js"></script>
</body>
</html>