<%@ page import="heguang.org.cn.DB" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: duanqifeng
  Date: 2019/1/12
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zxx">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico" />
    <title>Home</title>
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
                                <li><a href="contact.jsp" class="nav-link">联系我们</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3 col-md-12 d-lg-block d-md-none d-none">
                        <nav class="navbar navbar-expand-lg justify-content-end">
                            <ul class="navbar-nav">
                                <li class="dropdown quick-search"><a href="#" class="nav-link">我想</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="doctors.jsp"><i class="icofont icofont-doctor-alt"></i>预约咨询</a></li>
                                        <li><a href="testimonial.jsp"><i class="icofont icofont-medical-sign"></i> 自行测试</a></li>
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
                            <li><a href="index.jsp">主页</a></li>
                            <li><a href="about.jsp">关于我们</a>
                                <ul>
                                    <li><a href="about.jsp">关于和光</a></li>
                                    <li><a href="doctors.jsp">团队</a></li>
                                </ul>
                            </li>
                            <li><a href="services.jsp">业务范围</a>
                                <ul>
                                    <li><a href="#services-xlfw">临床心理服务</a></li>
                                    <li><a href="#services-train">临床心理训练</a></li>
                                </ul>
                            </li>
                            <li><a href="#">服务</a>
                                <ul>
                                    <li><a href="appointment.jsp">预约</a></li>
                                    <li><a href="testimonial.jsp">测试</a></li>
                                </ul>
                            </li>
                            <li><a href="news.jsp" class="nav-link">新闻</a></li>
                            <li><a href="contact.jsp">联系我们</a></li>
                            <li><a href="#">我想</a>
                                <ul>
                                    <li><a href="doctors.jsp"><i class="icofont icofont-doctor-alt"></i>预约咨询</a></li>
                                    <li><a href="testimonial.jsp"><i class="icofont icofont-medical-sign"></i> 自行测试</a></li>
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

<!-- START SLIDER SECTION -->
<section class="slider-section">
    <div class="home-slides owl-carousel owl-theme ">
        <div class="home-single-slide" data-background="assets/img/bg/slide2.jpg">
            <div class="home-slide-overlay"></div>
            <div class="home-single-slide-inner">
                <div class="auto-container">
                    <div class="row">
                        <div class="col-lg-7 col-md-8 col-sm-8 col-12">
                            <div class="home-single-slide-dec">
                                <p>WELL CARE</p>
                                <h2>PROVIDING</h2>
                                <h2>TOTAL LAB SOLUTION</h2>
                                <span><i class="icofont icofont-plus"></i> 专业团队</span>
                                <a href="appointment.jsp" class="home-btn-1">立即预约</a>
                                <a href="reports.jsp" class="home-btn-2">进行测试</a>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-4 col-sm-4 col-12 d-lg-block d-md-block d-sm-block d-none">
                            <img class="img-fluid" src="assets/img/bg/single-doc1.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end single slider -->
        <div class="home-single-slide" data-background="assets/img/bg/slide1.jpg">
            <div class="home-slide-overlay"></div>
            <div class="home-single-slide-inner">
                <div class="auto-container">
                    <div class="row">
                        <div class="col-lg-7 col-md-8 col-sm-8 col-12">
                            <div class="home-single-slide-dec">
                                <p>TOTAL CARE</p>
                                <h2>PROVIDING</h2>
                                <h2>HEALTH SOLUTION</h2>
                                <span><i class="icofont icofont-plus"></i> 无微不至 </span>
                                <a href="services.jsp" class="home-btn-1">咨询类别</a>
                                <a href="contact.jsp" class="home-btn-2">联系我们</a>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-4 col-sm-4 col-12 d-lg-block d-md-block d-sm-block d-none">
                            <img class="home-single-slide--img img-fluid" src="assets/img/bg/single-doc2.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end single slider -->
    </div>
</section>
<!-- END SLIDER SECTION  -->

