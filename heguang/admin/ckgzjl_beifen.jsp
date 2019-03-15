<%@ page import="heguang.org.cn.DB" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: duanqifeng
  Date: 2019/1/12
  Time: 1:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zxx">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="shortcut icon" type="image/x-icon" href="../home/assets/img/favicon.ico"/>
    <title></title>
    <!-- Bootstrap core CSS -->
    <link href="../home/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- flaticon icon -->
    <link rel="stylesheet" href="../home/assets/fonts/icon-font.min.css">
    <!-- icofont icon -->
    <link rel="stylesheet" href="../home/assets/fonts/icofont.css">
    <!--- meanmenu Css-->
    <link rel="stylesheet" href="../home/assets/css/meanmenu.min.css" media="all"/>
    <!-- animate CSS -->
    <link rel="stylesheet" href="../home/assets/css/animate.css">
    <!--- owl carousel Css-->
    <link rel="stylesheet" href="../home/assets/owlcarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../home/assets/owlcarousel/css/owl.theme.default.min.css">
    <!-- venobox -->
    <link rel="stylesheet" href="../home/assets/venobox/css/venobox.css"/>
    <!-- Style CSS -->
    <link rel="stylesheet" href="../home/assets/css/style.css">
    <!-- Responsive  CSS -->
    <link rel="stylesheet" href="../home/assets/css/responsive.css">

    <style>
        table {
            border-collapse: collapse;
            border: none;
            background-color: #FFFFFF;
            width: 100%;
        }

        td, th {
            text-align: center;
            border: solid grey 1px;
            margin: 0 0 0 0;
            padding: 2px 2px 2px 2px
        }

        .c1 {
            width: auto
        }

        .c2 {
            width: auto
        }

        .c1 {
            width: auto
        }

        .c4 {
            width: auto
        }

        .c1 {
            width: auto
        }

        a:link, a:visited {
            color: blue
        }

        .container {
            margin: 0 auto;
            width: 80%;
            text-align: center;
        }

    </style>

</head>

<body>

<%
    if (session.getAttribute("admin")==null){
        PrintWriter writer = response.getWriter();
        writer.print("<script>window.location = '../home/index.jsp'</script>");
    }
%>

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
                            <li><a href="../home/myself.jsp?email=<%=email%>"><%=name%></a></li>
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
                        <a href="../home/index.jsp">
                            <img class="img-fluid" src="../home/assets/img/logo.png" alt="">
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
                        <a class="header-quote-btn" href="../home/doctors.jsp">立即预约 <i class="icofont icofont-caret-right"></i></a>
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
                                <li><a href="../home/isLogged.jsp" class="nav-link">主页</a></li>
                                <li class="dropdown"><a href="../home/about.jsp" class="nav-link">关于我们</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="../home/about.jsp">关于和光</a></li>
                                        <li><a href="../home/doctors.jsp">团队</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="../home/services.jsp" class="nav-link">业务范围</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#services-xlfw">临床心理服务</a></li>
                                        <li><a href="#services-train">临床心理训练</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#" class="nav-link">服务</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="../home/appointment.jsp">预约</a></li>
                                        <li><a href="../home/testimonial.jsp">测试</a></li>
                                    </ul>
                                </li>
                                <li><a href="../home/news.jsp" class="nav-link">新闻</a></li>
                                <li><a href="../home/contact.jsp" class="nav-link">加入我们</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3 col-md-12 d-lg-block d-md-none d-none">
                        <nav class="navbar navbar-expand-lg justify-content-end">
                            <ul class="navbar-nav">
                                <li class="dropdown quick-search"><a href="#" class="nav-link">我想</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="../home/doctors.jsp"><i class="icofont icofont-doctor-alt"></i> 找位医师</a></li>
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
                            <li><a href="../home/index.jsp">主页</a>
                                <ul>
                                    <li><a href="../home/index.jsp">Home 1</a></li>
                                    <li><a href="../home/map.html">Home 2</a></li>
                                </ul>
                            </li>
                            <li><a href="../home/about.jsp">关于我们</a>
                                <ul>
                                    <li><a href="../home/about.jsp">关于和光</a></li>
                                    <li><a href="../home/doctors.jsp">团队</a></li>
                                    <li><a href="../home/single-doctor.jsp">医师列表</a></li>
                                </ul>
                            </li>
                            <li><a href="../home/services.jsp">业务范围</a>
                                <ul>
                                    <li><a href="../home/services.jsp">Our All Services</a></li>
                                    <li><a href="../home/single-service.jsp">Accident & Emergency</a></li>
                                    <li><a href="../home/single-service.jsp">Health checks</a></li>
                                    <li><a href="../home/single-service.jsp">Home Care</a></li>
                                    <li><a href="../home/single-service.jsp">Diabetes & Endocrinology</a></li>
                                </ul>
                            </li>
                            <li><a href="../home/news.jsp">风采</a></li>
                            <li><a href="#">服务</a>
                                <ul>
                                    <li><a href="../home/appointment.jsp">预约</a></li>
                                    <li><a href="../home/testimonial.jsp">测试</a></li>
                                    <li><a href="../home/new-patient.jsp">就诊</a></li>
                                    <li><a href="../home/faq.jsp">疑问</a></li>
                                    <li><a href="../home/reports.jsp">就诊报告</a></li>
                                    <li><a href="../home/404.jsp">404 Page</a></li>
                                </ul>
                            </li>
                            <li><a href="../home/blog.jsp">新闻</a>
                                <ul>
                                    <li><a href="../home/blog.jsp">Blog</a></li>
                                    <li><a href="../home/blog.jsp">Blog Single</a></li>
                                </ul>
                            </li>
                            <li><a href="../home/contact.jsp">联系我们</a></li>
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
                    <h2>查看工资记录</h2>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#"><span class="lnr lnr-home"></span></a></li>
                    <li class="breadcrumb-item">统计</li>
                    <li class="breadcrumb-item active">查看工资记录</li>
                </ol>
            </div>
        </div>
        <!-- end row-->
    </div>
