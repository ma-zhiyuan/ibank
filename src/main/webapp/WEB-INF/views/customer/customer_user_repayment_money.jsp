<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE>
<html>
<head>


<title>客服管理-用户还款</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/admin/js/jquery.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<%@include file="templates/header.jsp"%>
	<div class="glb-page">
		<div class="glb-layout">
			<div class="glb-menu">
				<ul class="glb-menu-items">
					<li><a href="#"> <span
							class="menu-ico iconfont icon-members"></span> <span
							class="menu-txt">用户信息</span>
					</a></li>
					<li><a href="#"> <span
							class="menu-ico iconfont icon-advert"></span> <span
							class="menu-txt">银行卡管理</span>
					</a></li>
					<li><a
						href="${basepath }/LCustomer/customer/customerAnnouncement?pageNow=1">
							<span class="menu-ico iconfont icon-3line-y"></span> <span
							class="menu-txt">通知管理</span>
					</a></li>
					<li><a
						href="${basepath }/LCustomer/CService/UserConsultation?pageNow=1">
							<span class="menu-ico iconfont icon-coin"></span> <span
							class="menu-txt">用户咨询</span>
							<div class="notice">${sessionScope.notReplaySize }</div>
					</a></li>

					<li class="menu-current"><a
						href="${basepath }/LCustomer/CustomerAndUser/toCusVerifyUser">
							<span class="menu-ico iconfont icon-members"></span> <span
							class="menu-txt">用户信息</span><span class="badge badge--warning"></span>
					</a></li>
				</ul>
			</div>

			<div class="glb-main">
				<div class="glb-main-hd">
					<h3 class="main-title">用户服务&nbsp;&gt;&nbsp;用户还款</h3>
				</div>
				<div class="glb-main-bd">
					<div class="glb-main-content">
						<form id="form" name="form" class="form-inline" action="${basepath }/LCustomer/CustomerAndUser/repayment" style="">
							<div style="padding-left: 100px;">
								<div class="form-item">
									<h5>
										&nbsp;&nbsp;&nbsp;&nbsp;需还款金额:<input class="form-control" type="number" name="totalRepayment"
											id="totalRepayment" value="${requestScope.totalRepayment }" readonly/> <span id="error1"></span>
									</h5>
								</div>
								<div class="form-item">
									<h5>
										实际还款金额:<input class="form-control" type="text"  id="money" name="money"/>
									</h5>
								</div>
								<br>
								<div style="padding-left: 100px;">
									<button type="sumbit" class="btn btn-primary">&nbsp;&nbsp;还款&nbsp;&nbsp;</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="templates/footer.jsp"%>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/global.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/validate.js"></script>
	<style>
.notice {
	width: 20px;
	height: 20px;
	line-height: 20px;
	font-size: 10px;
	color: #fff;
	text-align: center;
	background-color: #f00;
	border-radius: 50%;
	position: absolute;
	right: 77%;
	top: 45%;
}
</style>
</body>
</html>