<!-- START ABOUT SECTION -->
<section id="about" class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 text-center mx-auto">
                <div class="section-title">
                    <h3>欢迎来到 <span>和光心理咨询</span></h3>
                    <span class="line"></span>
                    <p>四川和光临床心理学研究院成立于2016年9月，是合法注册的临床心理学专业研究机构。研究院以促进大众心理健康和构建和谐社会为愿景，集国内外精神分析领域的专业资源与专业人才之力，努力发展成为国内一流的临床服务、人才培养和学术交流的中心。</p>
                </div>
            </div>
            <!-- end section title -->
        </div>
        <div class="row text-center">
            <div class="col-lg-3 col-md-6 col-sm-12 col-12 mb-lg-0 mb-md-4 mb-sm-4 mb-4">
                <div class="single-about">
                    <div class="single-about-icon">
                        <img class="img-fluid" src="assets/img/bg/icon-2.png" alt="" />
                    </div>
                    <h5>使命</h5>
                    <p>促进大众心理健康</p>
                </div>
            </div>
            <!-- end single about -->
            <div class="col-lg-3 col-md-6 col-sm-12 col-12 mb-lg-0 mb-md-4 mb-sm-4 mb-4">
                <div class="single-about">
                    <div class="single-about-icon">
                        <img class="img-fluid" src="assets/img/bg/icon-1.png" alt="" />
                    </div>
                    <h5>起源</h5>
                    <p>2016年一群有担当的咨询师自发的组建了和光心理研究院</p>
                </div>
            </div>
            <!-- end single about -->
            <div class="col-lg-3 col-md-6 col-sm-12 col-12 mb-lg-0 mb-md-4 mb-sm-4 mb-4">
                <div class="single-about">
                    <div class="single-about-icon">
                        <img class="img-fluid" src="assets/img/bg/icon-4.png" alt="" />
                    </div>
                    <h5>视野</h5>
                    <p>研究院定期组织和国际心理界权威进行交流</p>
                </div>
            </div>
            <!-- end single about -->
            <div class="col-lg-3 col-md-6 col-sm-12 col-12 mb-lg-0 mb-md-4 mb-sm-4 mb-4">
                <div class="single-about">
                    <div class="single-about-icon">
                        <img class="img-fluid" src="assets/img/bg/icon-3.png" alt="" />
                    </div>
                    <h5>成功</h5>
                    <p>研究院已成功完成进2000小时的心理咨询</p>
                </div>
            </div>
            <!-- end single about -->
        </div>
    </div>
    <!--- END CONTAINER -->
</section>
<!-- END ABOUT SECTION -->

<!-- START PORTFOLIO SECTION -->
<section id="portfolio" class="section-padding pb-0">
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 text-center mx-auto">
                    <div class="section-title">
                        <h3>研究院 <span>环境</span></h3>
                        <span class="line"></span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div>
                </div>
                <!-- end section title -->
            </div>
        </div>
        <div class="row text-center ">
            <div class="portfolio-slider owl-carousel owl-theme">
                <div class="single-gallery-item">
                    <div class="single-gallery single-gallery-first">
                        <img class="img-fluid" src="assets/img/gallery/办公室.jpg" alt="" />
                        <div class="single-gallery">
                            <div class="single-gallery-inner">
                                <h5>会议室</h5>
                                <p>咨询师们会定期。。。。。</p>
                                <a href="assets/img/gallery/办公室.jpg" class="venobox info" data-title="PORTFOLIO TITTLE" data-gall="gall1"><i class="icofont icofont-expand"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end single portfolio -->
                <div class="single-gallery-item">
                    <div class="single-gallery single-gallery-first">
                        <img class="img-fluid" src="assets/img/gallery/咨询室1.jpg" alt="" />
                        <div class="single-gallery">
                            <div class="single-gallery-inner">
                                <h5>咨询室环境(一)</h5>
                                <p>儿童咨询师，令孩子放松。。。</p>
                                <a href="assets/img/gallery/咨询室1.jpg" class="venobox info" data-title="PORTFOLIO TITTLE" data-gall="gall1"><i class="icofont icofont-expand"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end single portfolio -->
                <div class="single-gallery-item">
                    <div class="single-gallery single-gallery-first">
                        <img class="img-fluid" src="assets/img/gallery/咨询室2.jpg" alt="" />
                        <div class="single-gallery">
                            <div class="single-gallery-inner">
                                <h5>咨询室环境(二)</h5>
                                <p>安静、舒适、放松</p>
                                <a href="assets/img/gallery/咨询室2.jpg" class="venobox info" data-title="PORTFOLIO TITTLE" data-gall="gall1"><i class="icofont icofont-expand"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end single portfolio -->
                <div class="single-gallery-item">
                    <div class="single-gallery single-gallery-first">
                        <img class="img-fluid" src="assets/img/gallery/咨询室3.jpg" alt="" />
                        <div class="single-gallery">
                            <div class="single-gallery-inner">
                                <h5>咨询室环境(三)</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing.</p>
                                <a href="assets/img/gallery/咨询室3.jpg" class="venobox info" data-title="PORTFOLIO TITTLE" data-gall="gall1"><i class="icofont icofont-expand"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end single portfolio -->
                <div class="single-gallery-item">
                    <div class="single-gallery single-gallery-first">
                        <img class="img-fluid" src="assets/img/gallery/咨询室4.jpg" alt="" />
                        <div class="single-gallery">
                            <div class="single-gallery-inner">
                                <h5>Gallery Title</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing.</p>
                                <a href="assets/img/gallery/咨询室4.jpg" class="venobox info" data-title="PORTFOLIO TITTLE" data-gall="gall1"><i class="icofont icofont-expand"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end single portfolio -->
            </div>
        </div>
    </div>
    <!--- END CONTAINER -->
