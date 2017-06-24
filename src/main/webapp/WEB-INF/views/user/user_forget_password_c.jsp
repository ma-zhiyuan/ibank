<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>




<!DOCTYPE html >
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>蓝桥银行 - 忘记密码</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/biz/reg.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/user/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/scripts/md5.js" charset="utf-8"></script>
<script type="text/javascript">
	$(function() {
		$("#submitBtn").click(function() {
			var pwd1 = $("#pwd1").val();
			var pwd2 = $("#pwd2").val();
			if (pwd1 == "" || pwd2 == "") {
				$("#error").text("密码不能为空");
				return false;
			}
			if (pwd1 != pwd2 || pwd1 == "" || pwd2 == "") {
				$("#error").text("密码不一致");
				return false;
			}
			$("#error").text("");
			var md5pwd1 = hex_md5(pwd1);
			$("#pwd1").val(md5pwd1);
			var md5pwd2 = hex_md5(pwd2);
			$("#pwd2").val(md5pwd2);
			return true;
		})

	})
</script>
<style type="text/css">
#error {
	color: #F00
}
</style>
</head>

<body>
	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<a href="" id="logo"> <img
				src="${basepath}/resources/user/images/logo.png" alt="蓝桥" />
			</a>
		</div>
	</div>
	<div id="page">
		<div class="layout reg-wrapper">
			<div class="reg-top">
				<ul class="reg-step-nav">
					<li class="step-a">
						<p>输入账号信息</p>
					</li>
					<li class="step-b">
						<p>输入验证码</p>
					</li>
					<li class="step-c current">
						<p>输入新密码</p>
					</li>
					<li class="step-d">
						<p>重置成功</p>
					</li>
				</ul>
			</div>
			<form class="form-bd" action="${basepath}/LUser/User/update_password"
				onsubmit="return check()" id="search_form" method="post">
				<div class="form-item">
					<h4 class="form-label">新密码:</h4>
					<div class="form-entity">
						<div class="form-field">
							<input class="ipt" type="password" id="pwd1" name="pwd1" value=""
								placeholder="请输入密码" />
						</div>
					</div>
				</div>
				<div class="form-item">
					<h4 class="form-label">确认新密码:</h4>
					<label id="error"></label>
					<div class="form-entity">
						<div class="form-field">
							<input class="ipt" type="password" id="pwd2" name="pwd2" value=""
								placeholder="请输入确认密码" />
						</div>
					</div>
				</div>
				<div class="form-action clearfix">
					<a id="submitBtn" href="javascript:document:search_form.submit();"
						class="glb-btn submit-btn"> <span>下一步</span>
					</a>
				</div>
			</form>
		</div>
		<div id="bottom" class="bottom"></div>
	</div>
</body>

</html>