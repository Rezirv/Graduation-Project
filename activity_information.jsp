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
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<link rel="shortcut icon" href="assets/ico/favicon.png">
	
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
	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/society/WebRoot/activity_information.jsp">
		
	<div class="fh5co-loader" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/society/WebRoot/activity_information.jsp"></div>
	
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
							<li class="active"><a href="activity">活动</a></li>
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
	
	<div id="fh5co-pricing" class="fh5co-bg-section">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>活动详细信息</h2>
					<p>用来查看社团活动的详细信息，从而了解社团活动</p>
					<p>${requestScope["comment.message"]}</p>
				</div>
			</div>
			<div class="row">
				<div class="pricing pricing--rabten">
					<div class="col-md-12 animate-box text-center" >
						<div class="pricing__item">
                     <div class="pricing__price">
                        <span class="pricing__anim pricing__anim--1">
								${a.theme}
                        </span>
                        
                     </div>
                     <div class="wrap-price">
                     	<ul class="pricing__feature-list">
	                        <li class="pricing__feature">所属社团：<span>${a.community}</span></li>
	                        <hr>
	                        <li class="pricing__feature">举办场地：<span>${a.location}</span></li>
	                        <hr>
	                        <li class="pricing__feature">举办时间：<span>${a.date}</span></li>
	                        <hr>
	                        <li class="pricing__feature">针对对象：<span>${a.object}</span></li>

	                        <hr>
	                        <li class="pricing__feature">具体内容：<span>${a.content}</span></li>
	                     </ul>
                     </div>
                     <form action="comment?theme=${a.theme}&name=${user.name}&community=${a.community}&id=${a.id}" method="post">
                     <div class="panel panel-default">
                            <div class="panel-footer">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="留言" name="comment" />
                                    <span class="input-group-btn">
                                        <button class="btn btn-success" type="summit">发送</button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        </form>
                  </div>
            </div>
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
	</script>
	</body>
</html>