</section>
<!-- END PORTFOLIO SECTION -->

<!-- START COUNTER SECTION -->
<section id="counter" class="counter-section overlay section-back-image" data-background="assets/img/bg/counter-bg.jpg">
    <div class="container">
        <div class="row wow fadeInDown">
            <div class="col-lg-3 col-md-6 col-sm-12 col-12 mb-lg-0 mb-md-4 mb-sm-4 mb-4">
                <div class="single-counter">
                    <div class="single-counter-icon">
                        <i class="icofont icofont-users-alt-2"></i>
                    </div>
                    <div class="single-counter-text">
                        <h5 class="timer">1250</h5>
                        <p>咨询人次</p>
                    </div>
                </div>
            </div>
            <!-- end single counter -->
            <div class="col-lg-3 col-md-6 col-sm-12 col-12 mb-lg-0 mb-md-4 mb-sm-4 mb-4">
                <div class="single-counter">
                    <div class="single-counter-icon">
                        <i class="icofont icofont-nurse-alt"></i>
                    </div>
                    <div class="single-counter-text">
                        <h5 class="timer">12</h5>
                        <p>职业咨询师</p>
                    </div>
                </div>
            </div>
            <!-- end single counter -->
            <div class="col-lg-3 col-md-6 col-sm-12 col-12 mb-lg-0 mb-md-4 mb-sm-4 mb-4">
                <div class="single-counter">
                    <div class="single-counter-icon">
                        <i class="icofont icofont-doctor-alt"></i>
                    </div>
                    <div class="single-counter-text">
                        <h5 class="timer">40</h5>
                        <p>员工</p>
                    </div>
                </div>
            </div>
            <!-- end single counter -->
            <div class="col-lg-3 col-md-6 col-sm-12 col-12 mb-lg-0 mb-md-4 mb-sm-4 mb-4">
                <div class="single-counter">
                    <div class="single-counter-icon">
                        <i class="icofont icofont-hat-alt"></i>
                    </div>
                    <div class="single-counter-text">
                        <h5 class="timer">30</h5>
                        <p>硕士及以上学历</p>
                    </div>
                </div>
            </div>
            <!-- end single counter -->
        </div>
    </div>
    <!--- END CONTAINER -->
</section>
<!-- END COUNTER SECTION -->

