<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="shortcut icon" href="assets/ico/favicon.png">
	

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
	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-25" data-genuitec-path="/society/WebRoot/association_information.jsp">
		
	<div class="fh5co-loader" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-25" data-genuitec-path="/society/WebRoot/association_information.jsp"></div>
	
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
							<li><a href="index.jsp">首页</a></li>
							<li><a href="activity">活动</a></li>
							<li><a href="information">信息</a></li>
							<li><a href="notice">通知</a></li>
							<li><a href="pcenter?name=${user.name}">个人中心</a></li>
							<li class="has-dropdown active" id="diffid" style="display: inline;">
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
	
	<div id="fh5co-pricing" class="fh5co-bg-section">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>社团信息</h2>
					<p>用来查看本社团具体发展情况</p>
				</div>
			</div>
			<div id="fh5co-about">
		<div class="container">
			<div class="col-md-12 animate-box">
			<h2><span>本社团</span>成员情况</h2>
			<hr>
			</div>
			<c:if test="${empty ap}">
				无客户信息
			</c:if>
			<c:if test="${not empty ap}">
				<c:forEach items="${ap}" var="a">
				<div class="col-md-12 animate-box">
					<h3><p>姓名:<span>${a.name}</span></p></h3>
					<p>社团职务:<span>${a.position}</span></p>
					<p>电话:<span>${a.tel }</span></p>
					<p>Email:<span>${a.email}</span></p>
					<hr>
				</div>
				</c:forEach>
			</c:if>
			<div class="col-md-8 col-sm-offset-2 text-center">
					<ul class="pagination">
    					<li><a href="#">&laquo;</a></li>
    					<li class="active"><a href="#">1</a></li>
    					<li ><a href="#">2</a></li>
   						<li><a href="#">3</a></li>
    					<li><a href="#">4</a></li>
    					<li><a href="#">5</a></li>
    					<li><a href="#">&raquo;</a></li>
					</ul>
			</div>
			<!-- <div class="col-md-6">
				<img class="img-responsive" src="images/img_bg_2.jpg" alt="Free HTML5 Bootstrap Template">
			</div> -->
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
		a.href="b_index.jsp";
		a.appendChild(text);
		li.appendChild(a);
		var ul=document.getElementById("superOg");
		ul.appendChild(li);
	}
	</script>
	</body>
</html>

