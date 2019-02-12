<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="heguang.org.cn.Util" %>
<%@ page import="net.sf.json.JSONObject" %>
<%@ page import="heguang.org.cn.DB" %>
<html lang="zxx">
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico"/>
    <title></title>
    <!-- Bootstrap core CSS -->
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Font  -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600,700|Raleway:400,400i,500i,600,700"
          rel="stylesheet">
    <!-- flaticon icon -->
    <link rel="stylesheet" href="assets/fonts/icon-font.min.css">
    <!-- icofont icon -->
    <link rel="stylesheet" href="assets/fonts/icofont.css">
    <!--- meanmenu Css-->
    <link rel="stylesheet" href="assets/css/meanmenu.min.css" media="all"/>
    <!-- gijgo CSS -->
    <link rel="stylesheet" href="assets/css/gijgo.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="assets/css/animate.css">
    <!--- owl carousel Css-->
    <link rel="stylesheet" href="assets/owlcarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/owlcarousel/css/owl.theme.default.min.css">
    <!-- venobox -->
    <link rel="stylesheet" href="assets/venobox/css/venobox.css"/>
    <!-- Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- Responsive  CSS -->
    <link rel="stylesheet" href="assets/css/responsive.css">
    <style>
        table {
            border-style: solid;
            width: 100%;
        }

        th {
            text-align: center;
            border-style: solid;
        }

        tr td {
            border-style: solid;
        }
        tr td:hover {
            background-color: #ff2c37;
        }
        th:hover {
            background-color: #ff2c37;
        }
    </style>
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
                    <h2><span id="name_top"></span></h2>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#"><span class="lnr lnr-home"></span></a></li>
                    <li class="breadcrumb-item">Pages</li>
                    <li class="breadcrumb-item active">咨询师主页</li>
                </ol>
            </div>
        </div>
        <!-- end row-->
    </div>
</section>
<!-- END PAGE BANNER AND BREADCRUMBS -->