<!-- START SERVICE SECTION -->
<section id="services-xlfw" class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 text-center mx-auto">
                <div class="section-title">
                    <h3><span>临床心理服务</span>类别</h3>
                    <span class="line"></span>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
            </div>
            <!-- end section title -->
        </div>
        <div class="row mt-4">
            <div class="service-slider owl-carousel owl-theme">
                <div class="single-service-item">
                    <div class="single-service">
                        <img class="img-fluid" src="assets/img/service/1.jpg" alt="" />
                        <h5>个体心理咨询</h5>
                        <p>Lorem ipsum dolor sit consecte adipiscing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                        <a class="serv-rmbtn" href="#">Read More</a>
                    </div>
                </div>
                <!-- end single service -->
                <div class="single-service-item">
                    <div class="single-service">
                        <img class="img-fluid" src="assets/img/service/2.jpg" alt="" />
                        <h5>团队心理咨询</h5>
                        <p>Lorem ipsum dolor sit consecte adipiscing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                        <a class="serv-rmbtn" href="#">Read More</a>
                    </div>
                </div>
                <!-- end single service -->
                <%
                    ResultSet rsService_xinli = db.queryService();

                    try {
                        while (rsService_xinli.next()){
                            String serviceName_xinli = rsService_xinli.getString("name");
                            String type_xinli = rsService_xinli.getString("type");
                            if (type_xinli.equals("临床服务")){
                %>
                <div class="single-service-item">
                    <div class="single-service">
                        <img class="img-fluid" src="../upload/service/<%=serviceName_xinli%>.jpg" alt="" />
                        <h5><%=serviceName_xinli%></h5>
                        <p>Lorem ipsum dolor sit consecte adipiscing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                        <a class="serv-rmbtn" href="single-service.jsp?serviceName=<%=serviceName_xinli%>">Read More</a>
                    </div>
                </div>
                <%
                            }
                        }
                    }catch (Exception e){
                        e.printStackTrace();
                    }
                %>
                <!-- end single service -->
                <!-- end single service -->
                <div class="single-service-item">
                    <div class="single-service">
                        <img class="img-fluid" src="assets/img/service/4.jpg" alt="" />
                        <h5>母婴关系指导</h5>
                        <p>Lorem ipsum dolor sit consecte adipiscing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                        <a class="serv-rmbtn" href="#">Read More</a>
                    </div>
                </div>
                <!-- end single service -->
                <div class="single-service-item">
                    <div class="single-service">
                        <img class="img-fluid" src="assets/img/service/5.jpg" alt="" />
                        <h5>婴幼儿心理</h5>
                        <p>Lorem ipsum dolor sit consecte adipiscing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                        <a class="serv-rmbtn" href="#">Read More</a>
                    </div>
                </div>
                <!-- end single service -->
                <div class="single-service-item">
                    <div class="single-service">
                        <img class="img-fluid" src="assets/img/service/3.jpg" alt="" />
                        <h5>儿童心理</h5>
                        <p>Lorem ipsum dolor sit consecte adipiscing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                        <a class="serv-rmbtn" href="#">Read More</a>
                    </div>
                </div>
                <!-- end single service -->
                <div class="single-service-item">
                    <div class="single-service">
                        <img class="img-fluid" src="assets/img/service/5.jpg" alt="" />
                        <h5>青少年心理</h5>
                        <p>Lorem ipsum dolor sit consecte adipiscing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                        <a class="serv-rmbtn" href="#">Read More</a>
                    </div>
                </div>
                <!-- end single service -->
                <div class="single-service-item">
                    <div class="single-service">
                        <img class="img-fluid" src="assets/img/service/5.jpg" alt="" />
                        <h5>母亲与照料者</h5>
                        <p>Lorem ipsum dolor sit consecte adipiscing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                        <a class="serv-rmbtn" href="#">Read More</a>
                    </div>
                </div>
                <!-- end single service -->
            </div>
        </div>
    </div>
    <!--- END CONTAINER -->
</section>
<!-- END SERVICE SECTION -->

