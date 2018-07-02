<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>社团管理系统后台</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
       <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <link rel="shortcut icon" href="assets/ico/favicon.png">
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"9267",secure:"9077"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-28" data-genuitec-path="/society/WebRoot/b_message.jsp">
    <div id="wrapper" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-28" data-genuitec-path="/society/WebRoot/b_message.jsp">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">后台</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">沈阳工业大学</a>
            </div>

            <div class="header-right">

                <a href="getmessage" class="btn btn-info" title="New Message"><b style="font-size:20px;">${messageNum}</b><i class="fa fa-envelope-o fa-2x"></i></a>
                <a href="getactivity" class="btn btn-primary" title="New Task"><b style="font-size:20px;">${activityNum}</b><i class="fa fa-bars fa-2x"></i></a>
            </div>
        </nav>
        <!-- /. NAV TOP  -->
               <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <div class="user-img-div">
                            <img src="assets/img/user.png" class="img-thumbnail" />

                            <div class="inner-text">
                                ${user.name}
                            <br />
                            </div>
                        </div>

                    </li>


                    <li>
                        <a  href="b_index" ><i class="fa fa-dashboard "></i>管理</a>
                    </li>
                    <li><a  href="b_notice.jsp"><i class="fa fa-bell-o "></i>     通知发布</a></li>
                    <li>
                        <a href="b_register.jsp"><i class="fa fa-align-left  "></i>社团注册</a>
                    </li>
                    <li>
                        <a href="getactivity"><i class="fa fa-bookmark "></i>活动审核</a>
                    </li>
                    <li>
                        <a href="getmessage" class="active-menu"><i class="fa fa-comments-o "></i>留言处理</a>
                    </li>
                    <li>
                        <a href="moreinformation" ><i class="fa fa-list "></i>社团信息</a>
                    </li>
                    <li>
                        <a href="b_index"><i class="fa fa-square-o "></i>回到首页</a>
                    </li>
                </ul>

            </div>

        </nav>        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">留言回复</h1>
                        <h1 class="page-subhead-line">此对社团回到的留言进行回复</h1>
                    </div>
                        <hr/>
                        		<c:if test="${empty co}">
										无信息
					   				  </c:if>
						              <c:if test="${not empty co}">
						           	  <c:forEach items="${co}" var="c">
                        		<div class="col-md-5 col-sm-5">
                                	<div class="panel panel-warning">
                                    <div class="panel-heading">
                                       	 ${c.theme}
                                	</div>
                                        <div class="panel-body">
                                        <p>${c.comment}</p>
                                        </div>
                                            <div class="panel-footer">
                                               	 ${c.name}
                                            </div>
                                            <form role="form" action="b_message?commentid=${c.commentid}&replyname=${user.name}" method="post">
                                        </div>
                                            <div class="form-group">
                                            <label>内容</label>
                                            <textarea class="form-control" rows="5" name="reply"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-info">回复</button>
                                    </form>
                    			</div>
                    	 	</c:forEach>
		                    </c:if>
                </div>
                <hr>
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->

    <div id="footer-sec">
        &copy; 陈磊 
    </div>
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
       <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    


</body>
</html>