<!-- START SINGLE DOCTOR SECTION -->
<section id="singledoctor" class="section-padding doctor-page">
    <div class="auto-container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-12 col-12">
                <div class="row">
                    <div class="col-lg-4 mb-lg-0 mb-md-3 mb-sm-3 mb-3">
                        <div style="height: fit-content" class="single-doctor single-doctor-warp">
                            <img id="img" alt="" src="assets/img/team/2.jpg" class="img-fluid" alt="">
                            <div class="single-doctor-info">
                                <h4 id="name">Stevest Henry</h4>
                                <span id="type">Ophthalmologist</span>
                            </div>
                            <div class="single-doctor-mask">
                                <div class="single-doctor-mask-inner">
                                    <h5>About Doctor</h5>
                                    <p id="about">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                        eiusmod tempor.</p>
                                    <ul>
                                        <li><a href="#"><i class="icofont icofont-social-facebook"></i></a></li>
                                        <li><a href="#"><i class="icofont icofont-social-twitter"></i></a></li>
                                        <li><a href="#"><i class="icofont icofont-social-youtube-play"></i></a></li>
                                        <li><a href="#"><i class="icofont icofont-social-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="doctor-schedule">
                            <h4>个人简介</h4>
                            <hr>
                            <%
                                Util readzl = new Util();
                                String webPath = application.getRealPath("/");
                                String zxsName = request.getParameter("zxsName");
                                String zxsEmail = request.getParameter("zxsEmail");
                                String price = request.getParameter("price");

                                JSONObject object = JSONObject.fromObject(readzl.readZl(zxsName,webPath));

                                String zc = "";
                                String scly = "";
                                String gzjy = "";
                                String sxbj = "";
                                String xshd = "";
                                if (!object.isEmpty()){
                                    zc = object.getString("zc");
                                    scly = object.getString("scly");
                                    gzjy = object.getString("gzjy");
                                    sxbj = object.getString("sxbj");
                                    xshd = object.getString("xshd");
                                }
                            %>
                            <span id="zxsEmail" hidden><%=zxsEmail%></span>
                            <em><b>职称/资质：</b></em><%=zc%>
                            <br>
                            <em><b>擅长领域：</b></em><%=scly%>
                            <br>
                            <em><b>咨询费用：</b></em><%=price%>元/课时(50分钟)
                            <br>
                            <br>
                            <h4>咨询时间</h4>---红色时间段不可预约
                            <hr>
                            <table>
                                <tr>
                                    <th onclick="Sparetime(107)">星期日</th>
                                    <th onclick="Sparetime(101)">星期一</th>
                                    <th onclick="Sparetime(102)">星期二</th>
                                    <th onclick="Sparetime(103)">星期三</th>
                                    <th onclick="Sparetime(104)">星期四</th>
                                    <th onclick="Sparetime(105)">星期五</th>
                                    <th onclick="Sparetime(106)">星期六</th>
                                </tr>

                                <tr>
                                    <%
                                        Date nowDate = new Date();
                                        Calendar ca = Calendar.getInstance();
                                        ca.setTime(nowDate);

                                        SimpleDateFormat hs = new SimpleDateFormat("dd");
                                        SimpleDateFormat xq = new SimpleDateFormat("E");

                                        int count = 28;//显示的总天数

                                        //只适配了中英文
                                        while (!xq.format(ca.getTime()).equals("星期日") && !xq.format(ca.getTime()).equals("Sun")) {//找到上一个星期日
                                            ca.add(Calendar.DATE, -1);//前一天
                                        }
                                        //ca此时的时间为上个周日
                                        while (count > 0) {
                                            int tempDate = Integer.parseInt(hs.format(ca.getTime()));
                                            String tempDateXQ = xq.format(ca.getTime());
                                            String color = "red";
                                            if (ca.getTime().compareTo(nowDate) > 0) {
                                                color = "green";
                                            }
                                    %>
                                    <td style="text-align: center;" id="<%=tempDateXQ%>A<%=tempDate%>"
                                        onclick="Sparetime(<%=tempDate%>,this)"><a
                                            style="text-align: center;color: <%=color%>;"><%=tempDate%>
                                    </a>
                                    </td>
                                    <%
                                        if (xq.format(ca.getTime()).equals("星期六") || xq.format(ca.getTime()).equals("Sat")) {
                                    %>
                                </tr>
                                <tr>
                                    <%
                                            }
                                            ca.add(Calendar.DATE, 1);//后一天
                                            --count;
                                        }
                                    %>
                                </tr>
                            </table>
                            <br>
                            <div id="alltime">
                            </div>
                            <div id="sparetime">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="single-doc-tab col-lg-12">
                        <ul id="tabsJustified" class="nav nav-tabs justify-content-left">
                            <li class="nav-item">
                                <a href="#" data-target="#one" data-toggle="tab" class="nav-link active">
                                    <i class="icofont icofont-graduate-alt"></i> 工作经验
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" data-target="#two" data-toggle="tab" class="nav-link">
                                    <i class="icofont icofont-hat-alt"></i> 受训背景
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" data-target="#three" data-toggle="tab" class="nav-link">
                                    <i class="icofont icofont-award"></i> 学术活动与成就
                                </a>
                            </li>
                        </ul>
                        <div id="tabsJustifiedContent" class="tab-content mt-4">
                            <div id="one" class="tab-pane animated fadeInRight active show">
                                <textarea disabled style="border-style: none;width: 100%;height: 50%">
                                    <%="\n"+gzjy%>
                                </textarea>
                            </div>
                            <div id="two" class="tab-pane animated fadeInRight">
                                <textarea disabled style="border-style: none;width: 100%;height: 50%">
                                    <%="\n"+sxbj%>
                                </textarea>
                            </div>
                            <div id="three" class="tab-pane animated fadeInRight">
                                <textarea disabled style="border-style: none;width:100%;height: 50%">
                                    <%="\n"+xshd%>
                                </textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <aside class="col-lg-4 col-md-4 col-sm-12 col-12 pl-lg-5 pl-md-5 pl-sm-2 pl-2">
                <div class="sidebar-widget">
                    <h5 class="widget-title">预约咨询</h5>
                    <!-- end widget tittle-->
                    <div class="appointment-form">
                        <form action="submitYY.jsp" method="post">
                            <div class="row">
                                <div class="form-group col-lg-12">
                                    <input name="aname" class="form-control" id="afirst-name" placeholder="您的姓名"
                                           required="required" type="text">
                                </div>
                                <div class="form-group col-lg-12">
                                    <input name="aemail" class="form-control" id="aemail" placeholder="您的邮箱"
                                           required="required" type="email">
                                </div>
                                <div class="form-group col-lg-12">
                                    <input name="aphone" class="form-control" id="aphone"
                                           placeholder="您的联系电话" required="required" type="text">
                                </div>
                                <div class="form-group col-lg-12">
                                    <textarea rows="6" name="amessage" class="form-control" id="adescription"
                                              placeholder="咨询时间，如'每周三下午3点到5点（前提是咨询师开放该时间段）'" required="required"></textarea>
                                </div>
                                <div class="form-group col-lg-6">
                                    <input type="submit" value="提交" class="btn btn-lg btn-app-form">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- end widget -->
            </aside>
        </div>
    </div>
    <!--- END CONTAINER -->
