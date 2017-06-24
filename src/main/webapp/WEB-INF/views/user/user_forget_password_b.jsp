<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html >
<html >

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>蓝桥银行 - 忘记密码</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<link rel="stylesheet" type="text/css" href="${basepath}/resources/user/css/global.css">
		<link rel="stylesheet" type="text/css" href="${basepath}/resources/user/css/form.css">
		<link rel="stylesheet" type="text/css" href="${basepath}/resources/user/css/biz/reg.css">
		<link rel="stylesheet" type="text/css" href="${basepath}/resources/user/css/biz/security.css">
		<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
		<script type="text/javascript" src="${basepath}/resources/user/js/jquery.js"></script>
		<script type="text/javascript" src="${basepath}/resources/user/js/global.js"></script>
		<script type="text/javascript" src="${basepath}/resources/user/js/util.js"></script>
	<script type="text/javascript">
			$(function(){
				$("#submit").click(function(){
					var secretKey=$("#secretKey").val();
					if(secretKey==""){return false;}
					
				})
			})
		</script>
	</head>

	<body>
		<div id="top">
		</div>
		<div id="header">
			<div class="layout">
				<div id="logo">
					<a href="uc.html">
						<img src="${basepath}/resources/user/images/logo.png" alt="蓝桥" />
					</a>
				</div>
			</div>
		</div>
		<div id="page">
			<div class="layout reg-wrapper">
				<div class="reg-top">
					<ul class="reg-step-nav">
						<li class="step-a">
							<p>输入账号信息</p>
						</li>
						<li class="step-b current">
							<p>输入验证码</p>
						</li>
						<li class="step-c">
							<p>输入新密码</p>
						</li>
						<li class="step-d">
							<p>重置成功</p>
						</li>
					</ul>
				</div>
				<form class="form-bd" action="${basepath}/LUser/User/toreset_password" onsubmit="return check()" id="search_form" >
					<div class="form-item">
						<h4 class="form-label">请输入验证码:</h4>
						<div class="form-entity">
							<div class="form-field">
								<input class="ipt" type="text" id="secretKey" name="secretKey"  placeholder="请输入验证码" /><label id="error">${requestScope.msg }</label>
							</div>
						</div>
					</div>
					<div class="form-action clearfix">
						<a href="javascript:document:search_form.submit();" id="submit" class="glb-btn submit-btn">
							<span>下一步</span>
						</a>
					</div>
				</form>	
			</div>
			<div id="bottom" class="bottom">
			</div>
		</div>
	</body>

</html>