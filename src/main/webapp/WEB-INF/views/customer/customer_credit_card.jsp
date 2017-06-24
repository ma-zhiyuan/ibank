<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客服主页-申请信用卡</title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
</head>

<body>
	<%@include file="templates/header.jsp"%>
	<div class="glb-page">
		<div class="glb-layout">
		<%@include file="templates/lefter.jsp" %>
			<%-- <div class="glb-menu">
				<ul class="glb-menu-items">
					<li class="menu-current"><a href="#"> <span
							class="menu-ico iconfont icon-members"></span> <span
							class="menu-txt">用户信息</span>
					</a></li>
					<li><a href="#"> <span
							class="menu-ico iconfont icon-advert"></span> <span
							class="menu-txt">银行卡管理</span>
					</a></li>
					<li><a
						href="${basepath }/LCustomer/customer/LCustomer/customerAnnouncement?pageNow=1">
							<span class="menu-ico iconfont icon-3line-y"></span> <span
							class="menu-txt">通知管理</span>
					</a></li>
					<li><a
						href="${basepath }/LCustomer/CService/UserConsultation?pageNow=1">
							<span class="menu-ico iconfont icon-coin"></span> <span
							class="menu-txt">用户咨询</span>
							<div class="notice">${sessionScope.notReplaySize }</div>
					</a></li>
					<li><a
						href="${basepath }/LCustomer/CustomerAndUser/toCusVerifyUser">
							<span class="menu-ico iconfont icon-coin"></span> <span
							class="menu-txt">用户服务</span> <span class="badge badge--warning"></span>
					</a></li>
				</ul>
			</div> --%>

			<div class="glb-main">
				<div class="glb-main-hd">
					<h3 class="main-title">客服中心&nbsp;&gt;&nbsp;申请信用卡</h3>
				</div>
				<div class="glb-main-bd">
					<div class="glb-main-content">
						<div class="form-item">
							<h3 class="form-label">验证用户是否存在:</h3>
						</div>
						<div class="glb-page glb-wrapper">
							<div class="glb-layout">
								<div class="glb-col-p60 glb-center">
									<form class="form-body" action="${basepath }/LCustomer/BCustomer/VerificationUser" id="form">
										<div class="form-item">
											<h5 class="form-label">手机号:</h5>
											<div class="form-entity">
												<div class="form-field">
													<input class="form-ipt" type="text" name="phone"
														value="" placeholder="请输入手机号" />
												</div>
											</div>
										</div>
										<div class="form-action">
											<input type="submit"   class="glb-button glb-btn-primary"
												value="下一步" />
										</div>
									</form>
								</div>
							</div>
						</div>
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
