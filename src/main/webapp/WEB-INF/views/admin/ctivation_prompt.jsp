<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>蓝桥银行-激活页面</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/css/biz/reg.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/user/css/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/css/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/css/js/util.js"></script>
<meta charset="utf-8" />
<title></title>
</head>

<body>
	<!-- 导入公用模板 -->
	<%@include file="templates/header.jsp"%>
	<div id="frameBody" class="frame-body">
		<div class="frame-wrapper">
			<div id="top"></div>
			<div id="header"></div>
			<div id="page">
				<div class="glb-alert-box glb-alert-succ">
					<p class="iconfont icon-glb-right"></p>
					<div class="glb-alert-msg">
						<p class="hd">
							<h1>${msg }</h1>
							<a href="${basepath}/LAdmin/UrlToView/welcome"> 返回到管理员主界面</a>
						</p>
					</div>
				</div>
				<div id="bottom" class="bottom"></div>
			</div>
		</div>
	</div>

</body>
</html>