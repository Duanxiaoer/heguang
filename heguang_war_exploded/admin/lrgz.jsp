<%@ page import="java.io.PrintWriter" %>
<%@ page import="heguang.org.cn.DB" %>
<html lang="zxx">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="shortcut icon" type="image/x-icon" href="../home/assets/img/favicon.ico" />
    <title></title>
    <!-- Bootstrap core CSS -->
    <link href="../home/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Font  -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600,700|Raleway:400,400i,500i,600,700" rel="stylesheet"> 
    <!-- flaticon icon -->
    <link rel="stylesheet" href="../home/assets/fonts/icon-font.min.css">
    <!-- icofont icon -->
    <link rel="stylesheet" href="../home/assets/fonts/icofont.css">
    <!--- meanmenu Css-->
    <link rel="stylesheet" href="../home/assets/css/meanmenu.min.css" media="all" />
    <!-- animate CSS -->
    <link rel="stylesheet" href="../home/assets/css/animate.css">
    <!--- owl carousel Css-->
    <link rel="stylesheet" href="../home/assets/owlcarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../home/assets/owlcarousel/css/owl.theme.default.min.css">
    <!-- venobox -->
    <link rel="stylesheet" href="../home/assets/venobox/css/venobox.css" />
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

		a:link, a:visited {
			color: red;
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
								<img class="img-fluid" src="../home/assets/img/logo.jpeg" alt="">
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
						<h2>录入工资</h2>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-12 col-12">
					<ol class="breadcrumb">
					  <li class="breadcrumb-item"><a href="#"><span class="lnr lnr-home"></span></a></li>
					  <li class="breadcrumb-item">统计</li>
					  <li class="breadcrumb-item active">人工录入</li>
					</ol>
				</div>
			</div>
			<!-- end row-->
		</div>
	</section>
	<!-- END PAGE BANNER AND BREADCRUMBS -->
	
	
	<!-- START lrgz SECTION -->
    <section id="lrgz" class="section-padding">
        <div class="auto-container" style="text-align: center">
			<form method="post" action="submitGZJL.jsp">
				<div style="margin-left:5px;width:100%;overflow: scroll">
					<table style="width: 100%">
						<tr>
							<th class="c1">序号</th>
							<th class="c1">咨询师</th>
							<th class="c2">项目名称</th>
							<th class="c3">来访者</th>
							<th class="c1">本月咨询次数</th>
							<th class="1">单次费用</th>
							<th class="1">来访者上月结余</th>
							<th class="1">来访者本月应付</th>
							<th class="1">来访者本月实付</th>
							<th class="1">来访者本月结余</th>
							<th class="1">做账金额</th>
							<th class="1">咨询总次数</th>
							<th class="1">分成比例(0~1)</th>
							<th class="1">给研究院</th>
							<th class="1">给咨询师</th>
							<th class="1">日期</th>
						</tr>
						<tr>
							<td class="c1"><input type="text" style="text-align: center" placeholder="1" disabled></td>
							<td class="c1"><input type="text" name="name" ></td>
							<td class="c2"><input type="text" name="xmmc"></td>
							<td class="c3"><input type="text" name="lfz"></td>
							<td class="c1"><input type="number" id="byzxcs" name="byzxcs" onchange="getByyf()"></td>
							<td class="c1"><input type="text" id="dcfy" name="dcfy" onchange="getByyf()"/></td>
							<td class="c1"><input type="number" name="syjy"></td>
							<td class="c1"><input type="text" id="byyf" name="byyf" readonly="readonly"/></td>
							<td class="c1"><input type="number" name="bysf" /></td>
							<td class="c1"><input type="number"  name="byjy"></td>
							<td class="c1"><input type="number" id="zzje" name="zzje" onchange="getFenpei()"></td>
							<td class="c1"><input type="number" name="zcs"></td>
							<td class="c1"><input type="number" id="fcbl" name="fcbl" onchange="getFenpei()"></td>
							<td class="c1"><input type="number" id="out" name="out" readonly="readonly"></td>
							<td class="c1"><input type="number" id="income" name="income" readonly="readonly"></td>
							<td class="c1"><input type="month" name="date"></td>
						</tr>
						<tr>
							<td class="c1"><input type="text" style="text-align: center" placeholder="2" disabled></td>
							<td class="c1"><input type="text" name="name1"></td>
							<td class="c2"><input type="text" name="xmmc1"></td>
							<td class="c3"><input type="text" name="lfz1"></td>
							<td class="c1"><input type="number" id="byzxcs1" name="byzxcs1" onchange="getByyf1()"></td>
							<td class="c1"><input type="text" id="dcfy1" name="dcfy1" onchange="getByyf1()"/></td>
							<td class="c1"><input type="number" name="syjy1"></td>
							<td class="c1"><input type="text" id="byyf1" name="byyf1" readonly="readonly"/></td>
							<td class="c1"><input type="number" name="bysf1" /></td>
							<td class="c1"><input type="number"  name="byjy1"></td>
							<td class="c1"><input type="number" id="zzje1" name="zzje1" onchange="getFenpei1()"></td>
							<td class="c1"><input type="number" name="zcs1"></td>
							<td class="c1"><input type="number" id="fcbl1" name="fcbl1" onchange="getFenpei1()"></td>
							<td class="c1"><input type="number" id="out1" name="out1" readonly="readonly"></td>
							<td class="c1"><input type="number" id="income1" name="income1" readonly="readonly"></td>
							<td class="c1"><input type="month" name="date1"></td>
						</tr>
						<tr>
							<td class="c1"><input type="text" style="text-align: center"  placeholder="3" disabled></td>
							<td class="c1"><input type="text" name="name2"></td>
							<td class="c2"><input type="text" name="xmmc2"></td>
							<td class="c3"><input type="text" name="lfz2"></td>
							<td class="c1"><input type="number" id="byzxcs2" name="byzxcs2" onchange="getByyf2()"></td>
							<td class="c1"><input type="text" id="dcfy2" name="dcfy2" onchange="getByyf2()"/></td>
							<td class="c1"><input type="number" name="syjy2"></td>
							<td class="c1"><input type="text" id="byyf2" name="byyf2" readonly="readonly"/></td>
							<td class="c1"><input type="number" name="bysf2" /></td>
							<td class="c1"><input type="number"  name="byjy2"></td>
							<td class="c1"><input type="number" id="zzje2" name="zzje2" onchange="getFenpei2()"></td>
							<td class="c1"><input type="number" name="zcs2"></td>
							<td class="c1"><input type="number" id="fcbl2" name="fcbl2" onchange="getFenpei2()"></td>
							<td class="c1"><input type="number" id="out2" name="out2" readonly="readonly"></td>
							<td class="c1"><input type="number" id="income2" name="income2" readonly="readonly"></td>
							<td class="c1"><input type="month" name="date2"></td>
						</tr>
						<tr>
							<td class="c1"><input type="text" style="text-align: center"  placeholder="4" disabled></td>
							<td class="c1"><input type="text" name="name3"></td>
							<td class="c2"><input type="text" name="xmmc3"></td>
							<td class="c3"><input type="text" name="lfz3"></td>
							<td class="c1"><input type="number" id="byzxcs3" name="byzxcs3" onchange="getByyf3()"></td>
							<td class="c1"><input type="text" id="dcfy3" name="dcfy3" onchange="getByyf3()"/></td>
							<td class="c1"><input type="number" name="syjy3"></td>
							<td class="c1"><input type="text" id="byyf3" name="byyf3" readonly="readonly"/></td>
							<td class="c1"><input type="number" name="bysf3" /></td>
							<td class="c1"><input type="number"  name="byjy3"></td>
							<td class="c1"><input type="number" id="zzje3" name="zzje3" onchange="getFenpei3()"></td>
							<td class="c1"><input type="number" name="zcs3"></td>
							<td class="c1"><input type="number" id="fcbl3" name="fcbl3" onchange="getFenpei3()"></td>
							<td class="c1"><input type="number" id="out3" name="out3" readonly="readonly"></td>
							<td class="c1"><input type="number" id="income3" name="income3" readonly="readonly"></td>
							<td class="c1"><input type="month" name="date3"></td>
						</tr>
						<tr>
							<td class="c1"><input type="text" style="text-align: center" placeholder="5" disabled></td>
							<td class="c1"><input type="text" name="name4"></td>
							<td class="c2"><input type="text" name="xmmc4"></td>
							<td class="c3"><input type="text" name="lfz4"></td>
							<td class="c1"><input type="number" id="byzxcs4" name="byzxcs4" onchange="getByyf4()"></td>
							<td class="c1"><input type="text" id="dcfy4" name="dcfy4" onchange="getByyf4()"/></td>
							<td class="c1"><input type="number" name="syjy4"></td>
							<td class="c1"><input type="text" id="byyf4" name="byyf4" readonly="readonly"/></td>
							<td class="c1"><input type="number" name="bysf4" /></td>
							<td class="c1"><input type="number"  name="byjy4"></td>
							<td class="c1"><input type="number" id="zzje4" name="zzje4" onchange="getFenpei4()"></td>
							<td class="c1"><input type="number" name="zcs4"></td>
							<td class="c1"><input type="number" id="fcbl4" name="fcbl4" onchange="getFenpei4()"></td>
							<td class="c1"><input type="number" id="out4" name="out4" readonly="readonly"></td>
							<td class="c1"><input type="number" id="income4" name="income4" readonly="readonly"></td>
							<td class="c1"><input type="month" name="date4"></td>
						</tr>
					</table>
				</div>
				<br>
				<div style="position: center">
					<input type="submit" value="提交" onclick="check()" class="btn btn-primary" style="background-color: #ff4202">
				</div>
			</form>
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
                            <p>四川和光临床心理学研究院成立于2016年9月，是合法注册的临床心理学专业研究机构。研究院以促进大众心理健康和构建和谐社会为愿景，集国内外精神分析领域的专业资源与专业人才之力，努力发展成为国内一流的临床服务、人才培养和学术交流的中心。</p>
                            <p>研究院拥有一支专业的心理咨询师、心理督导师、精神分析师队伍，拥有一批国内外高水平的临床心理学教员。与美国、加拿大、以色列等国家的多个精神分析机构以及国内的多所高校、医院、协会等保持密切的专业合作与交流。在各方资源的支持下，研究院致力于不断推动本地区临床心理学事业的发展，竭诚提供优质的临床心理学服务</p>
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

    function getByyf(){
        var cs = document.getElementById('byzxcs').value;
        var dcfy = document.getElementById('dcfy').value;
        if (cs!==""&&dcfy!==""){
        	document.getElementById('byyf').value = cs*dcfy;
		}
    }
    function getFenpei(){
        var zzje = document.getElementById('zzje').value;
        var fcbl = document.getElementById('fcbl').value;
        if (zzje!==""&&fcbl!==""){
        	document.getElementById('out').value = zzje*fcbl;
        	document.getElementById('income').value = zzje-zzje*fcbl;
		}
    }
    function getByyf1(){
        var cs = document.getElementById('byzxcs1').value;
        var dcfy = document.getElementById('dcfy1').value;
        if (cs!==""&&dcfy!==""){
        	document.getElementById('byyf1').value = cs*dcfy;
		}
    }
    function getFenpei1(){
        var zzje = document.getElementById('zzje1').value;
        var fcbl = document.getElementById('fcbl1').value;
        if (zzje!==""&&fcbl!==""){
        	document.getElementById('out1').value = zzje*fcbl;
        	document.getElementById('income1').value = zzje-zzje*fcbl;
		}
    }
    function getByyf2(){
        var cs = document.getElementById('byzxcs2').value;
        var dcfy = document.getElementById('dcfy2').value;
        if (cs!==""&&dcfy!==""){
        	document.getElementById('byyf2').value = cs*dcfy;
		}
    }
    function getFenpei2(){
        var zzje = document.getElementById('zzje2').value;
        var fcbl = document.getElementById('fcbl2').value;
        if (zzje!==""&&fcbl!==""){
        	document.getElementById('out2').value = zzje*fcbl;
        	document.getElementById('income2').value = zzje-zzje*fcbl;
		}
    }
    function getByyf3(){
        var cs = document.getElementById('byzxcs3').value;
        var dcfy = document.getElementById('dcfy3').value;
        if (cs!==""&&dcfy!==""){
        	document.getElementById('byyf3').value = cs*dcfy;
		}
    }
    function getFenpei3(){
        var zzje = document.getElementById('zzje3').value;
        var fcbl = document.getElementById('fcbl3').value;
        if (zzje!==""&&fcbl!==""){
        	document.getElementById('out3').value = zzje*fcbl;
        	document.getElementById('income3').value = zzje-zzje*fcbl;
		}
    }
    function getByyf4(){
        var cs = document.getElementById('byzxcs4').value;
        var dcfy = document.getElementById('dcfy4').value;
        if (cs!==""&&dcfy!==""){
        	document.getElementById('byyf4').value = cs*dcfy;
		}
    }
    function getFenpei4(){
        var zzje = document.getElementById('zzje4').value;
        var fcbl = document.getElementById('fcbl4').value;
        if (zzje!==""&&fcbl!==""){
        	document.getElementById('out4').value = zzje*fcbl;
        	document.getElementById('income4').value = zzje-zzje*fcbl;
		}
    }

    function check() {
        var f = confirm("请确认信息无误,名字不能少于两个字，一条记录必需包含姓名，收入和日期。名字为空的记录将不会录入。");
        if (f===true){
            $('form').unbind('submit');
            $('form').submit();
        } else {
            $('form').bind('submit',function (event) {
                event.preventDefault();
            })
        }
    }
</script>
</html>