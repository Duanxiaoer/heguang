<%@ page import="heguang.org.cn.DB" %><%--
  Created by IntelliJ IDEA.
  User: duanqifeng
  Date: 2019/1/13
  Time: 11:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zxx">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico" />
    <title></title>
    <!-- Bootstrap core CSS -->
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Font  -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600,700|Raleway:400,400i,500i,600,700" rel="stylesheet">
    <!-- flaticon icon -->
    <link rel="stylesheet" href="assets/fonts/icon-font.min.css">
    <!-- icofont icon -->
    <link rel="stylesheet" href="assets/fonts/icofont.css">
    <!--- meanmenu Css-->
    <link rel="stylesheet" href="assets/css/meanmenu.min.css" media="all" />
    <!-- animate CSS -->
    <link rel="stylesheet" href="assets/css/animate.css">
    <!--- owl carousel Css-->
    <link rel="stylesheet" href="assets/owlcarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/owlcarousel/css/owl.theme.default.min.css">
    <!-- venobox -->
    <link rel="stylesheet" href="assets/venobox/css/venobox.css" />
    <!-- Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- Responsive  CSS -->
    <link rel="stylesheet" href="assets/css/responsive.css">
</head>

<body>

<!-- START PRELOADER -->
<div id="page-preloader">
    <div class="preloader-wrench"></div>
</div>
<!-- END PRELOADER -->


