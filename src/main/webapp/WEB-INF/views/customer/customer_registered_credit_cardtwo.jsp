<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<script type="text/javascript" src="${basepath}/resources/scripts/md5.js" charset="utf-8"></script>
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
				<form class="form-body" action="${basepath }/LCustomer/BCustomer/addcreditcard"
					id="form" method="post">
					<div class="form-item">
						<h6 class="form-label">请输入充值金额:</h6>
						<div class="form-entity">
							<input type="text" class="form-ipt glb-col-w190" name="balance"
								id="balance" />
						</div>
					</div>
					<div class="form-item">
						<h6 class="form-label">请输入六位密码:</h6>
						<div class="form-entity">
							<input type="password" class="form-ipt glb-col-w190" name="password"
								id="password" />
						</div>
					</div><div class="form-item">
						<h6 class="form-label">请再次输入六位密码:</h6>
						<div class="form-entity">
							<input type="password" class="form-ipt glb-col-w190" name="password2"
								id="password2" />
						</div>
					</div>
					<div class="form-item">
						<div class="form-entity">
							<input type="hidden" class="form-ipt glb-col-w190" name="userid"
								id="userid" value="${requestScope.user.id } " />
						</div>
					</div>
					<div class="form-action">
						<div class="form-action">
						<input type="submit" value="确认添加" class="glb-button glb-btn-primary" id="btn" form="form">
					</div>
					</div>
				</form>
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
	<script type="text/javascript">
	$(function() {
		$("#btn").click(function(){
			var pwd = $("#password").val();
			var pwd2 = $("#password2").val();
		
			if(pwd!=pwd2){
				alert("两次密码不一致!");
				return false;
			}
			if(pwd.length!= 6){
				alert("请输入六位密码");
				return false;
			} 
			
			var password = hex_md5(pwd);
			$("#password").val(password);
			
		});
	
	});
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
