<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<title>客服管理-用户登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath}/resources/imgs/logo.png" />
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
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
							<span class="menu-ico iconfont icon-coin"></span> <span
							class="menu-txt">用户服务</span> <span class="badge badge--warning"></span>
					</a></li>
				</ul>
			</div>

			<div class="glb-main">
				<div class="glb-main-hd">
					<h3 class="main-title">用户服务&nbsp;&gt;&nbsp;用户登录</h3>
				</div>
				<div class="glb-main-bd">
					<div class="glb-main-content">
						<div class="glb-layout">
							<form class="form-body"
								action="${basepath}/LCustomer/CustomerAndUser/userRepay"
								id="form" method="post" name="form">
								<div class="form-item">
									<h5 class="form-label">用户名:</h5>
									<div class="form-entity">
										<div class="form-field">
											<input class="form-ipt" type="text" name="name" value=""
												placeholder="请输入用户名" />&nbsp;&nbsp; <span
												style="color: red;" id="error_name"></span> <span
												id="error_name" style="color: #F83232">${requestScope.error1 }</span>
										</div>
									</div>
								</div>
								<div class="form-item">
									<h5 class="form-label">登录密码:</h5>
									<div class="form-entity">
										<div class="form-field form-ipt-group">
											<input id="passwordIpt" class="form-ipt" type="password"
												name="password" value="" placeholder="请输入登录密码" />&nbsp;&nbsp;
											<span style="color: red;" id="error_password">${errorInfo}</span>
											<span id="error_password" style="color: #F83232">${requestScope.error }</span>
											<a id="togglePwdType"
												class="ipt-addon ipt-icon iconfont icon-password"
												href="javascript:;"></a>
										</div>
									</div>
								</div>
								<div class="form-action">
									<a class="glb-button glb-btn-primary"
										href="javascript:check();">登录</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="templates/footer.jsp"%>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/jquery.min.js"></script>
	<script
		src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/global.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/validate.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/global.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/validate.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/scripts/md5.js" charset="utf-8"></script>
	<script type="text/javascript">
		function check() {
			var name = $(":input[name=name]").val();
			var password = $(":input[name=password]");
			var error_name = $("#error_name");
			var error_password = $("#error_password");
			if (name.length == "") {
				error_name.text("用户名不能为空");
			} else if (password.val().length == "") {
				error_name.text("");
				error_password.text("密码不能为空");
			} else {
				error_password.text("");
				password.val(hex_md5(password.val()));
				$("#form").submit();
			}
		}
	</script>
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