<!-- START HEADER SECTION -->
<header class="main-header header-1">
    <!-- START TOP AREA -->
    <div class="top-area">
        <div class="auto-container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12 col-12">
                    <div class="header-social">
                        <ul>
                            <li><a href="#"><i class="icofont icofont-social-wechat"></i></a></li>
                            <li><a href="#"><i class="icofont icofont-social-weibo"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-lg-8 col-md-12 col-sm-12 col-12">
                    <div class="info-menu">
                        <ul>
                            <%

                                DB db = new DB();
                                db.connectToDB();

                                String name = "游客";
                                String email = "游客";
                                if (session.getAttribute("name")!=null && session.getAttribute("email")!=null){
                                    name = (String) session.getAttribute("name");
                                    email = (String) session.getAttribute("email");

                            %>
                            <li><a href="myself.jsp?email=<%=email%>"><%=name%></a></li>
                            <li><a href="#footer">联系我们 </a></li>
                            <%
                                if (session.getAttribute("admin")!=null){

                            %>
                            <li><a href="../admin/home_menu.html">管理</a></li>
                            <%

                            }else if (session.getAttribute("zxsName")!=null){
                            %>
                            <li><a href="../zxs/zxs.jsp">管理</a></li>
                            <%
                                }

                            } else{
                            %>
                            <li><a href="../login/login.html">登录</a></li>
                            <li><a href="../login/signup.html">注册</a></li>
                            <li><a href="#footer">联系我们 </a></li>
                            <%
                                }
                            %>

                        </ul>
                    </div>
                </div>
                <!-- end col -->
            </div>
        </div>
    </div>
    <!-- END TOP AREA -->

    <!-- START LOGO AREA -->
    <div class="logo-area">
        <div class="auto-container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 col-7 mx-md-auto mx-sm-auto mx-auto pl-0">
                    <div class="logo">
                        <a href="index.jsp">
                            <img class="img-fluid" src="assets/img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-lg-9 col-md-12 col-sm-12 col-12">
                    <div class="header-info-box">
                        <div class="header-info-icon"><span class="lnr lnr-phone-handset"></span></div>
                        <p>联系客服</p>
                        <h6>123-456-0975</h6>
                    </div>
                    <div class="header-info-box">
                        <div class="header-info-icon"><span class="lnr lnr-map-marker"></span></div>
                        <p>上班时间</p>
                        <h6>Mon - Sun : 09:00 - 18:00</h6>
                    </div>
                    <div class="header-info-box">
                        <a class="header-quote-btn" href="doctors.jsp">立即预约 <i class="icofont icofont-caret-right"></i></a>
                    </div>
                </div>
                <!-- end col -->
            </div>
        </div>
    </div>
    <!-- END LOGO AREA -->

    <!-- START NAVIGATION AREA -->
    <div class="sticky-menu">
        <div class="mainmenu-area">
            <div class="auto-container">
                <div class="row">
                    <div class="col-lg-9 d-lg-block d-md-none d-sm-none d-none ">
                        <nav class="navbar navbar-expand-lg justify-content-left">
                            <ul class="navbar-nav">
                                <li><a href="isLogged.jsp" class="nav-link">主页</a></li>
                                <li class="dropdown"><a href="about.jsp" class="nav-link">关于我们</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="about.jsp">关于和光</a></li>
                                        <li><a href="doctors.jsp">团队</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="services.jsp" class="nav-link">业务范围</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#services-xlfw">临床心理服务</a></li>
                                        <li><a href="#services-train">临床心理训练</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#" class="nav-link">服务</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="appointment.jsp">预约</a></li>
                                        <li><a href="testimonial.jsp">测试</a></li>
                                    </ul>
                                </li>
                                <li><a href="news.jsp" class="nav-link">新闻</a></li>
                                <li><a href="contact.jsp" class="nav-link">加入我们</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3 col-md-12 d-lg-block d-md-none d-none">
                        <nav class="navbar navbar-expand-lg justify-content-end">
                            <ul class="navbar-nav">
                                <li class="dropdown quick-search"><a href="#" class="nav-link">我想</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="doctors.jsp"><i class="icofont icofont-doctor-alt"></i> 找位医师</a></li>
                                        <li><a href="#"><i class="icofont icofont-medical-sign"></i> 预定测试</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!--- END CONTAINER -->
        </div>
        <!-- END NAVIGATION AREA -->

        <!-- MOBILE-MENU-AREA START -->
        <div class="mobile-menu-area d-lg-none d-md-block d-sm-block d-block">
            <div class="col-md-9">
                <div class="mobile-menu">
                    <nav id="dropdown">
                        <ul class="navbar-nav">
                            <li><a href="index.jsp">主页</a>
                                <ul>
                                    <li><a href="index.jsp">Home 1</a></li>
                                    <li><a href="map.html">Home 2</a></li>
                                    <li><a href="index-3.html">Home 3</a></li>
                                    <li><a href="index-4.html">Home 4</a></li>
                                </ul>
                            </li>
                            <li><a href="about.jsp">关于我们</a>
                                <ul>
                                    <li><a href="about.jsp">关于和光</a></li>
                                    <li><a href="doctors.jsp">团队</a></li>
                                    <li><a href="single-doctor.jsp">医师列表</a></li>
                                </ul>
                            </li>
                            <li><a href="services.jsp">业务范围</a>
                                <ul>
                                    <li><a href="services.jsp">Our All Services</a></li>
                                    <li><a href="single-service.jsp">Accident & Emergency</a></li>
                                    <li><a href="single-service.jsp">Health checks</a></li>
                                    <li><a href="single-service.jsp">Home Care</a></li>
                                    <li><a href="single-service.jsp">Diabetes & Endocrinology</a></li>
                                </ul>
                            </li>
                            <li><a href="news.jsp">风采</a></li>
                            <li><a href="#">服务</a>
                                <ul>
                                    <li><a href="appointment.jsp">预约</a></li>
                                    <li><a href="testimonial.jsp">测试</a></li>
                                    <li><a href="new-patient.jsp">就诊</a></li>
                                    <li><a href="faq.jsp">疑问</a></li>
                                    <li><a href="reports.jsp">就诊报告</a></li>
                                    <li><a href="404.jsp">404 Page</a></li>
                                </ul>
                            </li>
                            <li><a href="blog.jsp">新闻</a>
                                <ul>
                                    <li><a href="blog.jsp">Blog</a></li>
                                    <li><a href="blog.jsp">Blog Single</a></li>
                                </ul>
                            </li>
                            <li><a href="contact.jsp">联系我们</a></li>
                            <li><a href="#">我想</a>
                                <ul>
                                    <li><a href="#"><i class="icofont icofont-doctor-alt"></i> 找位医师</a></li>
                                    <li><a href="#"><i class="icofont icofont-ui-calendar"></i> 预约医师</a></li>
                                    <li><a href="#"><i class="icofont icofont-medical-sign"></i> 预定测试</a></li>
                                    <li><a href="#"><i class="icofont icofont-prescription"></i> 申请报告</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- MOBILE-MENU-AREA END -->
    </div>