<!-- START SERVICE SECTION -->
<section id="services-train" class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 text-center mx-auto">
                <div class="section-title">
                    <h3><span>临床心理训练</span>项目</h3>
                    <span class="line"></span>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
            </div>
            <!-- end section title -->
        </div>
        <div class="row mt-4">
            <div class="service-slider owl-carousel owl-theme">
                <div class="single-service-item">
                    <div class="single-service">
                        <img class="img-fluid" src="assets/img/service/1.jpg" alt="" />
                        <h5>心理动力学初级培训</h5>
                        <p>Lorem ipsum dolor sit consecte adipiscing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                        <a class="serv-rmbtn" href="#">Read More</a>
                    </div>
                </div>
                <!-- end single service -->
                <%
                    ResultSet rsService = db.queryService();

                    try {
                        while (rsService.next()){
                            String serviceName = rsService.getString("name");
                            String type = rsService.getString("type");
                            if (type.equals("临床训练")){
                %>
                <div class="single-service-item">
                    <div class="single-service">
                        <img class="img-fluid" src="../upload/service/<%=serviceName%>.jpg" alt="" />
                        <h5><%=serviceName%></h5>
                        <p>Lorem ipsum dolor sit consecte adipiscing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                        <a class="serv-rmbtn" href="single-service.jsp?serviceName=<%=serviceName%>">Read More</a>
                    </div>
                </div>
                <%
                            }
                        }
                    }catch (Exception e){
                        e.printStackTrace();
                    }
                %>
                <!-- end single service -->
                <div class="single-service-item">
                    <div class="single-service">
                        <img class="img-fluid" src="assets/img/service/2.jpg" alt="" />
                        <h5>心理动力学两年训练</h5>
                        <p>Lorem ipsum dolor sit consecte adipiscing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                        <a class="serv-rmbtn" href="#">Read More</a>
                    </div>
                </div>
                <!-- end single service -->
                <div class="single-service-item">
                    <div class="single-service">
                        <img class="img-fluid" src="assets/img/service/4.jpg" alt="" />
                        <h5>临床实习咨询师实习</h5>
                        <p>Lorem ipsum dolor sit consecte adipiscing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                        <a class="serv-rmbtn" href="#">Read More</a>
                    </div>
                </div>
                <!-- end single service -->
                <div class="single-service-item">
                    <div class="single-service">
                        <img class="img-fluid"  src="assets/img/service/5.jpg" alt="" />
                        <h5>克莱因理论与技术训练</h5>
                        <p>Lorem ipsum dolor sit consecte adipiscing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                        <a class="serv-rmbtn" href="#">Read More</a>
                    </div>
                </div>
                <!-- end single service -->
                <div class="single-service-item">
                    <div class="single-service">
                        <img class="img-fluid" src="assets/img/service/3.jpg" alt="" />
                        <h5>比昂理论和技术训练</h5>
                        <p>Lorem ipsum dolor sit consecte adipiscing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                        <a class="serv-rmbtn" href="#">Read More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--- END CONTAINER -->
</section>
<!-- END SERVICE SECTION -->

<!-- START DOCTOR SECTION -->
<section id="doctor" class="section-padding bg-gray">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 text-center mx-auto">
                <div class="section-title">
                    <h3>优秀<span> 咨询师 </span></h3>
                    <span class="line"></span>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
            </div>
            <!-- end section title -->
        </div>
        <div class="row">
            <div class="team-slider owl-carousel owl-theme">
                <%
                    ResultSet rs = db.queryZxs();

                    try {
                        while (rs.next()){
                            String zxsName = rs.getString("name");
                            String price = rs.getString("price");
                            String imgPath = "../upload/img/"+zxsName+".jpg";
                %>
                <div style="height: fit-content" class="single-doctor single-doctor-warp">
                    <img class="img-fluid" src=<%=imgPath%> alt="<%=zxsName%>" />
                    <div class="single-doctor-info">
                        <h4><%=zxsName%></h4>
                        <span>心理咨询师</span>
                    </div>
                    <div class="single-doctor-mask">
                        <div class="single-doctor-mask-inner">
                            <h5>医生简介</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>
                            <ul>
                                <li><a href="single-doctor.jsp?zxsName=<%=zxsName%>&zxsEmail=<%=rs.getString("email")%>&price=<%=rs.getInt("price")%>">预约</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <%

                        }
                    }catch (Exception e){
                        e.printStackTrace();
                    }

                %>
                <!-- end single doctor -->
            </div>
        </div>
    </div>
    <!--- END CONTAINER -->
