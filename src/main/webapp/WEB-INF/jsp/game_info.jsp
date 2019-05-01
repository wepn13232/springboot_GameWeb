<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: linqiyuan
  Date: 2019-03-28
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>游戏详情</title>
    <%@include file="common/head.jsp" %>
</head>
<body>
<%@include file="common/header.jsp" %>
<div class="banner-1"></div>
<div class="container-fluid" style="background-color: #fbfbfb">
    <%--游戏图--%>
    <div class="clearfix" style="padding: 1em"></div>
    <div class="game_pic text-center">
        <img src="${pageContext.request.contextPath}/statics/images/gamepic/pic${gameinfoByid.id}.jpg"
             class="img-rounded" style="width: 350px;height: 500px" alt="">
    </div>
    <div class="clearfix" style="padding: 1em 1em"></div>
    <%--游戏简介--%>
    <div class="game_info col-md-12 col-sm-12 ">
        <div class="info col-md-6 col-sm-6  col-md-offset-3 col-sm-offset-3">
            ${gameinfoByid.game_info}
        </div>
    </div>
    <div class="clearfix" style="padding: 1em 1em"></div>

    <%--游戏具体内容--%>
    <div class="game_form col-md-12 col-sm-12 center-block">
        <ul class="list-group col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
            <li class="list-group-item" style="height: 40px">
                <p class="col-md-2 col-md-2">游戏名字：</p>
                <p class="" style="color: #00AFF0">${gameinfoByid.game_name}</p>
            </li>
            <li class="list-group-item" style="height: 40px">
                <p class="col-md-2 col-md-2">游戏价格：</p>
                <p style="color: red">$ ${gameinfoByid.game_price}</p>
            </li>

            <li class="list-group-item" style="height: 40px">
                <p class="col-md-2 col-md-2">最低显卡要求：</p>
                <p style="color: #00AFF0">${gameinfoByid.GPU}</p>
            </li>

            <li class="list-group-item" style="height: 40px">
                <p class="col-md-2 col-md-2">最低CPU要求：</p>
                <p style="color: #00AFF0">${gameinfoByid.cpu}</p>
            </li>

            <li class="list-group-item" style="height: 40px">
                <p class="col-md-2 col-md-2">最低内存要求：</p>
                <p style="color: #00AFF0">${gameinfoByid.memory}</p>
            </li>

            <li class="list-group-item" style="height: 40px">
                <p class="col-md-2 col-md-2">最低系统要求：</p>
                <p style="color: #00AFF0">${gameinfoByid.system}</p>
            </li>

        <c:if test="${!empty gameinfoByid.closing_date}">
            <li class="list-group-item" style="height: 40px">
                <p class="col-md-2 col-md-2">打折剩余时间：</p>
                <p style="color: #00AFF0" class="col-md-3 col-sm-3">
                    <input type="text"  id="hour" value="" disabled>时
                </p>
                <p style="color: #00AFF0" class="col-md-3 col-sm-3 ">
                    <input type="text"  id="minute" value="" disabled>分
                </p>
                <p style="color: #00AFF0" class="col-md-3 col-sm-3">
                    <input type="text"  id="second" value="" disabled>秒
                </p>
            </li>
        </c:if>


        </ul>
    </div>
    <div class="clearfix" style="padding-top: 1em"></div>
        <input type="text" style="display:none" id="end_time" value="${gameinfoByid.closing_date}"/>



        <%--评论专区--%>
        <div id="box" class="comment col-md-12 col-sm-12">
            <c:if test="${!empty comment}">
                <c:forEach var="comments" items="${comment.lists}" >
                    <div class="col-md-12 col-sm-12 comment_content"
                         style="height: 120px;background-color: rgba(237,237,237,0.52);margin: 1em">
                            <%--头像--%>
                        <div class="col-md-12 col-sm-12">
                            <img src="${pageContext.request.contextPath}/statics/images/t1.jpg"
                                 class="img-circle col-md-3 col-sm-3"
                                 style="width: 120px;height: 100px;margin: 10px" alt="">
                            <div class="content col-md-4 col-sm-4" style="margin: 30px 0">
                                <p style="color: #00AFF0">${comments.username}:</p>
                                <p>${comments.comment}</p>
                            </div>
                        </div>
                    </div>

                </c:forEach>
            </c:if>


        </div>
        <c:if test="${!empty comment}">
            <table id="page" class="table" border="0" cellpadding="0" cellspacing="0" width="900px">
                <tr>
                    <td class="td2">
                        <span>第${comment.currPage }/ ${comment.totalPage}页</span>
                        <span>总记录数：${comment.totalCount }  每页显示:${comment.pageSize}</span>

                        <nav aria-label="Page navigation">
                            <ul class="pager">
                                <c:if test="${comment.currPage != 1}">
                                    <li>
                                        <a href="${pageContext.request.contextPath }/user/game_info?id=${requestScope.gameinfoByid.id}&currentPage=1">首页</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath }/user/game_info?id=${requestScope.gameinfoByid.id}&currentPage=${requestScope.comment.currPage-1}">上一页</a>
                                    </li>
                                </c:if>

                                <c:if test="${comment.currPage != comment.totalPage}">
                                    <li>
                                        <a href="${pageContext.request.contextPath }/user/game_info?id=${requestScope.gameinfoByid.id}&currentPage=${requestScope.comment.currPage+1}">下一页</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath }/user/game_info?id=${requestScope.gameinfoByid.id}&currentPage=${requestScope.comment.totalPage}">尾页</a>
                                    </li>
                                </c:if>
                            </ul>
                        </nav>

                    </td>
                </tr>
            </table>
        </c:if>
</div>

<img src="${pageContext.request.contextPath}/statics/images/t1.jpg"
     class="img-circle col-md-3 col-sm-3" data_pic="${pageContext.request.contextPath}/statics/images/t1.jpg"
     style="width: 120px;height: 100px;margin: 10px" alt="" hidden id="comment_pic">

<%@include file="common/footer.jsp" %>
<script type="application/javascript" src="${pageContext.request.contextPath}/statics/js/addComment.js"></script>
<script type="application/javascript" src="${pageContext.request.contextPath}/statics/js/select_time.js"></script>
</body>
</html>
