﻿<%@ page import="heguang.org.cn.DB" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico" />
    <title></title>
    <!-- Bootstrap core CSS -->
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
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
						<h2>Single Blog Post</h2>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-12 col-12">
					<ol class="breadcrumb">
					  <li class="breadcrumb-item"><a href="#"><span class="lnr lnr-home"></span></a></li>
					  <li class="breadcrumb-item">Pages</li>
					  <li class="breadcrumb-item active">Blog</li>
					</ol>
				</div>
			</div>
			<!-- end row-->
		</div>
	</section>
	<!-- END PAGE BANNER AND BREADCRUMBS -->
	
	
	<!-- START BLOG SECTION -->
    <section id="blog" class="section-padding">
        <div class="auto-container">
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-12 col-12">
					<div class="single-blog mb-3">
						<div class="single-blog-img">
							<div class="entry-mark"></div>
							<img class="img-fluid" src="assets/img/blog/de-3.jpg" alt="hash theme">
							<div class="entry-action">
								<a href="#"><i class="icofont icofont-link"></i></a>
							</div>
						</div>
						<div class="single-blog-info mt-5">
							<div class="single-blog-info-img">
								<img class="img-fluid" src="assets/img/team/tes2.jpg" alt="">
								<div class="single-blog-info-pm">
									<i class="icofont icofont-file-image"></i>
								</div>
							</div>
							<div class="single-blog-info-detail">
								<a href="#"><h5>What You Need To Know About Bone Marrow Transplantation</h5></a>
								<div class="single-blog-meta">
									<span class="post-date"><i class="lnr lnr-calendar-full"></i> 12 Apr</span>
									<span class="post-user"><i class="lnr lnr-user"></i> Admin</span>
									<span class="allpost-cata"><i class="lnr lnr-tag"></i>hashtheme, Cleveland</span>
									<span class="post-comment"><i class="lnr lnr-bubble"></i> 3 comments</span>
								</div>
								<p>Pellentesque Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
							 </div>
						</div>	
					</div>
					<strong> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.</strong>
					<div class="single-image-gallery mt-5">	
						<div class="single-image-gallery-img">
							<a href="#"><img class="img-fluid" src="assets/img/gallery/2.jpg" alt=""></a>
							<a href="assets/img/gallery/2.jpg" class="venobox info icon" data-title="PORTFOLIO TITTLE" data-gall="gall1"><i class="icofont icofont-link"></i></a>
						</div>	
						<div class="single-image-gallery-img">
							<a href="#"><img class="img-fluid" src="assets/img/gallery/4.jpg" alt=""></a>
							<a href="assets/img/gallery/4.jpg" class="venobox info icon" data-title="PORTFOLIO TITTLE" data-gall="gall1"><i class="icofont icofont-link"></i></a>									
						</div>	
						<div class="single-image-gallery-img">
							<a href="#"><img class="img-fluid" src="assets/img/gallery/3.jpg" alt=""></a>
							<a href="assets/img/gallery/3.jpg" class="venobox info icon" data-title="PORTFOLIO TITTLE" data-gall="gall1"><i class="icofont icofont-link"></i></a>
						</div>	
						<div class="single-image-gallery-img">
							<a href="#"><img class="img-fluid" src="assets/img/gallery/10.jpg" alt=""></a>
							<a href="assets/img/gallery/10.jpg" class="venobox info icon" data-title="PORTFOLIO TITTLE" data-gall="gall1"><i class="icofont icofont-link"></i></a>
						</div>	
						<div class="single-image-gallery-img">
							<a href="#"><img class="img-fluid" src="assets/img/gallery/5.jpg" alt=""></a>
							<a href="assets/img/gallery/5.jpg" class="venobox info icon" data-title="PORTFOLIO TITTLE" data-gall="gall1"><i class="icofont icofont-link"></i></a>
						</div>
						<div class="single-image-gallery-img">
							<a href="#"><img class="img-fluid" src="assets/img/gallery/1.jpg" alt=""></a>
							<a href="assets/img/gallery/1.jpg" class="venobox info icon" data-title="PORTFOLIO TITTLE" data-gall="gall1"><i class="icofont icofont-link"></i></a>									
						</div>
						<div class="single-image-gallery-img">
							<a href="#"><img class="img-fluid" src="assets/img/gallery/11.jpg" alt=""></a>
							<a href="assets/img/gallery/11.jpg" class="venobox info icon" data-title="PORTFOLIO TITTLE" data-gall="gall1"><i class="icofont icofont-link"></i></a>									
						</div>
						<div class="single-image-gallery-img">
							<a href="#"><img class="img-fluid" src="assets/img/gallery/12.jpg" alt=""></a>
							<a href="assets/img/gallery/12.jpg" class="venobox info icon" data-title="PORTFOLIO TITTLE" data-gall="gall1"><i class="icofont icofont-link"></i></a>									
						</div>
					</div>
					<div class="service-tab-list-wrap">
						<div class="row mt-5">
							<div class="col-lg-12">
								<h4>Lorem ipsum dolor sit amet</h4>
								<hr>
								<p class="mb-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
								<div class="service-tab-list">
									<div class="row mt-3">
										<div class="col-lg-4 col-md-4 col-sm-4 col-12">
											<ul>
												<li><i class="icofont icofont-simple-right"></i> Lorem Ipsum Dollar </li>
												<li><i class="icofont icofont-simple-right"></i> Lorem Ipsum Dollar </li>
												<li><i class="icofont icofont-simple-right"></i> Lorem Ipsum Dollar </li>
												<li><i class="icofont icofont-simple-right"></i> Lorem Ipsum Dollar </li>
											</ul>
										</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-12">
											<ul>
												<li><i class="icofont icofont-simple-right"></i> Lorem Ipsum Dollar </li>
												<li><i class="icofont icofont-simple-right"></i> Lorem Ipsum Dollar </li>
												<li><i class="icofont icofont-simple-right"></i> Lorem Ipsum Dollar </li>
												<li><i class="icofont icofont-simple-right"></i> Lorem Ipsum Dollar </li>
											</ul>
										</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-12">
											<ul>
												<li><i class="icofont icofont-simple-right"></i> Lorem Ipsum Dollar </li>
												<li><i class="icofont icofont-simple-right"></i> Lorem Ipsum Dollar </li>
												<li><i class="icofont icofont-simple-right"></i> Lorem Ipsum Dollar </li>
												<li><i class="icofont icofont-simple-right"></i> Lorem Ipsum Dollar </li>
											</ul>
										</div>
									</div> 
								</div>	
							</div>
						</div>
					</div>
					<div class="service-tab-list-wrap">
						<div class="row mt-4">
							<div class="col-lg-12">
								<h4>Lorem ipsum dolor sit amet</h4>
								<hr>
								<p class="mb-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
								<div class="row mt-3">
									<div class="col-lg-4 col-md-4 col-sm-12 col-12 mb-lg-0 mb-md-0 mb-3">
										<img class="img-fluid" src="assets/img/gallery/8.jpg" alt="">
									</div>
									<div class="col-lg-8 col-md-8 col-sm-12 col-12">
										<blockquote class="blockquote text-left">
										  <p class="mb-0">“The greatest disease in the West today is not TB or leprosy; it is being unwanted, unloved, and uncared for. We can cure physical diseases with medicine, but the only cure for loneliness, despair, and hopelessness is love.”</p>
										  <footer class="blockquote-footer">  Mother Teresa,<cite> Teresa</cite></footer>
										</blockquote>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="blog-single-tag-list mt-5">
						<p>
						    <strong>TAG LISTS:</strong>
							<span>care</span>,
							<span>cancer</span>,
							<span>healthy</span>,
							<span>check</span>,
							<span>general</span>,
							<span>surgery</span>,
							<span>Diabetes</span>,
							<span>Urology</span>
						</p>
					</div>
					<div class="blog-single-prne mt-5">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-12">
								<i class="icofont icofont-hand-left float-left"></i><br>
								<h6 class="text-left" title="Previous Post"><a href="#">Everything You Need To Know About Liver Transplant</a></h6>
							</div>
							<div class="col-lg-6 col-md-6 col-12">
								<i class="icofont icofont-hand-right float-lg-right float-md-right float-left"></i><br>
								<h6 class="text-lg-right text-md-right text-left" title="Next Post"><a href="#">What You Need To Know About Bone Marrow Transplantation</a></h6>
							</div>
						</div>
					</div>
					<div class="blog-single-comment-list mt-5">
						<h4>Comments(3)</h4>
						<hr>
						<div class="commet-list-content">
							<ul class="commentlist">
								<li class="comment">
									<div class="comment-body clearfix">
										<div class="avatar">
											<img alt="" class="avatar" src="assets/img/team/tes1.jpg">
										</div> 
										<div class="comment-text">
											<div class="author">
												<span>
													<a href="#">Jone Doe</a>
												</span>
												<p>December 5, 2018 at 10:20 am
													<a href="#">Reply</a>
												</p>
											</div>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.</p>
										</div> 
									</div> 
									<ul class="children">
										<li class="comment">
											<div class="comment-body clearfix">
												<div class="avatar">
													<img alt="" class="avatar avatar-50 photo avatar-default" src="assets/img/team/tes2.jpg">
												</div> 
												<div class="comment-text">
													<div class="author">
														<span>
														<a href="#">Mat Doe</a>
														</span>
														<p>December 6, 2018 at 20:40 am
															<a href="#">Reply</a>
														</p>
													</div>
													<p>Lorem ipsum dolor sit consecte adipiscing elit, sed do eiusmod tempor incididunt ut labore et.</p>
												</div> 
											</div> 
										</li> 
									</ul> 
								</li> 
								<li class="comment">
									<div class="comment-body clearfix">
										<div class="avatar">
											<img alt="" class="avatar avatar-50 photo avatar-default" src="assets/img/team/tes3.jpg">
										</div> 
										<div class="comment-text">
											<div class="author">
												<span>
												<a href="#">Stepen Doe</a>
												</span>
												<p>December 7, 2018 at 15:44 pm
													<a href="#">Reply</a>
												</p>
											</div>
											<p>Pellentesque Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.</p>
										</div> 
									</div> 
								</li> 
							</ul>
						</div>
					</div>
					<div class="blog-single-comment-form mt-5">
						<h4>Leave a Message</h4>
						<hr>
						<div class="blog-single-cform">
							<form action="#">
								<div class="row">
									<div class="form-group col-lg-4">
										<span class="form-icon"><i class="icofont icofont-user-alt-5"></i></span>
										<input name="aname" class="form-control form-controlb" id="afirst-name" placeholder="Your Name" required="required" type="text">
									</div>
									<div class="form-group col-lg-4">
										<span class="form-icon"><i class="icofont icofont-envelope"></i></span>
										<input name="aemail" class="form-control form-controlb" id="aemail" placeholder="Your Email" required="required" type="email">
									</div>
									<div class="form-group col-lg-4">
										<span class="form-icon"><i class="icofont icofont-globe"></i></span>
										<input name="website" class="form-control form-controlb" id="website" placeholder="Your Website" required="required" type="text">
									</div>
									<div class="form-group col-lg-12">
									<textarea rows="6" name="rmessage" class="form-control" id="adescription" placeholder="Your Message Here..." required="required"></textarea>
									</div>
									<div class="form-group col-lg-6">
										<a title="Click here to submit your message!" class="btn btn-lg btn-app-form">Send Message</a>
									</div>
								</div>
							</form>
						</div>	
					</div>
				</div>
				<!-- end col -->
				<aside class="col-lg-4 col-md-4 col-sm-12 col-12 pl-lg-5 pl-md-5 pl-sm-2 pl-2 mt-lg-0 mt-md-0 mt-sm-0 mt-5">
					<div class="sidebar-widget">
							<h5 class="widget-title">Blog Serach</h5>
							<!-- end widget tittle-->
							<div class="blog-side-search">
							    <p>Lorem ipsum dolor sit amet, consectetur</p>
								<form>
									<div class="row">
										<div class="form-group col-12">
											<input class="form-control" name="searcher" placeholder="Search..." type="text">
										</div>
										<button type="submit" class="btn blg-se-btn"><i class="icofont icofont-search-alt-2"></i></button>
									</div>
								</form>
							</div>	
					</div>
					<!-- end widget -->
					<div class="sidebar-widget">
							<h5 class="widget-title">Recent Post</h5>
							<!-- end widget tittle-->
							<div class="recent-post">
								<div class="single-recent-post">
									<a href="#"><img class="img-fluid" src="assets/img/gallery/4.jpg" alt=""></a>
									<a href="#" class="icon"><i class="icofont icofont-link"></i></a>									
								</div>	
								<div class="single-recent-post">
									<a href="#"><img class="img-fluid" src="assets/img/gallery/3.jpg" alt=""></a>
									<a href="#" class="icon"><i class="icofont icofont-link"></i></a>
								</div>	
								<div class="single-recent-post">
									<a href="#"><img class="img-fluid" src="assets/img/gallery/5.jpg" alt=""></a>
									<a href="#" class="icon"><i class="icofont icofont-link"></i></a>
								</div>	
							</div>
					</div>
					<!-- end widget -->
					<div class="sidebar-widget">
							<h5 class="widget-title">Popular Categories</h5>
							<!-- end widget tittle-->
							<div class="servide-list">
								<ul>
									<li><a href="#"><i class="icofont icofont-rounded-right"></i> Home Care (2)</a> </li>
									<li><a href="#"><i class="icofont icofont-rounded-right"></i> Cancer Care (3)</a> </li>
									<li><a href="#"><i class="icofont icofont-rounded-right"></i> Accident &amp; Emergency (5)</a> </li>
									<li><a href="#"><i class="icofont icofont-rounded-right"></i> Health checks (8)</a> </li>
								</ul>
							</div>	
					</div>
					<!-- end widget -->
					<div class="sidebar-widget">
							<h5 class="widget-title">Recent Comment</h5>
							<!-- end widget tittle-->
							<div class="servide-list">
								<ul>
									<li>
										<span class="comment-author-link"><a href="#"><i class="icofont icofont-comment"></i>  A Commenter</a></span>
										<span>on</span>
										<a href="#">Hello world!</a>
									</li>
									<li>
										<span class="comment-author-link"><a href="#"><i class="icofont icofont-comment"></i>  A Commenter</a></span>
										<span>on</span>
										<a href="#">Hello world!</a>
									</li>
									<li>
										<span class="comment-author-link"><a href="#"><i class="icofont icofont-comment"></i>  A Commenter</a></span>
										<span>on</span>
										<a href="#">Hello world!</a>
									</li>
									<li>
										<span class="comment-author-link"><a href="#"><i class="icofont icofont-comment"></i>  A Commenter</a></span>
										<span>on</span>
										<a href="#">Hello world!</a>
									</li>
								</ul>
							</div>	
					</div>
					<!-- end widget -->
					<div class="sidebar-widget">
							<h5 class="widget-title">Tag List</h5>
							<!-- end widget tittle-->
							<div class="tags-lists">
								<span><a href="#">cancer</a></span>
								<span><a href="#">care</a></span>
								<span><a href="#">healthy</a></span>
								<span><a href="#">check</a></span>
								<span><a href="#">general</a></span>
								<span><a href="#">surgery</a></span>
								<span><a href="#">Diabetes</a></span>
								<span><a href="#">Urology</a></span>
							</div>
					</div>
					<!-- end widget -->
					<div class="sidebar-widget">
							<h5 class="widget-title">Flickr Feed</h5>
							<!-- end widget tittle-->
							<div class="recent-post">
								<div class="single-recent-post">
									<a href="#"><img class="img-fluid" src="assets/img/gallery/4.jpg" alt=""></a>
									<a href="assets/img/gallery/4.jpg" class="venobox info icon" data-title="FLICKR TITTLE" data-gall="gall1"><i class="icofont icofont-link"></i></a>									
								</div>	
								<div class="single-recent-post">
									<a href="#"><img class="img-fluid" src="assets/img/gallery/3.jpg" alt=""></a>
									<a href="assets/img/gallery/3.jpg" class="venobox info icon" data-title="FLICKR TITTLE" data-gall="gall1"><i class="icofont icofont-link"></i></a>
								</div>	
								<div class="single-recent-post">
									<a href="#"><img class="img-fluid" src="assets/img/gallery/5.jpg" alt=""></a>
									<a href="assets/img/gallery/5.jpg" class="venobox info icon" data-title="FLICKR TITTLE" data-gall="gall1"><i class="icofont icofont-link"></i></a>
								</div>
								<div class="single-recent-post">
									<a href="#"><img class="img-fluid" src="assets/img/gallery/1.jpg" alt=""></a>
									<a href="assets/img/gallery/1.jpg" class="venobox info icon" data-title="FLICKR TITTLE" data-gall="gall1"><i class="icofont icofont-link"></i></a>								
								</div>	
								<div class="single-recent-post">
									<a href="#"><img class="img-fluid" src="assets/img/gallery/2.jpg" alt=""></a>
									<a href="assets/img/gallery/2.jpg" class="venobox info icon" data-title="FLICKR TITTLE" data-gall="gall1"><i class="icofont icofont-link"></i></a>
								</div>	
								<div class="single-recent-post">
									<a href="#"><img class="img-fluid" src="assets/img/gallery/10.jpg" alt=""></a>
									<a href="assets/img/gallery/10.jpg" class="venobox info icon" data-title="FLICKR TITTLE" data-gall="gall1"><i class="icofont icofont-link"></i></a>
								</div>	
							</div>
					</div>
					<!-- end widget -->
				</aside>
				<!-- end side bar -->	
			</div>
        </div>
        <!--- END CONTAINER -->
    </section>
    <!-- END BLOG SECTION -->


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
    <!-- jquery mixitup js -->
    <script src="assets/js/jquery.mixitup.min.js"></script>
    <!-- jquery appear js  -->
    <script src="assets/js/jquery.appear.js"></script>
    <!-- countTo js -->
    <script src="assets/js/jquery.inview.min.js"></script>
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