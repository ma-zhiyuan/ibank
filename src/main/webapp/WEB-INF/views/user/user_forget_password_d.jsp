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
		<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
		<script type="text/javascript" src="${basepath}/resources/user/js/jquery.js"></script>
		<script type="text/javascript" src="${basepath}/resources/user/js/global.js"></script>
		<script type="text/javascript" src="${basepath}/resources/user/js/util.js"></script>
		
		<script type="text/javascript">
			onload=function(){
				setInterval(go,1000);
				
			};
			var x=3;
			function go(){
				x--;
				if(x>0){
					document.getElementById("sp").innerHTML=x;
				}else{
					location.href='/ibank/user_login.jsp';
				}
			}
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
						<li class="step-b">
							<p>输入验证码</p>
						</li>
						<li class="step-c">
							<p>输入新密码</p>
						</li>
						<li class="step-d current">
							<p>重置成功</p>
						</li>
					</ul>
				</div>
				<div class="glb-alert-box glb-alert-succ reg-alert-box">
					<p class="iconfont icon-glb-right"></p>
					<div class="glb-alert-msg">
						<p class="hd"> <em>您已成功修改密码!!</em>
						</p>
						<p class="bd">
							系统将在<a id="sp">3</a>秒后自动跳转至蓝桥银行。立即进入<a href="/ibank/user_login.jsp">蓝桥银行</a>
						</p>
						<p class="bd">
							温馨提示:<span class="em">用户名和密码</span>是您登录系统的唯一凭证,请您牢记!
						</p>
					</div>
				</div>
			</div>
			<div id="bottom" class="bottom">
			</div>
		</div>
	</body>

</html>