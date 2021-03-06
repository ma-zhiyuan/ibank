<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>咨询回复</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/dialog.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/biz/uc.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/user/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/animation.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/dialog.js"></script>
</head>

<body>
	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<div id="logo">
				<a href="uc.html"> <img src="${basepath}/resources/user/images/logo.png"
					alt="蓝桥" />
				</a>
			</div>
			<div id="nav" class="glb-nav">
				<ul class="clearfix">
					<li class="glb-nav-setting"><a
						href="${basepath}/LUser/User_Consultation/getConsultation"
						style="color: black;text-decoration: none;font-size: 16px;"> <span>咨询</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="main uc-main">
		<div class="layout">
			<div class="uc-main-box clearfix">
				<div class="uc-trade-hd">
					<h3 class="title">
						<span></span>用户咨询
					</h3>
					<ul class="col-opts col-opts-main">
						<li><a href="${basepath }/LUser/User_Consultation/toUserConsultationList">用户咨询首页</a></li>
					</ul>
					
					<div class="glb-main">
				<div class="glb-main-bd">
					<div class="glb-main-content">
						
						<form class="form-body" action="${basepath }/LUser/User_Consultation/processingConsultation?id=${sessionScope.user.id}&pageNow=1"
							method="post" id="form" >
							<div class="form-item">
								<div class="form-entity">
									<div class="form-field">
										<input class="form-ipt" type="hidden" name="id" value="${requestScope.id }"
											placeholder="" />
									</div>
								</div>
							</div>

							<div class="form-item">
								<h5 class="form-label">咨询:</h5>
								<div class="form-entity">
									<div class="form-field">
										<input class="form-ipt" type="text" name="replay" value=""
											placeholder="请输入咨询内容" />
									</div>
								</div>
							</div>
							
							<div class="form-action">
								<input type="submit" value="咨询"
									class="glb-button glb-btn-primary" form="form">
							</div>
						</form>
						
						
					</div>
				</div>
				

			</div>


		</div>
		</div>

		<div id="bottom" class="bottom"></div>
</body>

</html>