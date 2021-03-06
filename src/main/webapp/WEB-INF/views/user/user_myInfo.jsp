<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>蓝桥银行 - 账户设置</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/biz/uc.css">
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/user/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/group.js"></script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
<body>
	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<div id="logo">
				<a href="uc.html"> <img
					src="${basepath}/resources/user/images/logo.png" alt="蓝桥" />
				</a>
			</div>
		</div>
	</div>
	<div id="page">
		<div class="main layout">
			<div class="col-menu">
				<ul class="menu-items">
					<li class="current"><a class="menu-txt iconfont icon-menu-um"
						href="my_info.html">会员资料</a></li>
				</ul>
			</div>
			<div class="col-main">
				<div class="main-hd">
					<h3 class="iconfont icon-menu-bm">会员信息</h3>
				</div>
				<div class="main-bd">
					<div class="content-bd">
						<div class="group-hd">
							<table
								style="border-collapse:separate; border-spacing:0px 10px; font-size: 20px">
								<tr>
									<td>头像:</td>
									<td><img
										src="${basepath }/upload/user/${sessionScope.user.photo }"
										height="100px" width="100px"></td>
								</tr>

								<tr>
									<td>姓名:</td>
									<td>${sessionScope.user.name }</td>
								</tr>
								<tr>
									<td>年龄:</td>
									<td>${sessionScope.user.age}</td>
								</tr>
								<tr>
									<td>性别:</td>
									<c:if test="${sessionScope.user.gender==1 }">
										<td>男</td>
									</c:if>
									<c:if test="${sessionScope.user.gender==0}">
										<td>女</td>
									</c:if>
								</tr>
								<tr>
									<td>别名:</td>
									<td>${sessionScope.user.nickname }</td>
								</tr>
								<tr>
									<td>地址:</td>
									<td>${sessionScope.user.address }</td>
								</tr>
								<tr>
									<td>电话:</td>
									<td>${sessionScope.user.phone }</td>
								</tr>
								<tr>
									<td>生日:</td>
									<td>
										<%-- ${sessionScope.user.birthday } --%> <fmt:formatDate
											value="${sessionScope.user.birthday}" type="date" />
									</td>
								</tr>
								<tr>
									<td>出生地:</td>
									<td>${sessionScope.user.birthplace }</td>
								</tr>
								<tr>
									<td>邮箱:</td>
									<td>${sessionScope.user.email }</td>
								</tr>
								<tr>
									<td>注册时间:</td>
									<td><fmt:parseDate
											value="${sessionScope.user.registerDate}"
											pattern="yyyy-MM-dd" var="receiveDate"></fmt:parseDate> <fmt:formatDate
											value="${receiveDate}" pattern="yyyy-MM-dd"></fmt:formatDate>
									</td>
								</tr>
								<tr>
									<td style="font-weight: 900; font-size: 25">编辑<a
										href="${basepath}/LUser/UrlToView/userUpdate"><img alt=""
											src="${basepath}/resources/imgs/bianji.jpg" width="50"
											height="40"></a>
									</td>
									<td style="font-weight: 900; font-size: 25">返回首页<a
										href="${basepath}/LUser/UrlToView/index"><img alt=""
											src="${basepath}/resources/imgs/fanhui.png" width="50"
											height="40"></a></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="bottom" class="bottom"></div>
</body>
</body>
</html>
