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
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />--%>
    <%--<meta name="keywords" content="" />--%>
    <%--<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>--%>
    <%--<!-- Custom Theme files -->--%>
    <%--<link href="${pageContext.request.contextPath}/statics/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">--%>
    <%--<link href="${pageContext.request.contextPath}/statics/css/style.css" type="text/css" rel="stylesheet" media="all">--%>
    <%--<link href="${pageContext.request.contextPath}/statics/css/font-awesome.css" rel="stylesheet">  <!-- font-awesome icons -->--%>
    <%--<!-- //Custom Theme files -->--%>
    <%--<!-- js -->--%>
    <%--<script src="${pageContext.request.contextPath}/statics/js/jquery-2.2.3.min.js"></script>--%>
    <%--<!-- //js -->--%>
    <%--<!-- web-fonts -->--%>
    <%--<link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">--%>
    <%--<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">--%>
    <!-- //web-fonts -->
</head>
<body>
<!-- header -->
<div class="header">
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header navbar-left wthree">
                <h1><a href="index.html">Edify<span>College Education</span></a></h1>
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
                    <p>Call Us: <span>+00 111 2222 333</span></p>
                    <div id="sb-search" class="sb-search">
                        <form action="#" method="post">
                            <input type="search" class="sb-search-input" name="Search" placeholder="Enter your search term..." id="search" required="">
                            <input class="sb-search-submit" type="submit" value="">
                            <span class="sb-icon-search"> </span>
                        </form>
                        <div class="clearfix"> </div>
                        <!-- search-scripts -->
                        <script src="${pageContext.request.contextPath}/statics/js/classie.js"></script>
                        <script src="${pageContext.request.contextPath}/statics/js/uisearch.js"></script>
                        <script>
                            new UISearch( document.getElementById( 'sb-search' ) );
                        </script>
                        <!-- //search-scripts -->
                    </div>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-left cl-effect-14">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="about.html" class="active">About</a></li>
                        <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="icons.html">Web Icons</a></li>
                                <li><a href="codes.html">Short Codes</a></li>
                            </ul>
                        </li>

                        <li><a href="portfolio.html">Portfolio</a></li>
                        <li><a href="contact.html">Contact Us</a></li>
                    </ul>
                    <div class="clearfix"> </div>
                </div><!-- //navigation -->
            </div>
            <div class="clearfix"> </div>
        </div>
    </nav>
</div>
<!-- //header -->
<!-- banner -->
<div class="banner-1">
</div>
<!-- //banner -->
<!-- about -->
<div class="about">
    <div class="container">
        <div class="w3ls-title">
            <h3 class="agileits-title">About Us</h3>
        </div>
        <div class="about-w3ls-row">
            <div class="col-md-5 about-left">
                <img src="${pageContext.request.contextPath}/statics/images/about.jpg" class="img-responsive" alt=""/>
            </div>
            <div class="col-md-7 about-right">
                <div class="about-agile-row">
                    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class=" nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">About</a></li>
                            <li role="presentation"><a href="#carl" role="tab" id="carl-tab" data-toggle="tab" aria-controls="carl"> History</a></li>
                        </ul>
                        <div class="clearfix"> </div>
                        <div id="myTabContent" class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                                <div class="tabcontent-grids">
                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse
                                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
                                        cupidatat non proident, sunt in culpa qui officia deserunt mollit
                                        anim id est laborum sed lectus tellus, sodales id elit a, feugiat porttitor nulla.</p>
                                    <ul>
                                        <li><i class="fa fa-check-square-o"></i> Sed tincidunt lorem sed </li>
                                        <li><i class="fa fa-check-square-o"></i> Excepteur sint occaecat </li>
                                        <li><i class="fa fa-check-square-o"></i> Duis aute irure dolor in </li>
                                        <li><i class="fa fa-check-square-o"></i> Sed tincidunt lorem sed </li>
                                    </ul>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="carl" aria-labelledby="carl-tab">
                                <div class="tabcontent-grids">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt lorem sed velit fermentum lobortis.Excepteur sint occaecat
                                        cupidatat non proident, sunt in culpa qui officia deserunt mollit, Excepteur sint occaecat
                                        cupidatat non proident, sunt in culpa qui officia deserunt mollit anim
                                        anim id est laborum. Fusce eu semper lacus, eget placerat mauris. Sed lectus tellus, sodales id elit a, feugiat porttitor nulla. Sed porta magna vitae nisl vulputate lacinia. Morbi malesuada sollicitudin tortor, vitae pharetra nunc lacinia eget. Nulla ornare purus nunc, ut dapibus leo sodales adipiscing. Praesent sit amet justo diam. Quisque sagittis egestas sem vitae vestibulum. Quisque nec lacus ornare, volutpat arcu in, lacinia dolor.</p>
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
            <h3>Are You Impressed By Our Work?</h3>
            <p>Nor again is there anyone who loves or pursues or desires to obtain pain.</p>
            <div class="w3btns-agile">
                <a href="contact.html">Get In Touch</a>
            </div>
        </div>
    </div>