</section>
<!-- END DOCTOR SECTION -->

<!-- START TESTIMONIAL & FAQ -->
<section id="testimonialfaq" class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-12 pr-lg-5 pr-md-5 pr-sm-0 pr-0 mb-lg-0 mb-md-0 mb-sm-5 mb-5">
                <div class="text-left">
                    <div class="section-title section-title-left">
                        <h3>常见 <span>疑问</span></h3>
                        <span class="line"></span>
                    </div>
                </div>
                <!-- end section title -->
                <div class="panel-group faq-home-accor" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <i class="icofont icofont-thin-down"></i> <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#panel1">哪些人需要看心理咨询？</a>
                            </h5>
                        </div>
                        <div id="panel1" class="panel-collapse collapse show">
                            <div class="panel-body">
                                <p>就像一个身体上很健康的人，也最好每年做一次全面的身体检查一样，每一个正常人都应该每年花一点时间去看心理咨询。看心理咨询不仅仅是解决自己的心理疾患，而更应该是使自己的心态更加健康，从而提高自己的生活质量。在西方发达国家，上到国家元首，下至平民百姓，均把看心理咨询师为一种高贵的精神消费。</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <i class="icofont icofont-thin-right"></i> <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#panel2">哪些人必须看心理咨询？</a>
                            </h5>
                        </div>
                        <div id="panel2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>情绪低落或情绪不稳，时间超过三周未缓解；长期躯体不适，经躯体检查未发现明显器质性改变；人际关系出现严重问题；自觉工作压力过大；长期失眠；遭遇重大生活挫折；长期家庭纠纷；儿童学习困难。</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <i class="icofont icofont-thin-right"></i> <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#panel3">看心理咨询师以前需要做什么准备？</a>
                            </h5>
                        </div>
                        <div id="panel3" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>基本上不需要做准备工作。有人来之前将自己的问题写在纸上，见了咨询师就照着念，这并不好。咨询师希望跟你有直接交流，而不希望跟你隔着点什么，哪怕是一张稿纸。</p>
                            </div>
                        </div>
                    </div>
                    <a class="wn-readm" href="#">更多</a>
                </div>
            </div>
            <!-- end col -->
            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                <div class="text-left">
                    <div class="section-title section-title-left">
                        <h3>什么是<span>心理咨询</span></h3>
                        <span class="line"></span>
                    </div>
                </div>
                <!-- end section title -->
                <div class="single-testimonial mb-4">
                    <div class="single-testimonial-img">
                        <img class="img-fluid" src="assets/img/team/tes1.jpg" alt="">
                    </div>
                    <div class="single-testimonial-text-warp">
                        <div class="single-testimonial-text-inner">
                            <p>心理咨询（counseling）是指运用心理学的方法，对心理适应方面出现问题并企求解决问题的求询者提供心理援助的过程。需要解决问题并前来寻求帮助者称为来访者或者咨客，提供帮助的咨询专家称为咨询者。来访者就自身存在的心理不适或心理障碍，通过语言文字等交流媒介，向咨询者进行述说、询问与商讨，在其支持和帮助下，通过共同的讨论找出引起心理问题的原因，分析问题的症结，进而寻求摆脱困境解决问题的条件和对策，以便恢复心理平衡、提高对环境的适应能力、增进身心健康。</p>
                            <footer class="blockquote-footer">对心理咨询的解释 , <cite title="Source Title">百度百科</cite></footer>
                        </div>
                        <div class="single-testimonial-text-icon">
                            <i class="icofont icofont-quote-left"></i>
                        </div>
                    </div>
                </div>
                <!-- end single testimonial -->
                <div class="single-testimonial">
                    <div class="single-testimonial-img">
                        <img class="img-fluid" src="assets/img/team/tes2.jpg" alt="">
                    </div>
                    <div class="single-testimonial-text-warp">
                        <div class="single-testimonial-text-inner">
                            <p>不同的流派理论对此有不同的理解和解释。但相对统一的基础是：“助人自助”。依靠咨询师和来访者之间建立的安全关系，咨询师帮助来访者更多地理解和探索自己（的行为和感受），并倚靠自己的力量选择自己解决问题的方式。</p>
                            <footer class="blockquote-footer">心理咨询 <cite title="Source Title">意义</cite></footer>
                        </div>
                        <div class="single-testimonial-text-icon">
                            <i class="icofont icofont-quote-left"></i>
                        </div>
                    </div>
                </div>
                <!-- end single testimonial -->
            </div>
            <!-- end col -->
        </div>
    </div>
    <!--- END CONTAINER -->