</section>
<!-- END PAGE BANNER AND BREADCRUMBS -->


<!-- START lrgz SECTION -->
<section id="lrgz" class="section-padding">
    <div class="auto-container">
        <div class="lrgz-page-top">
            <div class="row">
                <div style="width: 100%" class="container">
                    <form action="ckgzjl.jsp" method="post">
                        <div style="padding-left: 5px"><input name="keywords" style="float: left" type="text"
                                                              placeholder="姓名查询"><input
                                style="float: left;margin-left: 10px;border-style: hidden;color: #4cae4c" type="submit"
                                value="查询"></div>
                    </form>
                    <br>
                    <br>
                    <div style="border-style: solid;padding-right: 5px;padding-left: 5px;width: 100%;height: auto;overflow: scroll">
                        <table style="width: 200%">
                            <tr>
                                <td class="c1">编号</td>
                                <td class="c1">日期</td>
                                <td class="c1">咨询师</td>
                                <td class="c2">项目名称</td>
                                <td class="c3">来访者</td>
                                <td class="1">本月咨询次数</td>
                                <td class="1">单次费用</td>
                                <td class="1">来访者上月结余</td>
                                <td class="1">来访者本月应付</td>
                                <td class="1">来访者本月实付</td>
                                <td class="1">来访者本月结余</td>
                                <td class="1">做账金额</td>
                                <td class="1">咨询总次数</td>
                                <td class="1">分成比例</td>
                                <td class="1">给研究院</td>
                                <td class="1">给咨询师</td>
                                <th class='c5'>操作</th>
                            </tr>
                            <%
                                request.setCharacterEncoding("utf-8");
                                String red = "#ff4d37";
                                String keywords = "";//网页传过来的查询关键字
                                String pgno = "";  //网址中传递的页面数据
                                String pgcnt = ""; //网址传递的每页最大显示数目

                                int RowAmount = 0; //数据库中总的行数
                                int PageAmount = 0; //数据库所有页面可以组成多少个页面
                                int PageSize; //每页最大显示数目
                                int PageNow;  //当前页面
                                ResultSet rs;
                                if (request.getParameter("keywords") != null) {//获取网址传递的查询数据
                                    keywords = request.getParameter("keywords");
                                }
                                if (request.getParameter("pgno") != null) {  //获取从网址传递的数据
                                    pgno = request.getParameter("pgno");
                                } else {
                                    pgno = "1";  //赋给初始值防止没有传入数据时崩溃
                                }
                                PageNow = java.lang.Integer.parseInt(pgno);
                                if (PageNow <= 0) {
                                    PageNow = 1;
                                }

                                if (request.getParameter("pgcnt") != null) {
                                    pgcnt = request.getParameter("pgcnt");
                                } else {
                                    pgcnt = "66";
                                }
                                PageSize = java.lang.Integer.parseInt(pgcnt); //转换为int类型

                                //**连接数据库**
                                try {
                                    if (!keywords.equals("")) {
                                        rs = db.likeQueryGZ("name",keywords);
                                    } else {
                                        rs = db.queryGZ();
                                    }
//                               获取数据库行数
                                    rs.last();
                                    RowAmount = rs.getRow();
//                                计算数据库中数据最大页面数
                                    PageAmount = (RowAmount + PageSize - 1) / PageSize;
                                    if (PageNow > PageAmount) {
                                        PageNow = PageAmount;
                                    }
//            将当前的rs指针指向要显示的页面首条数据
                                    if (PageAmount > 0) {
                                        rs.absolute((PageNow - 1) * PageSize + 1);
                                    }
//            循环获取数据
                                    for (int i = 0; i < PageSize && !rs.isAfterLast(); i++) {
                                        if (Integer.parseInt(rs.getString("id")) % 2 == 0) {
                                            red = "#FFF";
                                        } else {
//                                            red = "#ff4d37";//红色
                                            red = "#FFF";
                                        }
                            %>
                            <tr>
                                <td><%=rs.getString("id")%></td>
                                <td><%=rs.getString("date")%></td>
                                <td><%=rs.getString("name")%></td>
                                <td><%=rs.getString("type")%></td>
                                <td><%=rs.getString("visitor")%></td>
                                <td><%=rs.getString("times")%></td>
                                <td><%=rs.getString("price")%></td>
                                <td><%=rs.getString("lastbalance")%></td>
                                <td><%=rs.getString("totalprice")%></td>
                                <td><%=rs.getString("pay")%></td>
                                <td><%=rs.getString("balance")%></td>
                                <td><%=rs.getString("zzje")%></td>
                                <td><%=rs.getString("zcs")%></td>
                                <td><%=rs.getString("fcbl")%></td>
                                <td><%=rs.getString("school")%></td>
                                <td><%=rs.getString("income")%></td>
                                <td>
                                    <a style="color: #ff2525">
                                        <input type="button" onclick="delJL('gz',<%=rs.getInt("id")%>)" value="删除" id="<%=rs.getString("id")%>">
                                    </a>
                                </td>
                            </tr>
                            <%
                                        rs.next();
                                    }
                                    rs.close();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                        </table>
                    </div>

                    <br>

                    <div style="padding-right: 20px;padding-left: 20px">
                        <div style="float: left;width: 20px">
                            <a href="lrgz.jsp"><input style="color: #ff4828" type="submit" value="添加记录"
                                                      class="btn btn-primary"></a>
                        </div>
                        <div style="float: right">
                            <a href="ckgzjl.jsp?pgno=<%=PageNow-1 %>&pgcnt=66" class="action-button"><input
                                    style="color: #4cae4c" type="submit" value="上一页" class="btn btn-primary"></a>
                        </div>
                        <div style="float: right;margin-right: 5px">
                            <a href="ckgzjl.jsp?pgno=<%=PageNow+1 %>&pgcnt=66"><input style="color: #4cae4c"
                                                                                      type="submit" value="下一页"
                                                                                      class="btn btn-primary"></a>
                        </div>
                    </div>

                    <br><br>
                    <br><br>

                    <p>页数:<%=PageAmount %>/<%=PageNow%>&nbsp;&nbsp;&nbsp;总卡数:<%=RowAmount %>
                    </p>

                </div>
            </div>
        </div>
    </div>
    <!--- END CONTAINER -->
</section>
<!-- END lrgz SECTION -->


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
                            <img class="img-fluid" src="../home/assets/img/app-google.png" alt="">
                        </a>
                        <a href="#">
                            <img class="img-fluid" src="../home/assets/img/app-apple.png" alt="">
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
<script src="../home/assets/js/jquery-1.8.3.min.js"></script>
<!-- popper js -->
<script src="../home/assets/bootstrap/js/popper.min.js"></script>
<!-- Latest compiled and minified Bootstrap -->
<script src="../home/assets/bootstrap/js/bootstrap.min.js"></script>
<!-- meanmenu min js  -->
<script src="../home/assets/js/jquery.meanmenu.min.js"></script>
<!-- Sticky JS -->
<script src="../home/assets/js/jquery.sticky.js"></script>
<!-- gijgo js  -->
<script src="../home/assets/js/gijgo.js"></script>
<!-- owl-carousel min js  -->
<script src="../home/assets/owlcarousel/js/owl.carousel.min.js"></script>
<!-- jquery appear js  -->
<script src="../home/assets/js/jquery.appear.js"></script>
<!-- countTo js -->
<script src="../home/assets/js/jquery.inview.min.js"></script>
<!-- jquery mixitup js -->
<script src="../home/assets/js/jquery.mixitup.min.js"></script>
<!-- venobox js -->
<script src="../home/assets/venobox/js/venobox.min.js"></script>
<!-- scrolltopcontrol js -->
<script src="../home/assets/js/scrolltopcontrol.js"></script>
<!-- WOW - Reveal Animations When You Scroll -->
<script src="../home/assets/js/wow.min.js"></script>
<!-- form-contact js -->
<script src="../home/assets/js/form-contact.js"></script>
<!-- scripts js -->
<script src="../home/assets/js/scripts.js"></script>
</body>
<script>
    //滚动时保存滚动位置
    $(window).scroll(function(){
        if($(document).scrollTop()!=0){
            sessionStorage.setItem("offsetTop", $(window).scrollTop());
        }
    });
    //onload时，取出并滚动到上次保存位置
    window.onload = function(){
        var offset = sessionStorage.getItem("offsetTop");
        $(document).scrollTop(offset);
    };



    function delJL(tableName,id) {
        if (document.getElementById(id).getAttribute("value") === "已删除"){
            alert("该记录已经被删除！");
        }else if (confirm('确定要删除这个条记录吗？')){
            document.getElementById(id).setAttribute("value","已删除");
            test(tableName,id);
        }
    }


    function test(tableName,id) {
        $.ajax({
            url:"scjl.jsp",
            type:"POST",
            data:{tableName:tableName,id:id},
            success:function(){
                alert("删除成功");
            }

        })
    }
</script>
</html>