</section>
<!-- END SINGLE DOCTOR SECTION -->

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
                        <p>
                            四川和光临床心理学研究院成立于2016年9月，是合法注册的临床心理学专业研究机构。研究院以促进大众心理健康和构建和谐社会为愿景，集国内外精神分析领域的专业资源与专业人才之力，努力发展成为国内一流的临床服务、人才培养和学术交流的中心。</p>
                        <p>
                            研究院拥有一支专业的心理咨询师、心理督导师、精神分析师队伍，拥有一批国内外高水平的临床心理学教员。与美国、加拿大、以色列等国家的多个精神分析机构以及国内的多所高校、医院、协会等保持密切的专业合作与交流。在各方资源的支持下，研究院致力于不断推动本地区临床心理学事业的发展，竭诚提供优质的临床心理学服务</p>
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
                            <p>People at work are equally at risk of eye injuries as those at home. Fortunately, 90
                                percent of all eye injuries are preventable. Learn how to prevent eye injuries.</p>
                        </div>
                        <div class="single-wn-item">
                            <p>Need To Know About Scoliosis?</p>
                            <p>Scoliosis is a sideward bend of the spine which usually occurs in children, but can also
                                sometimes affect adults. A normal spine is curved on the top of the shoulder.</p>
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
                                    <input name="fnews" type="email" class="form-control"
                                           placeholder="Your email here...">
                                </div>
                                <div class="form-group col-lg-2 col-md-2 col-sm-2 col-2 p-0">
                                    <button type="submit" class="btn fnews-btn"><i
                                            class="icofont icofont-location-arrow"></i></button>
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
                        <li><a href="#">预约</a></li>
                        <li><a href="#">服务条款</a></li>
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

    function getUrlParam(url) {
        var param = {};
        if (url.indexOf("?") !== -1) {
            var str = url.substr(url.indexOf("?") + 1, url.length);
            var strs = [];
            strs = str.split("&");
            for (var i = 0; i < strs.length; i++) {
                param[strs[i].split("=")[0]] = strs[i].split("=")[1];
            }
            var name_top = document.getElementById('name_top');
            var name = document.getElementById('name');
            var img = document.getElementById('img');
            name_top.innerText = param['zxsName'];
            name.innerText = param['zxsName'];
            img.setAttribute("src", "../upload/img/" + param['zxsName'] + ".jpg");
        }
        return param;
    }

    var url = decodeURIComponent(location.search);//解决中文乱码
    var param = getUrlParam(url);
</script>
<script>
    function Sparetime(date,obj) {
        var tip = date;
        if (tip > 100) {
            tip = "星期";
            switch (date - 100) {
                case 1:
                    tip += "一";
                    break;
                case 2:
                    tip += "二";
                    break;
                case 3:
                    tip += "三";
                    break;
                case 4:
                    tip += "四";
                    break;
                case 5:
                    tip += "五";
                    break;
                case 6:
                    tip += "六";
                    break;
                case 7:
                    tip += "天";
                    break;
            }
            tip += "安排-->";
        } else {
            tip = tip + "号：";
        }

        querySparetime(date,obj);//加上信息
    }

    function querySparetime(date,obj) {
        var email = document.getElementById("zxsEmail").innerHTML;
        $.ajax({
            tyep: "post",
            dataType: "json",
            url: "/querySparetime",
            data: {date: date,email:email},
            success: function (result) {
                if (result.length<1) {
                    //没有单独为这一天设置时间安排，则采用星期的安排
                    var xq = obj.id.split("A")[0];
                    switch (xq) {
                        case "星期一":
                            xq = 101;
                            break;
                        case "星期二":
                            xq = 102;
                            break;
                        case "星期三":
                            xq = 103;
                            break;
                        case "星期四":
                            xq = 104;
                            break;
                        case "星期五":
                            xq = 105;
                            break;
                        case "星期六":
                            xq = 106;
                            break;
                        case "星期日":
                            xq = 107;
                            break;
                    }
                    querySparetimeXQ(xq);
                }else {
                    var alltime = document.getElementById("alltime");
                    alltime.innerHTML = "";

                    for (var i=0;i<result.length;++i){
                        var ks = parseInt(result[i].ks);
                        var js = parseInt(result[i].js);
                        if (result[i].bz === "") {
                            alltime.innerHTML = "<input type='button' style='background-color: greenyellow' value='"+ks+":00-"+js+":00,"+result[i].fs+"' onclick='gotoYY("+date+","+ks+","+js+")' >";
                        }
                    }
                }
            }
        })
    }

    function querySparetimeXQ(date) {
        var email = document.getElementById("zxsEmail").innerHTML;
        $.ajax({
            tyep: "post",
            dataType: "json",
            url: "/querySparetime",
            data: {date: date,email:email},
            success: function (result) {
                var alltime = document.getElementById("alltime");
                alltime.innerHTML = "";

                for (var i=0;i<result.length;++i){
                    var ks = parseInt(result[i].ks);
                    var js = parseInt(result[i].js);
                    if (result[i].bz === "") {
                        alltime.innerHTML = "<input type='button' style='background-color: greenyellow' value='"+ks+":00-"+js+":00,"+result[i].fs+"' onclick='gotoYY("+date+","+ks+","+js+")' >";
                    }
                }
            }
        })
    }

    function gotoYY(date,ks,js) {
        window.location = "../admin/zxdj.jsp?date="+date+"&ks="+ks+"&js="+js+"&zxsName=<%=zxsName%>";
    }

</script>
</html>