</header>
<!-- END HEADER SECTION -->




<!-- START PAGE BANNER AND BREADCRUMBS -->
<section class="single-page-title-area" data-background="assets/img/bg/heading.png">
    <div class="auto-container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-12 col-12">
                <div class="single-page-title">
                    <h2>FAQ</h2>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#"><span class="lnr lnr-home"></span></a></li>
                    <li class="breadcrumb-item">Pages</li>
                    <li class="breadcrumb-item active">Questions</li>
                </ol>
            </div>
        </div>
        <!-- end row-->
    </div>
</section>
<!-- END PAGE BANNER AND BREADCRUMBS -->


<!-- START FAQ SECTION -->
<section id="faq" class="section-padding">
    <div class="auto-container">
        <div class="row">
            <div class="col-lg-7 text-center mx-auto">
                <div class="section-title">
                    <h3>Cleveland Support</h3>
                    <span class="line"></span>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit <br> labore et dolore magna aliqua.</p>
                </div>
            </div>
            <!-- end section title -->
        </div>
        <div class="row mb-5">
            <div class="col-lg-6 col-md-6 col-sm-12 col-12 mb-4">
                <div class="single-support">
                    <div class="single-support-icon">
                        <i class="icofont icofont-brand-designfloat"></i>
                    </div>
                    <div class="single-support-info">
                        <h5>General Support</h5>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam.</p>
                        <a class="faq-into-btn" href="#">Get Support</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                <div class="single-support">
                    <div class="single-support-icon">
                        <i class="icofont icofont-brand-delicious"></i>
                    </div>
                    <div class="single-support-info">
                        <h5>Getting started</h5>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam.</p>
                        <a class="faq-into-btn" href="#">Visit Forum</a>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="row mt-5">
            <div class="col-lg-7 text-center mx-auto">
                <div class="section-title">
                    <h3>Frequently Asked Question</h3>
                    <span class="line"></span>
                </div>
            </div>
            <!-- end section title -->
        </div>
        <div class="row mb-5">
            <div class="col-lg-6 col-md-6 col-sm-12 col-12 pr-lg-5 pr-md-5 pr-sm-0 pr-0 mb-lg-0 mb-md-0 mb-sm-2 mb-2">
                <div class="panel-group faq-home-accor" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <i class="icofont icofont-thin-down"></i> <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#panel1">What kind of facilities does your Patient?</a>
                            </h5>
                        </div>
                        <div id="panel1" class="panel-collapse collapse show">
                            <div class="panel-body">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <i class="icofont icofont-thin-right"></i> <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#panel2">Is there any charges to pay to avail services?</a>
                            </h5>
                        </div>
                        <div id="panel2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <i class="icofont icofont-thin-right"></i> <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#panel3">What should I bring with me?</a>
                            </h5>
                        </div>
                        <div id="panel3" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <i class="icofont icofont-thin-right"></i> <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#panel4">Do your support staff speak English?</a>
                            </h5>
                        </div>
                        <div id="panel4" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-12 pr-lg-5 pr-md-5 pr-sm-0 pr-0 mb-lg-0 mb-md-0 mb-sm-5 mb-5">
                <div class="panel-group faq-home-accor" id="accordion2">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <i class="icofont icofont-thin-right"></i> <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion2" href="#panel5">Can I donate my organ?</a>
                            </h5>
                        </div>
                        <div id="panel5" class="panel-collapse collapse show">
                            <div class="panel-body">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <i class="icofont icofont-thin-down"></i> <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#panel6"> Which organs can I donate?</a>
                            </h5>
                        </div>
                        <div id="panel6" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <i class="icofont icofont-thin-right"></i> <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion2" href="#panel7">Do I have to register myself for organ donation?</a>
                            </h5>
                        </div>
                        <div id="panel7" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <i class="icofont icofont-thin-right"></i> <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion2" href="#panel8">Am I too old to donate any of my organs??</a>
                            </h5>
                        </div>
                        <div id="panel8" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="row mt-5">
            <div class="col-lg-7 text-center mx-auto section-title-faq">
                <div class="section-title">
                    <h3>Still no luck? We can help!</h3>
                    <span class="line"></span>
                    <a class="submit-req-btn" href="#">Submit a request</a>
                    <p>Contact us and we’ll get back to you as soon as possible.</p>
                </div>
            </div>
            <!-- end section title -->
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-12 border p-3 wow fadeInLeft">
                <div class="single-support">
                    <div class="single-support-icon custom-color-1">
                        <i class="icofont icofont-envelope"></i>
                    </div>
                    <div class="single-support-info">
                        <h5>Find Us On Email</h5>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-12 border p-3 wow fadeInRight">
                <div class="single-support">
                    <div class="single-support-icon custom-color-2">
                        <i class="icofont icofont-social-twitter"></i>
                    </div>
                    <div class="single-support-info">
                        <h5>Find Us On Twitter</h5>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--- END CONTAINER -->
