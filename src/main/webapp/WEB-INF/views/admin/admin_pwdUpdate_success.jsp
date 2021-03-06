<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>重新登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/jquery.js"></script>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
</head>

<body class="glb-metro-body">
	<div id="header" class="glb-header">
		<div class="glb-layout">
			<div id="logo" class="glb-logo">
				<a href="#"> <img
					src="${basepath}/resources/admin/images/logo_s1.png" alt="LOGO" />
				</a>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class="glb-layout">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div class="form-body">
			<div class="">
				<h1 class="form-head-title">密码修改成功，请重新登录！</h1>
			</div>
			<div class="login-wrapper">
				<div class="login-pos layout">
					<div class="login-box logined-box">
						<div class="login-bd login-opa60">
							<br> <br>
							<div class="login-tip">
								<a class="form-inline glb-button metro-btn-main" href="${basepath }/LAdmin/Admin/signOut">重新登录</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="templates/base_js.jsp"%>
	<div class="bottom" id="bottom"></div>
	<div class="glb-bottom">
		<div class="glb-layout">
			<div class="glb-left">
				<ul>
					<li><a href="#" target="_blank">关于我们</a></li>
					<li><a href="#" target="_blank">安全保障</a></li>
					<li><a href="#" target="_blank">诚聘英才</a></li>
					<li><a href="#" target="_blank">商户合作</a></li>
					<li><a href="#" target="_blank">新手指南</a></li>
					<li><a href="#" target="_blank">在线客服</a></li>
					<li><a href="#" target="_blank">帮助中心</a></li>
					<li><a href="#" target="_blank">站点地图</a></li>
					<li class="last"><a href="#" target="_blank">联系我们</a></li>
				</ul>
				<p>蓝桥软件学院教研部</p>
				<p>国信世纪人才服务（北京）有限公司</p>
				<p>
					Copyright Reserved 2016©蓝桥 <a class="beian"
						href="http://www.miibeian.gov.cn" target="_blank">吉ICP备
						2222233444号</a>
				</p>
			</div>
			<div class="glb-right glb-tac">
				<img class="weixin-code" src="${basepath}/resources/admin/images/weixin.jpg" alt="" />
				<p class="weixin-text">扫码关注公众号</p>
			</div>
		</div>
	</div>
</body>
</html>
