<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户添加银行卡成功</title>
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
						<img src="${basepath }/resources/user/images/logo.png" alt="蓝桥" />
					</a>
				</div>
			</div>
		</div>
		<div id="page">
			<div class="glb-alert-box glb-alert-succ">
				<p class="iconfont icon-glb-right"></p>
				<div class="glb-alert-msg">
					<p class="hd"> <em>您已经申请成功！！等待审核！！</em>
					</p>
					<p class="bd">
						<a href="${basepath }/LUser/UrlToView/index">点击进入-----蓝桥银行</a>
					</p>
					<p class="bd">
						温馨提示:<span class="em">用户名和密码</span>是您登录系统的唯一凭证,请您牢记!
					</p>
				</div>
			</div>
			<div id="bottom" class="bottom">
			</div>
		</div>
  </body>
</html>
