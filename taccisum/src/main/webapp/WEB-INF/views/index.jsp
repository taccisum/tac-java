<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<!-- requireJS -->
    <script type="text/javascript" src="content/js/requirejs/require.js"></script>
    <script type="text/javascript" src="content/js/modules/base/config.js"></script>
    
	<!-- bootstrap -->
	<link rel="stylesheet" type="text/css" href="content/css/bootstrap/css/bootstrap.min.css"/>
	
	<!-- ace admin -->
	<link rel="stylesheet" type="text/css" href="content/ace.admin/assets/css/ace.min.css"/>
	<link rel="stylesheet" type="text/css" href="content/ace.admin/assets/css/ace-skins.min.css"/>
	<link rel="stylesheet" type="text/css" href="content/ace.admin/assets/css/font-awesome.min.css"/>
	
	<!-- plugins css -->
	<link rel="stylesheet" type="text/css" href="content/js/jquery/plugins/artDialog/css/ui-dialog.css"/>
	<link rel="stylesheet" type="text/css" href="content/js/jquery/plugins/datatables/dataTables.css"/>
	<link rel="stylesheet" type="text/css" href="content/js/jquery/plugins/tipsy/stylesheets/tipsy.css"/>
	
	<!-- custom css -->
	<link rel="stylesheet" type="text/css" href="content/css/mystyle.css"/>
	<link rel="stylesheet" type="text/css" href="content/css/commonstyle.css"/>
	
	


	<style>	
		.colorpick-div {
			margin: 5px 0;
		}
		
		.h32{
			height: 32px;
		}
	</style>

	<script type="text/javascript">
		require(["base"], function(){
				
			if(DEBUG){
				require(["mockdata"], function(mock){
					window.mock = mock;
				})
			}
		
			require(["systools"],function(tool){
				window.tool = tool;
			})
		
		});		
		
	
