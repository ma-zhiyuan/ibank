<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 
	用户存储密码验证失败界面：创建者：魏航
			 创建时间：2017年5月22日
 -->
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="refresh" content="5;url=${basepath}/LUser/card_user/toSaveMoney?cardId=${requestScope.cardId}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户存款失败</title>
</head>
<body>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>蓝桥银行</title>
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
<!-- 导入css库模板 -->
<%@include file="template/base_css.jsp"%>
</head>

<body>
	<div id="frameBody" class="frame-body">
		<div class="frame-wrapper">
			<div id="top"></div>
			<div id="header"></div>
			<div id="page">
				<div class="glb-alert-box glb-alert-succ">
					<p class="iconfont icon-glb-right"></p>
					<div class="glb-alert-msg">
						<p class="hd">
							<em>您的操作失误。。。。。。</em> <br>
							<em>请稍等几秒系统将自动将返回密码验证页面</em> 
						</p>
					</div>
				</div>
				<div id="bottom" class="bottom"></div>
			</div>
		</div>
	</div>

</body>
<!-- 导入js库模板 -->
</html>