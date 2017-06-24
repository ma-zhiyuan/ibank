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
<title>添加客服成功</title>
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
	<div id="top" class="glb-topbar">
		<div class="glb-layout">
			<ul class="glb-left">
				<li><a href="#" target="_blank"><span
						class="item-ico iconfont icon-home"></span>主页</a></li>
				<li><a href="#" target="_blank"><span
						class="item-ico iconfont icon-mblog"></span>官方微博</a></li>
			</ul>
			<ul class="glb-right">
				<c:if test="${empty customer}">
					<li><a href="${basepath}/views/customer/customer_login.jsp">登录</a>
					</li>
					<li><a
						href="${basepath}/views/customer/cusService_register.jsp">注册</a></li>
				</c:if>
				<c:if test="${!empty customer}">
					<li>你好, 张三丰</li>
					<li><a href="#">退出</a></li>
				</c:if>
				<li><a href="#">我的蓝桥</a></li>
				<li class="item-stripe"><a href="#">帮助中心</a></li>
				<li class="item-stripe"><a href="#">意见反馈</a></li>
			</ul>
		</div>
	</div>
	<div id="frameBody" class="frame-body">
		<div class="frame-wrapper">
			<div id="page">
				<div class="glb-alert-box glb-alert-succ">
					<p class="iconfont icon-glb-right"></p>
					<div class="glb-alert-msg">
						<p class="hd">
							<em>添加成功</em> <br> <em>返回上个页面请点击：</em> <a href="${basepath }/views/customer/customer_add_card.jsp"> 返回
							</a>
						</p>
					</div>
				</div>
				<div id="bottom" class="bottom"></div>
			</div>
		</div>
	</div>

</body>
</html>