</section>
<!-- END FAQ SECTION -->


<!-- START FOOTER -->
<footer>
    <!--Footer top -->
    <div class="footer-top overlay-2 section-back-image-2" data-background="assets/img/bg/counter-bg.jpg">
        <div class="auto-container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-12 col-12  mb-lg-0 mb-md-4 mb-sm-5 mb-5 footer-widget">
                    <div class="footer-section-title col-12 p-0 mb-4">
                        <h5>关于和光</h5>
                    </div>
                    <!-- end widget title -->
                    <div class="about">
                        <p>四川和光临床心理学研究院成立于2016年9月，是合法注册的临床心理学专业研究机构。研究院以促进大众心理健康和构建和谐社会为愿景，集国内外精神分析领域的专业资源与专业人才之力，努力发展成为国内一流的临床服务、人才培养和学术交流的中心。</p>
                        <p>研究院拥有一支专业的心理咨询师、心理督导师、精神分析师队伍，拥有一批国内外高水平的临床心理学教员。与美国、加拿大、以色列等国家的多个精神分析机构以及国内的多所高校、医院、协会等保持密切的专业合作与交流。在各方资源的支持下，研究院致力于不断推动本地区临床心理学事业的发展，竭诚提供优质的临床心理学服务</p>
                    </div>
                    <div class="footer-logo">
                        <a href="#">
                            <img class="img-fluid" src="assets/img/app-google.png" alt="">
                        </a>
                        <a href="#">
                            <img class="img-fluid" src="assets/img/app-apple.png" alt="">
                        </a>
                    </div>
                </div>
                <!-- End Widget -->
                <div class="col-lg-3 col-md-6 col-sm-12 col-12  mb-lg-0 mb-md-4 mb-sm-5 mb-5 footer-widget">
                    <div class="footer-section-title col-12 p-0 mb-4">
                        <h5>合作伙伴</h5>
                    </div>
                    <!-- end widget title -->
                    <ul class="quick-link-list">
                        <li><a href="#">Education</a></li>
                        <li><a href="#">Research</a></li>
                        <li><a href="#">Healthcare Services</a></li>
                        <li><a href="#">Cleveland Foundation</a></li>
                    </ul>
                    <div class="footer-section-title col-12 p-0 mt-4 mb-4">
                        <h5>关注我们</h5>
                    </div>
                    <!-- end widget title -->
                    <div class="footer-social">
                        <ul>
                            <li><a href="#"><i class="icofont icofont-social-wechat"></i></a></li>
                            <li><a href="#"><i class="icofont icofont-social-twitter"></i></a></li>
                            <li><a href="#"><i class="icofont icofont-social-youtube-play"></i></a></li>
                            <li><a href="#"><i class="icofont icofont-social-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- End Widget -->
                <div class="col-lg-3 col-md-6 col-sm-12 col-12  mb-lg-0 mb-md-0 mb-sm-5 mb-5 footer-widget">
                    <div class="footer-section-title col-12 p-0 mb-4">
                        <h5>新闻动态</h5>
                    </div>
                    <!-- end widget title -->
                    <div class="single-wn-slider owl-carousel owl-theme">
                        <div class="single-wn-item">
                            <p>How to Prevent Eye Injuries?</p>
                            <p>People at work are equally at risk of eye injuries as those at home. Fortunately, 90 percent of all eye injuries are preventable. Learn how to prevent eye injuries.</p>
                        </div>
                        <div class="single-wn-item">
                            <p>Need To Know About Scoliosis?</p>
                            <p>Scoliosis is a sideward bend of the spine which usually occurs in children, but can also sometimes affect adults. A normal spine is curved on the top of the shoulder.</p>
                        </div>
                    </div>
                    <a class="wn-readm" href="#">了解更多</a>
                </div>
                <!-- End Widget -->
                <div class="col-lg-3 col-md-6 col-sm-12 col-12 footer-widget">
                    <div class="footer-section-title col-12 p-0 mb-4">
                        <h5>联系我们</h5>
                    </div>
                    <!-- end widget title -->
                    <ul class="quick-link-list">
                        <li><a href="#"><i class="lnr lnr-map-marker"></i> 10004, Battery Park, New York</a></li>
                        <li><a href="#"><i class="lnr lnr-envelope "></i> info@yoursite.com</a></li>
                        <li><a href="#"><i class="lnr lnr-phone "></i> +0 123-456-7890</a></li>
                        <li><a href="#"><i class="icofont icofont-clock-time"></i> Open: Mon to Sat: 9AM to 5PM</a></li>
                    </ul>
                    <div class="footer-section-title col-12 p-0 mt-4 mb-4">
                        <h5>获取我们的最新消息</h5>
                    </div>
                    <!-- end widget title -->
                    <div class="foo-news">
                        <form action="#" method="post">
                            <div class="row m-0">
                                <div class="form-group col-lg-10 col-md-10 col-sm-10 col-10 p-0">
                                    <input name="fnews"  type="email" class="form-control" placeholder="Your email here...">
                                </div>
                                <div class="form-group col-lg-2 col-md-2 col-sm-2 col-2 p-0">
                                    <button type="submit" class="btn fnews-btn"><i class="icofont icofont-location-arrow"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- End Widget -->
            </div>
        </div>
    </div>
    <div class="copyright">
        <div class="auto-container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-12 copyright-text">
                    <p>Copyright &copy; 2018.Company 四川和光临床心理学研究院 All rights reserved.</p>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-12 footer-menu">
                    <ul>
                        <li><a href="#">预约</a> </li>
                        <li><a href="#">服务条款</a> </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- END FOOTER -->


