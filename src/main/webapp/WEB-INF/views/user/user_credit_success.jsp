<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>申请信用卡成功</title>
    <meta name="keywords" content="" />
		<meta name="description" content="" />
		<link rel="stylesheet" type="text/css"
			href="${basepath }/resources/user/css/global.css" />
		<link rel="stylesheet" type="text/css"
			href="${basepath }/resources/user/css/form.css" />
		<link rel="stylesheet" type="text/css"
			href="${basepath }/resources/user/css/biz/uc.css" />
		<link rel="stylesheet" type="text/css"
	        href="${basepath }/resources/user/css/dialog.css" />
       	<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
        <script type="text/javascript"
			src="${basepath }/resources/user/js/jquery.js"></script>
		<script type="text/javascript"
			src="${basepath }/resources/user/js/global.js"></script>
		<script type="text/javascript"
			src="${basepath }/resources/user/js/util.js"></script>
		<script type="text/javascript"
			src="${basepath }/resources/user/js/animation.js"></script>
		<script type="text/javascript"
			src="${basepath }/resources/user/js/dialog.js"></script>

  </head>
  
  <body>
  	 	 <div id="top">
		</div>
		<div id="header">
			<div class="layout">
				<div id="logo">
					<a href="uc.html">
						<img src="images/logo.png" alt="蓝桥" />
					</a>
				</div>
				<div id="nav" class="glb-nav">
					<ul class="clearfix">
						<li class="glb-nav-uc">
							<a href="uc.html">
								<span></span>
							</a>
						</li>
						<li class="glb-nav-trade">
							<a href="trade_list.html">
								<span></span>
							</a>
						</li>
						<li class="glb-nav-setting current">
							<a href="my_info.html">
								<span></span>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
  	 		<div id="page">
			<div class="main layout">
				<div class="col-menu">
					<ul class="menu-items">
						<li>
							<a class="menu-txt iconfont icon-menu-um">申请信用卡</a>
						</li>
					</ul>
				</div>
				<div class="col-main">
					<div class="main-hd">
						<h3 class="iconfont icon-menu-bm">设置支付密码</h3>
					</div>
					<div class="main-bd">
						<div class="content-bd">
							<form class="form-bd" action="" id="demoForm">
								<div class="form-item">
									<h4 class="form-label">用户名:</h4>
									<div class="form-entity">
										<div class="form-field">
											<input class="ipt" type="text" name="userName" value="" placeholder="请输入用户名" />
										</div>
									</div>
								</div>
								<div class="form-item">
									<h4 class="form-label">支付密码:</h4>
									<div class="form-entity">
										<div class="form-field">
											<input class="ipt" type="text" name="userName" value="" placeholder="请输入支付密码" />
										</div>
									</div>
								</div>
								<div class="form-action clearfix">
									<a class="reset-btn" href="${basepath}/views/user/user_credit_success.jsp">重置</a>
									<a id="submitBtn" href="${basepath}/views/user/user_credit_success.jsp" class="glb-btn submit-btn">
										<span>提交</span>
									</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="bottom" class="bottom"></div>
  </body>
</html>