/* 		$(function(){
			$.get("/taccisum/Hello/index1", function(r){
				alert(r);
			})
		}) */
		
	</script>
	
  </head>
  
  <body class="skin-4">
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="height: 45px;">
	<div class="container-fluid"></div>

	<div class="navbar-header pull-left">
		<a class="navbar-brand" href="#"><i class="icon-github"></i>&nbsp;&nbsp;Taccisum</a>
	</div>
	<div class="pull-right">
		<ul class="nav ace-nav" style="height: 45px;">
		    <li class="orange">
	            <a class="dropdown click" data-toggle="dropdown"><span class="icon-th-large"></span>&nbsp;<i class="icon-caret-down"></i></a>
	            <ul class="dropdown-navbar dropdown-menu dropdown-caret dropdown-close pull-left" role="menu">
	                <li class="dropdown-header"><i class="icon-th-large"></i>选择你喜欢的风格</li>
	                <li class="click" onclick="javascript: $('body').removeClass('skin-1 skin-2 skin-3 skin-4').addClass('skin-1');">
	                    <div class="colorpick-div" style="background-color: rgb(44, 106, 160); height: 20px;"></div>
	                </li>
	                <li class="click" onclick="javascript: $('body').removeClass('skin-1 skin-2 skin-3 skin-4').addClass('skin-2');">
	                    <div class="colorpick-div" style="background-color: #C6487E; height: 20px;"></div>
	                </li>
	                <li class="click" onclick="javascript: $('body').removeClass('skin-1 skin-2 skin-3 skin-4').addClass('skin-3');">
	                    <div class="colorpick-div" style="background-color: #222A2D; height: 20px;"></div>
	                </li>
	                <li class="click" onclick="javascript: $('body').removeClass('skin-1 skin-2 skin-3 skin-4').addClass('skin-4');">
	                    <div class="colorpick-div" style="background-color: rgb(67, 142, 185); height: 20px;"></div>
	                </li>
	            </ul>
       		</li>
	        <li class="grey">
	            <a class="dropdown click" data-toggle="dropdown"><span class="icon-github-alt"></span>&nbsp;<i class="icon-caret-down"></i></a>
	            <ul class="dropdown-navbar dropdown-menu dropdown-caret dropdown-close pull-right" role="menu">
	                <li class="dropdown-header"><i class="icon-github-alt"></i>C#相关</li>
	                <li><a tabindex="-1" href="#">数据库设计</a></li>
	                <li><a tabindex="-1" href="#">页面布局</a></li>
	                <li><a tabindex="-1" href="#">功能迭代</a></li>
	                <li class="divider"></li>
	                <li><a tabindex="-1" href="#">分离的链接</a></li>
	            </ul>
	        </li>
	
	        <li class="purple">
	            <a class="dropdown click" data-toggle="dropdown"><span class="icon-tags"></span>&nbsp;<i class="icon-caret-down"></i></a>
	            <ul class="dropdown-navbar dropdown-menu dropdown-caret dropdown-close pull-right" role="menu">
	                <li class="dropdown-header"><i class="icon-tags"></i>Tags</li>
	                <li><a tabindex="-1" href="#">Entry1</a></li>
	                <li><a tabindex="-1" href="#">Entry2</a></li>
	                <li><a tabindex="-1" href="#">Entry3</a></li>
	            </ul>
	        </li>
	
	        <li class="green">
	            <a class="dropdown click" data-toggle="dropdown"><span class="icon-envelope"></span>&nbsp;<span class="badge badge-important">1</span></a>
	            <ul class="dropdown-navbar dropdown-menu dropdown-caret dropdown-close pull-right" role="menu">
	                <li class="dropdown-header"><i class="icon-info-sign"></i>Font Awesome！</li>
	                <li><span style="color: gray; font-size: 12px;">完美的图标字体，只为Bootstrap设计！</span></li>
	            </ul>
	        </li>
	
	        <li class="light-blue2">
	            <a data-toggle="dropdown" href="#" class="dropdown-toggle">
	                <i class="icon-cog" style="font-size: 20px;"></i>
	                <span class="user-info">
	                    <small>欢迎您</small>
	                    Tac
	                </span>	
	                <i class="icon-caret-down"></i>
	            </a>
	            <ul class="user-menu dropdown-menu dropdown-yellow dropdown-caret dropdown-close pull-right">
	                <li><a href="#"><i class="icon-cog"></i>设置</a></li>
	                <li><a href="#"><i class="icon-user"></i>个人资料</a></li>
	                <li class="divider"></li>
	                <li>
	                    <a href="/User/Logout"><i class="icon-off"></i>退出</a>
	                </li>
	            </ul>
	        </li>
		</ul>
	</div>
	</nav>
	
	<div id="main-container" class="main-container" style="margin-top: 45px; width:100%;">
		<div class="main-container-inner">
			<a class="menu-toggler" id="menu-toggler" href="#">
                <span class="menu-text"></span>
            </a>
            <div class="sidebar" id="sidebar">
				<!--  short cuts  -->
                <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                    <div class="sidebar-shortcuts-large">
                        <button class="btn btn-success h32"><i class="icon-lemon"></i></button>
                        <button class="btn btn-info h32"><i class="icon-comments"></i></button>
                        <button class="btn btn-warning h32"><i class="icon-globe"></i></button>
                        <button class="btn btn-danger h32"><i class="icon-home"></i></button>
                    </div>
                    <div class="sidebar-shortcuts-mini">
                        <span class="btn btn-success"></span>
                        <span class="btn btn-info"></span>
                        <span class="btn btn-warning"></span>
                        <span class="btn btn-danger"></span>
                    </div>
                </div>

                <div class="sidebar-shortcuts">
                    <div class="sidebar-shortcuts-large" style="line-height: 34px;">	<!--  设置line-height修正ace style造成的样式错乱 -->
                        <!--  menu searcher  -->
                        <div id="menu-searcher" class="input-group input-group-merge" style="padding: 3px 6px;">
                            <input class="form-control input-md left" type="text" />
                            <span class="input-group-btn right" style="margin: 0"><button class="btn btn-white btn-md">&nbsp;<i class="icon-map-marker"></i></button></span>
                        </div>
                    </div>
                    <div class="sidebar-shortcuts-mini">
                    </div>
                </div>

                <!--  nav list  -->
                <ul class="nav nav-list" id="nav-list">
					<!-- menus here -->
					<li><a href="/taccisum/Hello/index"><i class="icon-home"></i><span class="menu-text"> 首页 </span><b class="arrow"></b></a></li>
                </ul>
                <div class="sidebar-collapse" id="sidebar-collapse">
                    <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
                </div>
            </div>
            
            
            <div class="main-content">
            	<div class="breadcrumbs">
	                <ul class="breadcrumb">
	                </ul>
           		</div>
            	<div class="page-content">
            		<p>hhh</p>
            	</div>            	
            </div>
		</div>
	</div>

</body>
</html>
