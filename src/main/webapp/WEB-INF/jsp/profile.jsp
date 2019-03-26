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
    <title>Portfolio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Custom Theme files -->
    <link href="${pageContext.request.contextPath}/statics/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/statics/css/style.css" type="text/css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/statics/css/font-awesome.css" rel="stylesheet">  <!-- font-awesome icons -->
    <link href="${pageContext.request.contextPath}/statics/css/index.css" rel="stylesheet" type="text/css" media="all" /> <!-- filter css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/swipebox.css"> <!-- filter css -->
    <!-- //Custom Theme files -->
    <!-- js -->
    <script src="${pageContext.request.contextPath}/statics/js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!-- web-fonts -->
    <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- //web-fonts -->
</head>
<body>
<!-- header -->

<%@include file="common/header.jsp"%>
<!-- //header -->
<!-- banner -->
<div class="banner-1">
</div>
<!-- //banner -->
<!-- portfolio -->
<div class="portfolio">
    <div class="container">
        <div class="w3ls-title">
            <h3 class="agileits-title w3title1">游戏分类</h3>
        </div>
        <div class="gallery_gds agileits-w3layouts">
            <div class="filtr-container">
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="1" data-sort="Busy streets">
                    <div class="hover ehover14">
                        <a href="${pageContext.request.contextPath}/statics/images/g1.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="${pageContext.request.contextPath}/statics/images/g1.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <h4>Portfolio</h4>
                                <div class="info nullbutton button" data-toggle="modal" data-target="#modal14">查看</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="2" data-sort="Luminous night">
                    <div class="hover ehover14">
                        <a href="${pageContext.request.contextPath}/statics/images/g2.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="${pageContext.request.contextPath}/statics/images/g2.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <h4>Portfolio</h4>
                                <div class="info nullbutton button" data-toggle="modal" data-target="#modal14">Show More</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="3" data-sort="City wonders">
                    <div class="hover ehover14">
                        <a href="${pageContext.request.contextPath}/statics/images/g3.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="${pageContext.request.contextPath}/statics/images/g3.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <h4>Portfolio</h4>
                                <div class="info nullbutton button" data-toggle="modal" data-target="#modal14">Show More</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="3" data-sort="Industrial site">
                    <div class="hover ehover14">
                        <a href="${pageContext.request.contextPath}/statics/images/g4.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="${pageContext.request.contextPath}/statics/images/g4.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <h4>Portfolio</h4>
                                <div class="info nullbutton button" data-toggle="modal" data-target="#modal14">Show More</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="3" data-sort="In production">
                    <div class="hover ehover14">
                        <a href="${pageContext.request.contextPath}/statics/images/g5.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="${pageContext.request.contextPath}/statics/images/g5.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <h4>Portfolio</h4>
                                <div class="info nullbutton button" data-toggle="modal" data-target="#modal14">Show More</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="2" data-sort="Peaceful lake">
                    <div class="hover ehover14">
                        <a href="${pageContext.request.contextPath}/statics/images/g6.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="${pageContext.request.contextPath}/statics/images/g6.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <h4>Portfolio</h4>
                                <div class="info nullbutton button" data-toggle="modal" data-target="#modal14">Show More</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="1" data-sort="Industrial site">
                    <div class="hover ehover14">
                        <a href="${pageContext.request.contextPath}/statics/images/g7.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="${pageContext.request.contextPath}/statics/images/g7.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <h4>Portfolio</h4>
                                <div class="info nullbutton button" data-toggle="modal" data-target="#modal14">Show More</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
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
    $(function() {
        //Initialize filterizr with default options
        $('.filtr-container').filterizr();
    });
</script>
<!--//gallery-->
<!-- swipe box js -->
<script src="${pageContext.request.contextPath}/statics/js/jquery.swipebox.min.js"></script>
<script type="text/javascript">
    jQuery(function($) {
        $(".swipebox").swipebox();
    });
</script>
<!-- //swipe box js -->
<script src="${pageContext.request.contextPath}/statics/js/bootstrap.js"></script>
</body>
</html>