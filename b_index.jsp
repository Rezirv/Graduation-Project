
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
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
    <link rel="shortcut icon" href="assets/ico/favicon.png">
       <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"9267",secure:"9077"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-26" data-genuitec-path="/society/WebRoot/b_index.jsp">
    <div id="wrapper" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-26" data-genuitec-path="/society/WebRoot/b_index.jsp">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">后台</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="b_index">沈阳工业大学</a>
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
                        <a  href="b_index" class="active-menu"><i class="fa fa-dashboard "></i>管理</a>
                    </li>
                    <li><a  href="b_notice.jsp"><i class="fa fa-bell-o "></i>     通知发布</a></li>
                    <li>
                        <a href="b_register.jsp"><i class="fa fa-align-left  "></i>社团注册</a>
                    </li>
                    <li>
                        <a href="getactivity"><i class="fa fa-bookmark "></i>活动审核</a>
                    </li>
                    <li>
                        <a href="getmessage"><i class="fa fa-comments-o "></i>留言处理</a>
                    </li>
                    <li>
                        <a href="moreinformation" ><i class="fa fa-list "></i>社团信息</a>
                    </li>
                    <li>
                        <a href="b_index"><i class="fa fa-square-o "></i>回到首页</a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">后台管理</h1>
                        <h1 class="page-subhead-line">此为社团管理系统的后台</h1>

                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">
                    <div class="col-md-4">
                        <div class="main-box mb-red text-center">
                            <a href="b_notice.jsp">
                                <i class="fa fa-bolt fa-5x"></i>
                                <h5>通知发布</h5>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="main-box mb-dull text-center">
                            <a href="getactivity">
                                <i class="fa fa-plug fa-5x"></i>
                                <h5>活动审核</h5>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="main-box mb-pink text-center">
                            <a href="getmessage">
                                <i class="fa fa-dollar fa-5x"></i>
                                <h5>留言处理</h5>
                            </a>
                        </div>
                    </div>

                </div>
                <!-- /. ROW  -->

                <div class="row">
                    <div class="col-md-8">
                        <div class="row">

                        </div>
                        <!-- /. ROW  -->

                        <div class="panel panel-default">

                            <div id="carousel-example" class="carousel slide" data-ride="carousel" style="border: 5px solid #000;">

                                <div class="carousel-inner">
                                    <div class="item active">

                                        <img src="assets/img/slideshow/1.jpg" alt="" />

                                    </div>
                                    <div class="item">
                                        <img src="assets/img/slideshow/2.jpg" alt="" />

                                    </div>
                                    <div class="item">
                                        <img src="assets/img/slideshow/3.jpg" alt="" />

                                    </div>
                                </div>
                                <!--INDICATORS-->
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example" data-slide-to="1"></li>
                                    <li data-target="#carousel-example" data-slide-to="2"></li>
                                </ol>
                                <!--PREVIUS-NEXT BUTTONS-->
                                <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- /.REVIEWS &  SLIDESHOW  -->
                    <!-- <div class="col-md-4">

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Recent Chat History
                            </div>
                            <div class="panel-body" style="padding: 0px;">
                                <div class="chat-widget-main">


                                    <div class="chat-widget-left">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                    </div>
                                    <div class="chat-widget-name-left">
                                        <h4>Amanna Seiar</h4>
                                    </div>
                                    <div class="chat-widget-right">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                    </div>
                                    <div class="chat-widget-name-right">
                                        <h4>Donim Cruseia </h4>
                                    </div>
                                    <div class="chat-widget-left">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                    </div>
                                    <div class="chat-widget-name-left">
                                        <h4>Amanna Seiar</h4>
                                    </div>
                                    <div class="chat-widget-right">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                    </div>
                                    <div class="chat-widget-name-right">
                                        <h4>Donim Cruseia </h4>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Enter Message" />
                                    <span class="input-group-btn">
                                        <button class="btn btn-success" type="button">SEND</button>
                                    </span>
                                </div>
                            </div>
                        </div>


                    </div> -->
                    <!--/.Chat Panel End-->
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="list-group">
                            <a href="#" class="list-group-item active">
                                <h4 class="list-group-item-heading">最新消息</h4>
                            </a>
                        </div>
        
                        <!-- 16:9 aspect ratio -->
                    </div>

                    <div class="col-md-8">

                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>学号</th>
                                        <th>姓名</th>
                                        <th>社团</th>
                                        <th>职务</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>2</td>
                                        <td>140405213</td>
                                        <td>陈磊</td>
                                        <td>电影社</td>
                                        <td>社员</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>140405213</td>
                                        <td>陈磊</td>
                                        <td>电影社</td>
                                        <td>社员</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>140405213</td>
                                        <td>陈磊</td>
                                        <td>电影社</td>
                                        <td>社员</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>140405213</td>
                                        <td>陈磊</td>
                                        <td>电影社</td>
                                        <td>社员</td>
                                    </tr>

                                    <tr>
                                        <td>2</td>
                                        <td>140405213</td>
                                        <td>陈磊</td>
                                        <td>电影社</td>
                                        <td>社员</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>140405213</td>
                                        <td>陈磊</td>
                                        <td>电影社</td>
                                        <td>社员</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>140405213</td>
                                        <td>陈磊</td>
                                        <td>电影社</td>
                                        <td>社员</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>140405213</td>
                                        <td>陈磊</td>
                                        <td>电影社</td>
                                        <td>社员</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>140405213</td>
                                        <td>陈磊</td>
                                        <td>电影社</td>
                                        <td>社员</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>




                    </div>
                    <div class="col-md-4">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                最新留言
                            </div>
                            <div class="panel-body">
                                <ul class="media-list">

                                    <li class="media">

                                        <div class="media-body">

                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <img class="media-object img-circle img-comments" src="assets/img/user.png" />
                                                </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading">张三  </h4>
                                                    这次活动好好玩啊
              
              <!-- Nested media object -->
                                                    <div class="media">
                                                        <a class="pull-left" href="#">
                                                            <img class="media-object img-circle img-comments" src="assets/img/user.gif" />
                                                        </a>
                                                        <div class="media-body">
                                                            <h4 class="media-heading">李四</h4>
                                                            的确不错.
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <a class="pull-left" href="#">
                                                            <img class="media-object img-circle img-comments" src="assets/img/user.png" />
                                                        </a>
                                                        <div class="media-body">
                                                            <h4 class="media-heading">王五</h4>
                                                            我是无敌的 
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                        </div>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/.Row-->
                <hr />
                <div class="row" style="padding-bottom: 100px; `">
                    <div class="col-md-6">
                        <div id="comments-sec">
                            <h4><strong>提出网站修改意见</strong></h4>
                            <hr />


                            <div class="form-group  ">
                                <label>主题</label>
                                <input type="text" class="form-control" required="required" placeholder="修改意见" />
                            </div>
                            <div class="form-group ">
                                <label>内容</label>
                                <textarea class="form-control" rows="8"></textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-success">提交</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/.ROW-->

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
