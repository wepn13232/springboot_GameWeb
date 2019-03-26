<%--
  Created by IntelliJ IDEA.
  User: linqiyuan
  Date: 2019-03-26
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>购物指南</title>
    <%@include file="common/head.jsp"%>

</head>
<body>
<!-- header -->
<%@include file="common/header.jsp"%>
<!-- //header -->
<!-- banner -->
<div class="banner-1">
</div>
<!-- //banner -->
<!-- about -->
<div class="about">
    <div class="container">
        <div class="w3ls-title">
            <h3 class="agileits-title">购物指南</h3>
        </div>
        <div class="about-w3ls-row">
            <div class="col-md-5 about-left">
                <img src="${pageContext.request.contextPath}/statics/images/about.jpg" class="img-responsive" alt=""/>
            </div>
            <div class="col-md-7 about-right">
                <div class="about-agile-row">
                    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class=" nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Trouble?</a></li>
                            <li role="presentation"><a href="#carl" role="tab" id="carl-tab" data-toggle="tab" aria-controls="carl"> Contact</a></li>
                        </ul>
                        <div class="clearfix"> </div>
                        <div id="myTabContent" class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                                <div class="tabcontent-grids">
                                    <p>如果你还不知道怎么在这个网站混一混，了解一蛤下面的步骤~</p>
                                    <ul>
                                        <li><i class="fa fa-check-square-o"></i> 浏览社区、论坛 </li>
                                        <li><i class="fa fa-check-square-o"></i> 浏览游戏分类区 </li>
                                        <li><i class="fa fa-check-square-o"></i> 挑选你喜欢的游戏 </li>
                                        <li><i class="fa fa-check-square-o"></i> 加入购物车并购买 </li>
                                    </ul>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="carl" aria-labelledby="carl-tab">
                                <div class="tabcontent-grids">
                                    <p>遇到什么问题了吗？都可以联系我们的客服：466214222@qq.com</p>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //about -->
<!-- work start here -->
<div class="work jarallax">
    <div class="container">
        <div class="work-agileinfo">
            <h3>已经有喜欢的游戏?</h3>
            <p>那还等什么！赶紧来了解一蛤！掏出你的钱包！挑选你的游戏！</p>
            <div class="w3btns-agile">
                <a href="${pageContext.request.contextPath}/profile">前往游戏分类</a>
            </div>
        </div>
    </div>
</div>
<!-- work end here -->
<div class="footer-w3copy w3-agileits">
<p>2019.林启元
</p></div>
<!-- //footer -->

<script src="${pageContext.request.contextPath}/statics/js/bootstrap.js"></script>
</body>
</html>
