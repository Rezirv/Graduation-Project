<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>社团管理系统</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by freehtml5.co" />
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400" rel="stylesheet">
	<link rel="shortcut icon" href="assets/ico/favicon.png">
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Pricing -->
	<link rel="stylesheet" href="css/pricing.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- <script type="text/javascript" src="js/my.js"></script> -->
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"9267",secure:"9077"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-41" data-genuitec-path="/society/WebRoot/index.jsp">
		
	<div class="fh5co-loader" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-41" data-genuitec-path="/society/WebRoot/index.jsp"></div>
	
	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="top">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 text-right">
						<p class="site">www.shetuanguanli.com</p>
						<p class="num" id="Identity">${user.identity}</p>
						<ul class="fh5co-social">
							<li><a href="#" >${user.name}</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="top-menu">
			<div class="container">
				<div class="row">
					<div class="col-xs-2">
						<div id="fh5co-logo"><a href="index.html"><i class="icon-study"></i>社团</a></div>
					</div>
					<div class="col-xs-10 text-right menu-1">
						<ul>
							<li class="active"><a href="index.jsp">首页</a></li>
							<li><a href="activity">活动</a></li>
							<li><a href="information">信息</a></li>
							<li><a href="notice">通知</a></li>
							<li><a href="pcenter?name=${user.name}">个人中心</a></li>
							<li class="has-dropdown" id="diffid" style="display: inline;">
								<a href="application.jsp">管理</a>
								<ul class="dropdown" id="superOg">
									<li><a href="actiapp?ad=${user.name}">申请活动</a></li>
									<li><a href="application?ad=${user.name}">社团信息</a></li>
									<li><a href="registered?ad=${user.name}">社员注册</a></li>
								</ul>
							</li>
							<!-- <li class="btn-cta"><a href="#"><span>登陆</span></a></li>
							<li class="btn-cta"><a href="#"><span>创建账号</span></a></li> -->
						</ul>
					</div>
				</div>
				
			</div>
		</div>
	</nav>
	<!-- 导航栏 -->


	
	<aside id="fh5co-hero">
		<div class="flexslider">
			<ul class="slides">
		   	<li style="background-image: url(images/学生会.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 text-center slider-text">
			   				<div class="slider-text-inner">
			   					<h1>以先进的文化熏陶人，以正确的舆论引导人，以健全的制度塑造人</h1>
									<h2>加入学生会是你明智的选择</a></h2>
									<p><a class="btn btn-primary btn-lg" href="#">了解更多!</a></p>
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>
		   	<li style="background-image: url(images/足球社.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 text-center slider-text">
			   				<div class="slider-text-inner">
			   					<h1>齐心协力，永不言弃，心系科技，勇争第一</h1>
									<h2>足球社是你释放激情和活力的地方</a></h2>
									<p><a class="btn btn-primary btn-lg btn-learn" href="#">了解更多!</a></p>
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>
		   	<li style="background-image: url(images/ACm.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 text-center slider-text">
			   				<div class="slider-text-inner">
			   					<h1>计算机的未来非你莫属</h1>
									<h2>我在ACM等着你</a></h2>
									<p><a class="btn btn-primary btn-lg btn-learn" href="#">了解更多！</a></p>
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>		   	
		  	</ul>
	  	</div>
	</aside>

	<div id="fh5co-course-categories">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>社团类别展示</h2>
					<p>我校包含你能想到的任何社团，以下是大概的分类，你可以了解社团的组成</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<span class="icon">
							<center><img src="icons/学习.png" width="60px" height="60px" style="margin-top: 15px;"></center>
						</span>
						<div class="desc">
							<h3><a href="#">学习</a></h3>
							<p>此类社团都是与学习相关的社团，都是弘扬学生本质的社团，有读书社，英语社等</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<span class="icon">
							<center><img src="icons/爱心.png" width="60px" height="60px" style="margin-top: 15px;"></center>
						</span>
						<div class="desc">
							<h3><a href="#">爱心 &amp; 援助</a></h3>
							<p>此类社团都是帮助同学发扬助人为乐的美德，同时也是为了帮助需要帮助的人，有爱心社，青春志愿社等</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<span class="icon">
							<center><img src="icons/电影.png" width="60px" height="60px" style="margin-top: 15px;"></center>
						</span>
						<div class="desc">
							<h3><a href="#">影视</a></h3>
							<p>此类社团都是为那些爱好电影和相关的内容的同学所准备的，有戏剧社，电影爱好者协会等</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<span class="icon">
							<center><img src="icons/动漫.png" width="60px" height="60px" style="margin-top: 15px;"></center>
						</span>
						<div class="desc">
							<h3><a href="#">动漫 &amp; 游戏</a></h3>
							<p>处于网络时代的我们难免会爱上这些二次元世界的产物，此类社团有电竞社，cospla社等</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<span class="icon">
							<center><img src="icons/吉他.png" width="60px" height="60px" style="margin-top: 15px;"></center>
						</span>
						<div class="desc">
							<h3><a href="#">艺术 &amp; 乐器</a></h3>
							<p>音乐和艺术是我们享受生活的调剂品，也是我们汲取能量的地方，此类社团包括吉他社，国画社等</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<span class="icon">
							<center><img src="icons/旅游信息.png" width="60px" height="60px" style="margin-top: 15px;"></center>
						</span>
						<div class="desc">
							<h3><a href="#">旅游 &amp;摄影</a></h3>
							<p>远方总是让人心驰神往，而旅行却总和摄影离不开，此类社团主要有远足社，摄影社等</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<span class="icon">
							<center><img src="icons/游戏-游戏-棋牌.png" width="60px" height="60px" style="margin-top: 15px;"></center>
						</span>
						<div class="desc">
							<h3><a href="#">棋牌社</a></h3>
							<p>棋牌几乎是最古老的游戏，既锻炼了大脑又能交到了志同道合的朋友，此类社团包括象棋社，桥牌社等</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<span class="icon">
							<center><img src="icons/运动.png" width="60px" height="60px" style="margin-top: 15px;"></center>
						</span>
						<div class="desc">
							<h3><a href="#">运动 &amp; 编程</a></h3>
							<p>不管是运动还是编程都锻炼人的活动，虽然是从身体还大脑二方面，此类社团有足球社，编程社等</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-counter" class="fh5co-counters" style="background-image: url(images/图书馆.jpg);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container" style="margin-left: 440px;">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="row">
						<div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-head"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="3" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">学校管理人</span>
						</div>
						<div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-study"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="201" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">社团总数</span>
						</div>
						<div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-bulb"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="5034" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">社员总数</span>
						</div>
						<!-- <div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-head"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="1080" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Certified Teachers</span>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</div>
    <!-- <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div -->>

	<div id="fh5co-course">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>精选活动</h2>
					<p>以下我校各个社团举办的各种精彩活动，希望大家依次为例多举办有意义有内涵的活动</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 animate-box">
					<div class="course">
						<a href="#" class="course-img" style="background-image: url(images/电脑.jpg);">
						</a>
						<div class="desc">
							<h3><a href="#">acm 大赛</a></h3>
							<p>此次acm校赛是信息学院举办，acm实验室承办，面向全校学生的的一次程序设计大赛，既展示了大学生的创新能力，团队精神也培养了大学生在强压下的思考能力</p>
							<span><a href="#" class="btn btn-primary btn-sm btn-course">acm社团</a></span>
						</div>
					</div>
				</div>
				<div class="col-md-6 animate-box">
					<div class="course">
						<a href="#" class="course-img" style="background-image: url(images/摄影.jpg);">
						</a>
						<div class="desc">
							<h3><a href="#">我的学校摄影大赛</a></h3>
							<p>此次活动是由校宣传部举办，摄影社协办的一项摄影比赛，意在发现母校的美和人的美，提高了学生对母校的喜爱之情也提高的学校的知名度</p>
							<span><a href="#" class="btn btn-primary btn-sm btn-course">摄影社</a></span>
						</div>
					</div>
				</div>
				<div class="col-md-6 animate-box">
					<div class="course">
						<a href="#" class="course-img" style="background-image: url(images/远足.jpg);">
						</a>
						<div class="desc">
							<h3><a href="#">沈阳周边自助游</a></h3>
							<p>阳春三月，万物盛开，即使忙于学业也不能辜负身边的美景啊，沈阳的春天更是让躲在屋内一冬天的沈阳人能好好出来透透气了，我们激情活力的大学生怎能例外，本次活动由远足社举办</p>
							<span><a href="#" class="btn btn-primary btn-sm btn-course">远足社</a></span>
						</div>
					</div>
				</div>
				<div class="col-md-6 animate-box">
					<div class="course">
						<a href="#" class="course-img" style="background-image: url(images/篮球.jpg);">
						</a>
						<div class="desc">
							<h3><a href="#">全校篮球赛</a></h3>
							<p>CBA辽宁队进入总决赛对于每一个身在辽宁的人来说都是一件令人激动的事，我们不仅要在言语上给与其加油还要在身体力行的在篮球场上给他加油，此次活动由篮球社举办</p>
							<span><a href="#" class="btn btn-primary btn-sm btn-course">篮球社</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-testimonial" style="background-image: url(images/school.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2><span>学校社团管理人</span></h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="row animate-box">
						<div class="owl-carousel owl-carousel-fullwidth">
							<div class="item">
								<div class="testimony-slide active text-center">
									<div class="user" style="background-image: url(images/person1.jpg);"></div>
									<span>张三<br><small>社团申请管理人</small></span>
									<blockquote>
										<p>办公地址:信息楼501</p>
										<p>办公邮箱:111111111@163.com</p>
										<p>办公电话：61101010101</p>
									</blockquote>
								</div>
							</div>
							<div class="item">
								<div class="testimony-slide active text-center">
									<div class="user" style="background-image: url(images/person2.jpg);"></div>
									<span>李四<br><small>社团活动管理人</small></span>
									<blockquote>
										<p>办公地址:信息楼502</p>
										<p>办公邮箱:111111111@163.com</p>
										<p>办公电话：61101010101</p>
									</blockquote>
								</div>
							</div>
							<div class="item">
								<div class="testimony-slide active text-center">
									<div class="user" style="background-image: url(images/person3.jpg);"></div>
									<span>王五<br><small>社团人员管理人</small></span>
									<blockquote>
										<p>办公地址:信息楼503</p>
										<p>办公邮箱:111111111@163.com</p>
										<p>办公电话：61101010101</p>
									</blockquote>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="fh5co-blog">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>微博 &amp; 微信</h2>
					<p>欢迎关注沈阳工业大学社团官方微博微信平台，了解更多资讯</p>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 text-center animate-box" style="margin-left: 280px">
					<div class="services">
						<span class="icon">
							<center><img src="icons/微博.png" width="60px" height="60px" style="margin-top: 15px;"></center>
						</span>
						<div class="desc">
							<h3><a href="#">微博</a></h3>
						</div>
					</div>
				</div>
			<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<span class="icon">
							<center><img src="icons/微信.png" width="60px" height="60px" style="margin-top: 15px;"></center>
						</span>
						<div class="desc">
							<h3><a href="#">微信</a></h3>
							
						</div>
					</div>
				</div>
			</div>


<!-- 	<div id="fh5co-register" style="background-image: url(images/img_bg_2.jpg);">
		<div class="overlay"></div>
		<div class="row">
			<div class="col-md-8 col-md-offset-2 animate-box">
				<div class="date-counter text-center">
					<h2>Get 400 of Online Courses for Free</h2>
					<h3>By Mike Smith</h3>
					<div class="simply-countdown simply-countdown-one"></div>
					<p><strong>Limited Offer, Hurry Up!</strong></p>
					<p><a href="#" class="btn btn-primary btn-lg btn-reg">Register Now!</a></p>
				</div>
			</div>
		</div>
	</div> -->

	<div id="fh5co-gallery" class="fh5co-bg-section">
		<div class="row text-center">
			<h2><span>社团照片墙</span></h2>
		</div>
		<div class="row">
			<div class="col-md-3 col-padded">
				<a href="#" class="gallery" style="background-image: url(images/展示1.jpg);"></a>
			</div>
			<div class="col-md-3 col-padded">
				<a href="#" class="gallery" style="background-image: url(images/展示2.jpg);"></a>
			</div>
			<div class="col-md-3 col-padded">
				<a href="#" class="gallery" style="background-image: url(images/远足.jpg);"></a>
			</div>
			<div class="col-md-3 col-padded">
				<a href="#" class="gallery" style="background-image: url(images/展示3.jpg);"></a>
			</div>
		</div>
	</div>

	<footer id="fh5co-footer" role="contentinfo" style="background-image: url(images/img_bg_4.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row row-pb-md">
				<div class="col-md-3 fh5co-widget">
					<h3>关于作者</h3>
					<p><small>姓名:陈磊</small></p>
					<p><small>邮箱：1929932939@163.com</small></p>
					<p><small>手机：121321312312</small></p>
					<p><small>目前是沈阳工业大学大四学生</small></p>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Learning</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Course</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms</a></li>
						<li><a href="#">Meetups</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Learn &amp; Grow</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Blog</a></li>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Testimonials</a></li>
						<li><a href="#">Handbook</a></li>
						<li><a href="#">Held Desk</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Engage us</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Marketing</a></li>
						<li><a href="#">Visual Assistant</a></li>
						<li><a href="#">System Analysis</a></li>
						<li><a href="#">Advertise</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Legal</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Find Designers</a></li>
						<li><a href="#">Find Developers</a></li>
						<li><a href="#">Teams</a></li>
						<li><a href="#">Advertise</a></li>
						<li><a href="#">API</a></li>
					</ul>
				</div>
			</div>

			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy; 2018 陈磊 </small>
					</p>
				</div>
			</div>

		</div>
	</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Count Down -->
	<script src="js/simplyCountdown.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>
	<script>
    var d = new Date(new Date().getTime() + 1000 * 120 * 120 * 2000);

    // default example
    simplyCountdown('.simply-countdown-one', {
        year: d.getFullYear(),
        month: d.getMonth() + 1,
        day: d.getDate()
    });

    //jQuery example
    $('#simply-countdown-losange').simplyCountdown({
        year: d.getFullYear(),
        month: d.getMonth() + 1,
        day: d.getDate(),
        enableUtc: false
    });
    var id=document.getElementById("Identity");
	if(id.innerText=="学生"){
		liShow();
	}
	function liShow(){
		document.getElementById("diffid").style.display="none";
	}
	if(id.innerText=="超级管理员"){
		var li=document.createElement("li");
		var a=document.createElement("a");
		var text=document.createTextNode("进入后台管理");
		a.href="b_index";
		a.appendChild(text);
		li.appendChild(a);
		var ul=document.getElementById("superOg");
		ul.appendChild(li);
	}
	</script>
	</body>
</html>

