<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="net.sf.json.JSONObject" %>
<%@ page import="heguang.org.cn.Util" %>
<%@ page import="net.sf.json.JSONArray" %>
<%@ page import="heguang.org.cn.DB" %><%--
  Created by IntelliJ IDEA.
  User: duanqifeng
  Date: 2019/1/13
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("zxsName")==null){
        PrintWriter writer = response.getWriter();
        writer.print("<script>window.location = '../home/index.jsp'</script>");
    }

    String readOnly = "readOnly";

    DB db = new DB();
    db.connectToDB();

%>

<html lang="zxx">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="shortcut icon" type="image/x-icon" href="../home/assets/img/favicon.ico"/>
    <title></title>
    <!-- Bootstrap core CSS -->
    <link href="../home/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Font  -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600,700|Raleway:400,400i,500i,600,700"
          rel="stylesheet">
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
                                String name = "游客",email = "";
                                if (session.getAttribute("zxsName") != null) {
                                    name = (String) session.getAttribute("zxsName");
                                    email = (String) session.getAttribute("email");

                                    int canBJZL = db.queryZxsByEmail(email);
                                    readOnly="readonly";
                                    if(canBJZL==1){
                                        readOnly="";
                                    }
                            %>
                            <li><a href="#"><%=name%>
                            </a></li>
                            <li><a href="#">个人主页 </a></li>
                            <li><a href="#">联系我们 </a></li>
                            <%
                            } else {
                            %>
                            <li><a href="../login/login.html">登录</a></li>
                            <li><a href="../login/signup.html">注册</a></li>
                            <li><a href="#">预约 </a></li>
                            <li><a href="#">联系我们 </a></li>
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
                        <a class="header-quote-btn" href="#">立即预约 <i class="icofont icofont-caret-right"></i></a>
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
                                <li><a href="../home/index.jsp" class="nav-link">主页</a></li>
                                <li class="dropdown"><a href="../home/about.jsp" class="nav-link">关于我们</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="../home/about.jsp">关于和光</a></li>
                                        <li><a href="../home/doctors.jsp">团队</a></li>
                                        <li><a href="../home/single-doctor.jsp">医师列表</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="../home/services.jsp" class="nav-link">临床训练</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="../home/single-service.jsp">Accident & Emergency</a></li>
                                        <li><a href="../home/single-service.jsp">Health checks</a></li>
                                        <li><a href="../home/single-service.jsp">Home Care</a></li>
                                        <li><a href="../home/single-service.jsp">Diabetes & Endocrinology</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown"><a href="#" class="nav-link">服务</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="../home/appointment.jsp">预约</a></li>
                                        <li><a href="../home/testimonial.jsp">测试</a></li>
                                        <li><a href="../home/new-patient.jsp">就诊</a></li>
                                        <li><a href="../home/faq.jsp">疑问</a></li>
                                        <li><a href="../home/reports.jsp">就诊报告</a></li>
                                        <li><a href="../home/404.jsp">404 Page</a></li>
                                    </ul>
                                </li>
                                <li><a href="../home/news.jsp" class="nav-link">风采</a></li>
                                <li><a href="../home/blog.jsp" class="nav-link">新闻</a></li>
                                <li><a href="../home/contact.jsp" class="nav-link">加入我们</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3 col-md-12 d-lg-block d-md-none d-none">
                        <nav class="navbar navbar-expand-lg justify-content-end">
                            <ul class="navbar-nav">
                                <li class="dropdown quick-search"><a href="#" class="nav-link">我想</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#"><i class="icofont icofont-doctor-alt"></i> 找位医师</a></li>
                                        <li><a href="#"><i class="icofont icofont-ui-calendar"></i> 预约医师</a></li>
                                        <li><a href="#"><i class="icofont icofont-medical-sign"></i> 预定测试</a></li>
                                        <li><a href="#"><i class="icofont icofont-prescription"></i> 申请报告 </a></li>
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
                                    <li><a href="../home/index-3.html">Home 3</a></li>
                                    <li><a href="../home/index-4.html">Home 4</a></li>
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
                    <h2>编辑个人资料</h2>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#"><span class="lnr lnr-home"></span></a></li>
                    <li class="breadcrumb-item">咨询师</li>
                    <li class="breadcrumb-item active">编辑个人资料</li>
                </ol>
            </div>
        </div>
        <!-- end row-->
    </div>
</section>
<!-- END PAGE BANNER AND BREADCRUMBS -->

<!-- START SINGLE DOCTOR SECTION -->
<section id="singledoctor" style="padding-top: 10px" class="section-padding doctor-page">
    <div class="auto-container">
        <div class="row">
            <div style="width: 100%" class="row">
                <div style="float: left;width: 25%;margin-left: 2%;margin-right: 2%">
                    <div style="height: fit-content;width: fit-content;min-height: 250px;min-width: 200px"
                         class="single-doctor single-doctor-warp">
                        <img id="img"  src="../upload/img/<%=name%>.jpg" class="img-fluid" alt="">
                        <div class="single-doctor-info">
                            <h4 id="name"><%=name%>
                            </h4>
                            <span id="type">Ophthalmologist</span>
                            <span hidden id="email"><%=email%></span>
                        </div>
                        <div class="single-doctor-mask">
                            <div class="single-doctor-mask-inner">
                                <h5>更换照片</h5>
                                <form method="post" action="${pageContext.request.contextPath}/UploadPersonImg" enctype="multipart/form-data">
                                    <input type="file" name="uploadFile"/>
                                    <br/><br/>
                                    <input type="submit" value="上传"/>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="float: right;width: 70%;">
                    <div class="doctor-schedule">
                        <h4>个人简介</h4>
                        <hr>
                        <form id="zczl" action="#" onsubmit="return false" method="post">
                            <table>
                                <%
                                    Util readzl = new Util();
                                    String webPath = application.getRealPath("/");
                                    JSONObject object = JSONObject.fromObject(readzl.readZl(name,webPath));

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
                                <tr>
                                    <td style="width: fit-content;height: auto;text-align: center;">职称/资质</td>
                                    <td style="width: auto;height: auto"><textarea name="zc"
                                            style="height: 100px;width: 100%;border-style: solid" <%=readOnly%> ><%=zc%></textarea></td>
                                </tr>
                                <tr>
                                    <td style="width: fit-content;height: auto;text-align: center">擅长领域</td>
                                    <td style="width: auto;height: auto"disabled="">
                                        <textarea name="scly" style="height: 100px;width: 100%;border-style: solid" <%=readOnly%> ><%=scly%></textarea></td>
                                </tr>
                            </table>
                        </form>
                        <br>
                        <h4>咨询时间</h4>
                        <hr>
                        <table>
                            <tr>
                                <th onclick="addSparetime(107)">星期日</th>
                                <th onclick="addSparetime(101)">星期一</th>
                                <th onclick="addSparetime(102)">星期二</th>
                                <th onclick="addSparetime(103)">星期三</th>
                                <th onclick="addSparetime(104)">星期四</th>
                                <th onclick="addSparetime(105)">星期五</th>
                                <th onclick="addSparetime(106)">星期六</th>
                            </tr>

                            <tr>
                                <%
                                    Date nowDate = new Date();
                                    Calendar ca = Calendar.getInstance();
                                    ca.setTime(nowDate);

                                    SimpleDateFormat hs = new SimpleDateFormat("YYMMdd");
                                    SimpleDateFormat xq = new SimpleDateFormat("E");

                                    int count = 28;//显示的总天数

                                    while (!xq.format(ca.getTime()).equals("星期日") && !xq.format(ca.getTime()).equals("Sun")) {//找到上一个星期日
                                        ca.add(Calendar.DATE, -1);//前一天
                                    }
                                    //ca此时的时间为上个周日
                                    while (count > 0) {
                                        int tempDate = Integer.parseInt(hs.format(ca.getTime()));
                                        String tempDateXQ = xq.format(ca.getTime());
                                        String xqa=tempDateXQ.split("A")[0];
                                        switch (xqa){
                                            case "Mon":
                                            case "星期一":
                                                xqa = "101";
                                                break;
                                            case "Tue":
                                            case "星期二":
                                                xqa = "102";
                                                break;
                                            case "Wed":
                                            case "星期三":
                                                xqa = "103";
                                                break;
                                            case "Thu":
                                            case "星期四":
                                                xqa = "104";
                                                break;
                                            case "Fri":
                                            case "星期五":
                                                xqa = "105";
                                                break;
                                            case "Sat":
                                            case "星期六":
                                                xqa= "106";
                                                break;
                                            case "Sun":
                                            case "星期日":
                                                xqa = "107";
                                                break;
                                        }
                                        String color = "grey";
                                        if (ca.getTime().compareTo(nowDate) > 0) {
                                            color="red";

                                            JSONArray jsonArray = db.queryZxsTimeByTime(email,""+tempDate);
                                            for (int i=0;i<jsonArray.size();++i){
                                                if(jsonArray.getJSONObject(i).get("bz").toString().equals("")){
                                                    color="green";
                                                    break;
                                                }
                                                color="blue";
                                            }
                                            if(jsonArray.size()==0){
                                                JSONArray jsonArray1 = db.queryZxsTimeByTime(email, xqa);
                                                for(int i=0;i<jsonArray1.size();i++){
                                                    if(jsonArray1.getJSONObject(i).get("bz").toString().equals("")){
                                                        color="green";
                                                        break;
                                                    }
                                                    color="blue";
                                                }
                                            }

                                        }
                                %>
                                <td style="text-align: center;" id="<%=tempDateXQ%>A<%=tempDate%>"
                                    onclick="addSparetime(<%=tempDate%>,this)"><a
                                        style="text-align: center;color: <%=color%>;"><%=tempDate%100%>
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
                        <div style="overflow: scroll">
                            <table id="alltime">

                            </table>
                        </div>
                        <div id="sparetime">
                        </div>
                    </div>
                </div>
            </div>
            <div style="width: 100%;" class="row mt-5">
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
                    <form id="gzjy" action="#" onsubmit="return false" method="post">
                        <div id="tabsJustifiedContent" class="tab-content mt-4">
                            <div id="one" class="tab-pane animated fadeInRight active show">
                                <textarea name="gzjy" style="height: 50%;width: 60%;border-style: solid" <%=readOnly%>><%=gzjy%></textarea>
                            </div>
                            <div id="two" class="tab-pane animated fadeInRight">
                                <textarea name="sxbj" style="height: 50%;width: 60%;border-style: solid" <%=readOnly%>><%=sxbj%></textarea>
                            </div>
                            <div id="three" class="tab-pane animated fadeInRight">
                                <textarea name="xshd" style="height: 50%;width: 60%;border-style: solid" <%=readOnly%> ><%=xshd%></textarea>
                                <input type="button" value="提交" onclick="xiugaizl(0)">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
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
<script src="../home/assets/js/jquery-2.2.4.min.js"></script>
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
<!-- jquery mixitup js -->
<script src="../home/assets/js/jquery.mixitup.min.js"></script>
<!-- jquery appear js  -->
<script src="../home/assets/js/jquery.appear.js"></script>
<!-- countTo js -->
<script src="../home/assets/js/jquery.inview.min.js"></script>
<!-- venobox js -->
<script src="../home/assets/venobox/js/venobox.min.js"></script>
<!-- scrolltopcontrol js -->
<script src="../home/assets/js/scrolltopcontrol.js"></script>
<!-- WOW - Reveal Animations When You Scroll -->
<script src="../home/assets/js/wow.min.js"></script>
<!-- scripts js -->
<script src="../home/assets/js/scripts.js"></script>
</body>
<script>
    function addSparetime(date,obj) {
        var tip = date;
        if (tip < 100101) {
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

        var alltime = document.getElementById("alltime");
        var color = "red";
        alltime.innerHTML =
            "<table>" +
            "   <tr>" +
            "       <td style='text-align: center'><a  id='time0' style='color: " + color + "'>0:00</a></td>" +
            "       <td style='text-align: center'><a  id='time1' style='color: " + color + "'>1:00</a></td>" +
            "       <td style='text-align: center'><a  id='time2' style='color: " + color + "'>2:00</a></td>" +
            "       <td style='text-align: center'><a  id='time3' style='color: " + color + "'>3:00</a></td>" +
            "       <td style='text-align: center'><a  id='time4' style='color: " + color + "'>4:00</a></td>" +
            "       <td style='text-align: center'><a  id='time5' style='color: " + color + "'>5:00</a></td>" +
            "       <td style='text-align: center'><a  id='time6' style='color: " + color + "'>6:00</a></td>" +
            "       <td style='text-align: center'><a  id='time7' style='color: " + color + "'>7:00</a></td>" +
            "       <td style='text-align: center'><a  id='time8' style='color: " + color + "'>8:00</a></td>" +
            "       <td style='text-align: center'><a  id='time9' style='color: " + color + "'>9:00</a></td>" +
            "       <td style='text-align: center'><a  id='time10' style='color: " + color + "'>10:00</a></td>" +
            "       <td style='text-align: center'><a  id='time11' style='color: " + color + "'>11:00</a></td>" +
            "   </tr>" +
            "   <tr>" +
            "       <td style='text-align: center'><a  id='info0' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info1' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info2' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info3' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info4' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info5' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info6' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info7' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info8' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info9' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info10' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info11' style='color: " + color + "'></a></td>" +
            "   <tr>" +
            "       <td style='text-align: center'><a  id='time12' style='color: " + color + "'>12:00</a></td>" +
            "       <td style='text-align: center'><a  id='time13' style='color: " + color + "'>13:00</a></td>" +
            "       <td style='text-align: center'><a  id='time14' style='color: " + color + "'>14:00</a></td>" +
            "       <td style='text-align: center'><a  id='time15' style='color: " + color + "'>15:00</a></td>" +
            "       <td style='text-align: center'><a  id='time16' style='color: " + color + "'>16:00</a></td>" +
            "       <td style='text-align: center'><a  id='time17' style='color: " + color + "'>17:00</a></td>" +
            "       <td style='text-align: center'><a  id='time18' style='color: " + color + "'>18:00</a></td>" +
            "       <td style='text-align: center'><a  id='time19' style='color: " + color + "'>19:00</a></td>" +
            "       <td style='text-align: center'><a  id='time20' style='color: " + color + "'>20:00</a></td>" +
            "       <td style='text-align: center'><a  id='time21' style='color: " + color + "'>21:00</a></td>" +
            "       <td style='text-align: center'><a  id='time22' style='color: " + color + "'>22:00</a></td>" +
            "       <td style='text-align: center'><a  id='time23' style='color: " + color + "'>23:00</a></td>" +
            "   </tr>" +
            "   <tr>" +
            "       <td style='text-align: center'><a  id='info12' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info13' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info14' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info15' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info16' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info17' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info18' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info19' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info20' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info21' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info22' style='color: " + color + "'></a></td>" +
            "       <td style='text-align: center'><a  id='info23' style='color: " + color + "'></a></td>" +
            "   </tr>" +
            "</table>";


        querySparetime(date,obj);//加上信息
        var sparetime = document.getElementById("sparetime");
        var tmp = document.createElement('p');
        tmp.innerHTML =
            "<form id='form" + date + "' action='#' onsubmit='return false' method='POST'>" +
            tip + "开始时间：" +
            "<select name='ks'>" +
            "   <option value='1'>1:00</option>" +
            "   <option value='2'>2:00</option>" +
            "   <option value='3'>3:00</option>" +
            "   <option value='4'>4:00</option>" +
            "   <option value='5'>5:00</option>" +
            "   <option value='6'>6:00</option>" +
            "   <option value='7'>7:00</option>" +
            "   <option value='8'>8:00</option>" +
            "   <option value='9'>9:00</option>" +
            "   <option value='10'>10:00</option>" +
            "   <option value='11'>11:00</option>" +
            "   <option value='12'>12:00</option>" +
            "   <option value='13'>13:00</option>" +
            "   <option value='14'>14:00</option>" +
            "   <option value='15'>15:00</option>" +
            "   <option value='16'>16:00</option>" +
            "   <option value='17'>17:00</option>" +
            "   <option value='18'>18:00</option>" +
            "   <option value='19'>19:00</option>" +
            "   <option value='20'>20:00</option>" +
            "   <option value='21'>21:00</option>" +
            "   <option value='22'>22:00</option>" +
            "   <option value='23'>23:00</option>" +
            "   <option value='0'>00:00</option>" +
            "</select>" +
            " 结束时间：" +
            "<select name='js'>" +
            "   <option value='1'>1:00</option>" +
            "   <option value='2'>2:00</option>" +
            "   <option value='3'>3:00</option>" +
            "   <option value='4'>4:00</option>" +
            "   <option value='5'>5:00</option>" +
            "   <option value='6'>6:00</option>" +
            "   <option value='7'>7:00</option>" +
            "   <option value='8'>8:00</option>" +
            "   <option value='9'>9:00</option>" +
            "   <option value='10'>10:00</option>" +
            "   <option value='11'>11:00</option>" +
            "   <option value='12'>12:00</option>" +
            "   <option value='13'>13:00</option>" +
            "   <option value='14'>14:00</option>" +
            "   <option value='15'>15:00</option>" +
            "   <option value='16'>16:00</option>" +
            "   <option value='17'>17:00</option>" +
            "   <option value='18'>18:00</option>" +
            "   <option value='19'>19:00</option>" +
            "   <option value='20'>20:00</option>" +
            "   <option value='21'>21:00</option>" +
            "   <option value='22'>22:00</option>" +
            "   <option value='23'>23:00</option>" +
            "   <option value='0'>00:00</option>" +
            "</select>" +
            " 课次：" +
            "<select name='cs'>" +
            "   <option value='1'>1</option>" +
            "   <option value='2'>2</option>" +
            "   <option value='3'>3</option>" +
            "   <option value='4'>4</option>" +
            "   <option value='5'>5</option>" +
            "</select>" +
            " 间隔：" +
            "<select name='jg'>" +
            "   <option value='5'>5</option>" +
            "   <option value='10'>10</option>" +
            "   <option value='15'>15</option>" +
            "</select>" +
            " 方式：" +
            "<select name='fs'>" +
            "   <option value='面'>面对面</option>" +
            "   <option value='视频'>视频</option>" +
            "   <option value='面/视频'>面对面和视频</option>" +
            "</select>" +
            "<br>" +
            " 客户姓名：" +
            "<input name='bz' type='text' style='border-style: solid' maxlength='50' placeholder='客户姓名（填写之后，此时段不可预约。）'>" +
            "<br>" +
            "<input type='button' value='确定' onclick='setTime(" + date + ")'> " +
            "</form>";
        sparetime.innerHTML = "";
        sparetime.appendChild(tmp);
    }

    function setTime(date) {
        var form = "#form" + date;
        $.ajax({
            type: "POST",
            // dataType:"json",
            url: "/setSparetime",
            data: jQuery.param({date: date}) + "&" + $(form).serialize(),
            success:function(result){
                alert(result);
            }
        })
    }

    function xiugaizl(date) {
        var zczl = "#zczl";
        var gzjy = "#gzjy";
        $.ajax({
            type: "POST",
            // dataType:"json",
            url: "/setSparetime",
            data: jQuery.param({date:date})+"&"+$(zczl).serialize() + "&" + $(gzjy).serialize(),
            success:function(result){
                alert(result);
            }
        })
    }

    function querySparetime(date,obj) {
        var email = document.getElementById("email").innerHTML;
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
                        case "Mon":
                        case "星期一":
                            xq = 101;
                            break;
                        case "Tue":
                        case "星期二":
                            xq = 102;
                            break;
                        case "Wed":
                        case "星期三":
                            xq = 103;
                            break;
                        case "Thu":
                        case "星期四":
                            xq = 104;
                            break;
                        case "Fri":
                        case "星期五":
                            xq = 105;
                            break;
                        case "Sat":
                        case "星期六":
                            xq = 106;
                            break;
                        case "Sun":
                        case "星期日":
                            xq = 107;
                            break;
                    }
                    querySparetimeXQ(xq);
                }else {
                    for (var i=0;i<result.length;++i){
                        var ks = parseInt(result[i].ks);
                        var js = parseInt(result[i].js);

                        while (ks <= js){
                            var kstime = document.getElementById("time"+ks);
                            var ksinfo = document.getElementById("info"+ks);
                            kstime.setAttribute("style","text-align: center;color:green;");
                            ksinfo.setAttribute("style","text-align: center;color:green;");
                            ksinfo.innerHTML = result[i].fs+","+result[i].bz;
                            ks = ks+1;
                        }
                    }
                }
            }
        })
    }

    function querySparetimeXQ(date) {
        var email = document.getElementById("email").innerHTML;
        $.ajax({
            tyep: "post",
            dataType: "json",
            url: "/querySparetime",
            data: {date: date,email:email},
            success: function (result) {
                for (var i=0;i<result.length;++i){
                    var ks = parseInt(result[i].ks);
                    var js = parseInt(result[i].js);
                    while (ks <= js){
                        var kstime = document.getElementById("time"+ks);
                        var ksinfo = document.getElementById("info"+ks);
                        kstime.setAttribute("style","text-align: center;color:green;");
                        ksinfo.setAttribute("style","text-align: center;color:green;");
                        ksinfo.innerHTML = result[i].fs+","+result[i].bz;
                        ks = ks+1;
                    }
                }
            }
        })
    }

</script>
</html>