<!-- Latest jQuery -->
<script src="assets/js/jquery-2.2.4.min.js"></script>
<!-- popper js -->
<script src="assets/bootstrap/js/popper.min.js"></script>
<!-- Latest compiled and minified Bootstrap -->
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<!-- meanmenu min js  -->
<script src="assets/js/jquery.meanmenu.min.js"></script>
<!-- Sticky JS -->
<script src="assets/js/jquery.sticky.js"></script>
<!-- gijgo js  -->
<script src="assets/js/gijgo.js"></script>
<!-- owl-carousel min js  -->
<script src="assets/owlcarousel/js/owl.carousel.min.js"></script>
<!-- jquery appear js  -->
<script src="assets/js/jquery.appear.js"></script>
<!-- countTo js -->
<script src="assets/js/jquery.inview.min.js"></script>
<!-- jquery mixitup js -->
<script src="assets/js/jquery.mixitup.min.js"></script>
<!-- venobox js -->
<script src="assets/venobox/js/venobox.min.js"></script>
<!-- scrolltopcontrol js -->
<script src="assets/js/scrolltopcontrol.js"></script>
<!-- WOW - Reveal Animations When You Scroll -->
<script src="assets/js/wow.min.js"></script>
<!-- scripts js -->
<script src="assets/js/scripts.js"></script>
</body>

</html>