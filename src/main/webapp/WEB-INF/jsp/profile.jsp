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
    <%@include file="common/head.jsp"%>

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
                        <script src="js/classie.js"></script>
                        <script src="js/uisearch.js"></script>
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
                        <li><a href="about.html">About</a></li>
                        <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="icons.html">Web Icons</a></li>
                                <li><a href="codes.html">Short Codes</a></li>
                            </ul>
                        </li>

                        <li><a href="portfolio.html" class="active">Portfolio</a></li>
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
<!-- portfolio -->
<div class="portfolio">
    <div class="container">
        <div class="w3ls-title">
            <h3 class="agileits-title w3title1">Portfolio</h3>
        </div>
        <div class="gallery_gds agileits-w3layouts">
            <ul class="simplefilter">
                <li class="active" data-filter="all">All</li>
                <li data-filter="1">Category 1</li>
                <li data-filter="2">Category 2</li>
                <li data-filter="3">Category 3</li>
            </ul>
            <div class="filtr-container">
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="1" data-sort="Busy streets">
                    <div class="hover ehover14">
                        <a href="images/g1.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="images/g1.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <h4>Portfolio</h4>
                                <div class="info nullbutton button" data-toggle="modal" data-target="#modal14">Show More</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="2" data-sort="Luminous night">
                    <div class="hover ehover14">
                        <a href="images/g2.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="images/g2.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <h4>Portfolio</h4>
                                <div class="info nullbutton button" data-toggle="modal" data-target="#modal14">Show More</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="3" data-sort="City wonders">
                    <div class="hover ehover14">
                        <a href="images/g3.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="images/g3.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <h4>Portfolio</h4>
                                <div class="info nullbutton button" data-toggle="modal" data-target="#modal14">Show More</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="3" data-sort="Industrial site">
                    <div class="hover ehover14">
                        <a href="images/g4.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="images/g4.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <h4>Portfolio</h4>
                                <div class="info nullbutton button" data-toggle="modal" data-target="#modal14">Show More</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="3" data-sort="In production">
                    <div class="hover ehover14">
                        <a href="images/g5.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="images/g5.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <h4>Portfolio</h4>
                                <div class="info nullbutton button" data-toggle="modal" data-target="#modal14">Show More</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="2" data-sort="Peaceful lake">
                    <div class="hover ehover14">
                        <a href="images/g6.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="images/g6.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <h4>Portfolio</h4>
                                <div class="info nullbutton button" data-toggle="modal" data-target="#modal14">Show More</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="1" data-sort="Industrial site">
                    <div class="hover ehover14">
                        <a href="images/g7.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="images/g7.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <h4>Portfolio</h4>
                                <div class="info nullbutton button" data-toggle="modal" data-target="#modal14">Show More</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="1" data-sort="In production">
                    <div class="hover ehover14">
                        <a href="images/g8.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="images/g8.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <h4>Portfolio</h4>
                                <div class="info nullbutton button" data-toggle="modal" data-target="#modal14">Show More</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 filtr-item" data-category="2, 4" data-sort="Peaceful lake">
                    <div class="hover ehover14">
                        <a href="images/g9.jpg" class="swipebox" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
                            <img src="images/g9.jpg" alt="" class="img-responsive" />
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
<!-- Include jQuery & Filterizr -->
<script src="js/jquery.filterizr.js"></script>
<script src="js/controls.js"></script>
<!-- Kick off Filterizr -->
<script type="text/javascript">
    $(function() {
        //Initialize filterizr with default options
        $('.filtr-container').filterizr();
    });
</script>
<!--//gallery-->
<!-- swipe box js -->
<script src="js/jquery.swipebox.min.js"></script>
<script type="text/javascript">
    jQuery(function($) {
        $(".swipebox").swipebox();
    });
</script>
<!-- //swipe box js -->
<script src="js/bootstrap.js"></script>
</body>
</html>