</section>
<!-- END TESTIMONIAL & FAQ -->

<!-- START FOOTER -->
<footer id="footer">
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
                </div>
                <!-- End Widget -->
                <div class="col-lg-3 col-md-6 col-sm-12 col-12  mb-lg-0 mb-md-4 mb-sm-5 mb-5 footer-widget">
                    <div class="footer-section-title col-12 p-0 mb-4">
                        <h5>合作伙伴</h5>
                    </div>
                    <!-- end widget title -->
                    <ul class="quick-link-list">
                        <li><a href="http://www.scuxiaoer.com">SCUXIAOER</a></li>
                    </ul>
                    <div class="footer-section-title col-12 p-0 mt-4 mb-4">
                        <h5>关注我们</h5>
                    </div>
                    <!-- end widget title -->
                    <div class="footer-social">
                        <ul>
                            <li><a href="assets/img/和光微信公众号.jpeg" class="venobox info" data-title="PORTFOLIO TITTLE" data-gall="gall1"><i class="icofont icofont-social-wechat"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- End Widget -->
                <div class="col-lg-3 col-md-6 col-sm-12 col-12  mb-lg-0 mb-md-0 mb-sm-5 mb-5 footer-widget">
                    <div class="footer-section-title col-12 p-0 mb-4">
                        <h5>新闻动态</h5>
                    </div>
                    <%
                        String lastNewsTitle = "";
                        String lastNewsDate = "";
                        boolean lasted = false;
                    %>
                    <!-- end widget title -->
                    <div class="single-wn-slider owl-carousel owl-theme">
                        <%
                            ResultSet rsNews = db.queryNews();

                            try {
                                while (rsNews.next()){
                                    String newsTitle = rsNews.getString("title");
                                    String summary = rsNews.getString("summary");
                                    if (!lasted){
                                        lasted = true;
                                        lastNewsTitle = newsTitle;
                                        lastNewsDate = rsNews.getString("date");
                                    }
                        %>
                        <div class="single-wn-item">
                            <p><%=newsTitle%></p>
                            <p style="overflow: hidden;display: -webkit-box;-webkit-line-clamp:4;-webkit-box-orient: vertical;word-wrap: break-word;word-break: break-all;overflow: hidden;"><%=summary%></p>
                        </div>
                        <%

                                }
                            }catch (Exception e){
                                e.printStackTrace();
                            }
                        %>
                    </div>
                    <a class="wn-readm" href="single-news.jsp?newsTitle=<%=lastNewsTitle%>&date=<%=lastNewsDate%>">了解更多</a>
                </div>
                <!-- End Widget -->
                <div class="col-lg-3 col-md-6 col-sm-12 col-12 footer-widget">
                    <div class="footer-section-title col-12 p-0 mb-4">
                        <h5>联系我们</h5>
                    </div>
                    <!-- end widget title -->
                    <ul class="quick-link-list">
                        <li><i class="lnr lnr-map-marker"></i> 成都 青羊区 贝森北路5号（西村五号）19-A01</li>
                        <li><i class="lnr lnr-envelope "></i> service@heguang.org.cn</li>
                        <li><i class="lnr lnr-phone "></i>028 - 6260 1011</li>
                        <li><i class="icofont icofont-clock-time"></i>周一至周六：9：00-18：00</li>
                    </ul>
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

<script>

</script>

</html>