</div>
<!-- work end here -->

<!-- team -->
<div class="team agileits-w3layouts">
    <div class="container">

        <div class="w3ls-title">
            <h3 class="agileits-title w3title1">Our Team</h3>
        </div>
        <div class="team-info wthree">
            <div class="col-md-6 team-w3lsgrids">
                <div class="team-left">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/statics/images/t1.jpg" alt="">
                </div>
                <div class="team-right">
                    <h4>Vivamus lias</h4>
                    <p>Itaque earum rerum hic tenetur a sapiente delectus reiciendis maiores alias </p>
                    <div class="social-icon">
                        <a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a>
                        <a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-6 team-w3lsgrids">
                <div class="team-left">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/statics/images/t2.jpg" alt="">
                </div>
                <div class="team-right">
                    <h4>Aliquam fauc </h4>
                    <p>Itaque earum rerum hic tenetur a sapiente delectus reiciendis maiores alias </p>
                    <div class="social-icon">
                        <a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a>
                        <a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="team-info team-row2">
            <div class="col-md-6 team-w3lsgrids">
                <div class="team-left">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/statics/images/t3.jpg" alt="">
                </div>
                <div class="team-right">
                    <h4>Donec nibh </h4>
                    <p>Itaque earum rerum hic tenetur a sapiente delectus reiciendis maiores alias </p>
                    <div class="social-icon">
                        <a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a>
                        <a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-6 team-w3lsgrids">
                <div class="team-left">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/statics/images/t1.jpg" alt="">
                </div>
                <div class="team-right">
                    <h4>Sed augue </h4>
                    <p>Itaque earum rerum hic tenetur a sapiente delectus reiciendis maiores alias </p>
                    <div class="social-icon">
                        <a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a>
                        <a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //team -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="col-md-4 w3layouts_footer_grid">
            <div class="title">
                <h2>Follow Us</h2>
            </div>
            <div class="social-icon social_agileinfo">
                <a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
                <a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a>
                <a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a>
                <a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a>
                <a href="#" class="social-button skype"><i class="fa fa-skype"></i></a>
            </div>
        </div>
        <div class="col-md-8 w3layouts_footer_grid">
            <form action="#" method="post">
                <input type="email" name="Email" placeholder="Enter Your Email..." required="">
                <input type="submit" value="Submit">
                <div class="clearfix"> </div>
            </form>
            <ul class="w3l_footer_nav">
                <li><a href="index.html">Home</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="icons.html">Icons</a></li>
                <li><a href="portfolio.html">Portfolio</a></li>
                <li><a href="contact.html">Contact Us</a></li>
            </ul>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<div class="footer-w3copy w3-agileits">
    <p>Copyright &copy; 2017.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
</div>
<!-- //footer -->

<script src="${pageContext.request.contextPath}/statics/js/bootstrap.js"></script>
</body>
</html>
