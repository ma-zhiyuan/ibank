<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 
	创建者：王泽华
		创建时间：2017年5月7日
	客服查询用户银行卡信息，显示某一张银行卡的信息
	
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客服主页-用户填写用户名和密码用来查询用户的银行卡</title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/admin/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/validate.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/scripts/jquery-3.1.1.min.js"></script>


<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/list.css">


<script type="text/javascript">

	$(function() {});
</script>


</head>
<body>
	<%@include file="templates/header.jsp"%>
	<div class="glb-page">
		<div class="glb-layout">
			<div class="glb-menu">
				<ul class="glb-menu-items">
					<li><a href="#"> <span
							class="menu-ico iconfont icon-advert"></span> <span
							class="menu-txt">信息管理</span>
					</a></li>
					<li class="menu-current"><a href="#"> <span
							class="menu-ico iconfont icon-money"></span> <span
							class="menu-txt">交易管理</span>
					</a></li>
					<li><a href="#"> <span
							class="menu-ico iconfont icon-account"></span> <span
							class="menu-txt">会员资料</span>
					</a></li>
					<li><a href="#"> <span
							class="menu-ico iconfont icon-account"></span> <span
							class="menu-txt">会员资料</span>
					</a></li>
					<li><a href="#"> <span
							class="menu-ico iconfont icon-account"></span> <span
							class="menu-txt">会员资料</span>
					</a></li>
				</ul>
			</div>





			<div class="glb-main">

				<div class="glb-main-hd">
					<h3 class="main-title">这张银行卡信息如下</h3>
				</div>
				<div class="glb-main-bd">
					<div class="glb-main-content">
						<p class="glb-tips glb-tips-success">
							<span class="iconfont icon-info"></span>银行卡信息如下
						</p>

						<div class="form-item">
							<h4 class="form-label">用户名 :</h4>
							<div class="form-entity">
								<div class="form-field">
									<p class="form-text form-text-cap">${card.user.name}</p>
								</div>
							</div>
						</div>
						<div class="form-item">
							<h4 class="form-label">手机号 :</h4>
							<div class="form-entity">
								<div class="form-field">
									<p class="form-text form-text-cap">${card.user.phone}</p>
								</div>
							</div>
						</div>
						<div class="form-item">
							<h4 class="form-label">邮箱 :</h4>
							<div class="form-entity">
								<div class="form-field">
									<p class="form-text form-text-cap">${card.user.email}</p>
								</div>
							</div>
						</div>
						<div class="form-item">
							<h4 class="form-label">银行ID:</h4>
							<div class="form-entity">
								<div class="form-field">
									<p class="form-text form-text-cap">${card.bankId}</p>
								</div>
							</div>
						</div>
						<%-- <div class="form-item">
							<h4 class="form-label">办理时间 :</h4>
							<div class="form-entity">
								<div class="form-field">
									<p class="form-text form-text-cap">${card.bank.createTime}</p>
								</div>
							</div>
						</div> --%>
						<div class="form-item">
							<h4 class="form-label">余额 :</h4>
							<div class="form-entity">
								<div class="form-field">
									<p class="form-text form-text-cap">${card.balance}</p>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="templates/footer.jsp"%>
</body>
</html>
