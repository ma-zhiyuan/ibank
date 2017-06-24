<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>申请信用卡</title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath}/resources/imgs/logo.png" />
</script>
</head>

<body>
	<%@include file="templates/header.jsp"%>
	<div class="glb-page">
		<div class="glb-layout">
			<%@include file="templates/lefter.jsp"%>
			<div class="glb-main-hd">
				<h3 class="main-title">申请信用卡</h3>
				<div class="main-toolbar">
					<a href="${basepath }/LCustomer/BCustomer/registCreditCard"
						class="glb-button glb-btn-primary">返回</a>
				</div>
			</div>

			<div class="glb-main-bd">
				<div class="glb-main-content">

					<div id="frameBody" class="frame-body">
						<div class="frame-wrapper">
							<div id="page">
								<div class="glb-alert-box glb-alert-succ">
									<p class="iconfont icon-glb-right"></p>
									<div class="glb-alert-msg">
										<p class="hd">
										<h3>${requestScope.msg }</h3>
										</h3>
										<br> <a
											href="${basepath }/LCustomer/BCustomer/registCreditCard"
											class="glb-button glb-btn-primary">返回</a>
										</p>
									</div>
								</div>
								<div id="bottom" class="bottom"></div>
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
