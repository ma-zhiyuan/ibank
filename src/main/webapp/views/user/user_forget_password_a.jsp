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
	      $(function(){
	      $("#submit").click(function(){
			var email = $("#user_email").val(); 
			var  temp = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
			var phone = $("#user_phone").val(); 
			var mobile= /^1(3|4|5|7|8)\d{9}$/;
			if(phone==""){return false;}
			if(email==""){return false;}
			if(!mobile.test(phone)){
				alert("请输入正确的手机号码。")
				return false;
			}
			if(!temp.test(email)&&email!=""){
				alert("请输入正确的电子邮箱。")
				return false;
			}
			if(phone!=""&&email!=""){
			   var flag = true;
					 $.ajax({
					    type:"post",
						url:"/ibank/LUser/User/getuserbyphone",
						async:false,
						cache:false,
						data:{user_phone:phone,user_email:email},
						success:function(data){
							if(data=="false"){
								alert("该手机号未绑定该邮箱")
								flag=false;
							}
						}
					});	 
				return flag;
			}
			
		});
	   }); 
	   
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
						<li class="step-a current">
							<p>输入账号信息</p>
						</li>
						<li class="step-b">
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
				<form class="form-bd" action="${basepath}/LUser/User/i_forget_password" onsubmit="return check()" id="search_form" method="post">
					<div class="form-item">
						<h4 class="form-label">需要修改密码用户的手机号:</h4>
						<div class="form-entity">
							<div class="form-field">
								<input class="ipt" type="text" id="user_phone" name="user_phone"  placeholder="请输入手机号" />
							</div>
						</div>
					</div>
					<div class="form-item">
						<h4 class="form-label">接收验证码的电子邮箱:</h4>
						<div class="form-entity">
							<div class="form-field">
								<input class="ipt" type="email" id="user_email" name="user_email"  placeholder="请输入邮箱" />
							</div>
						</div>
					</div>
					<div class="form-action clearfix">
						<a href="javascript:document:search_form.submit();" id="submit" class="glb-btn submit-btn">
							<span>立即发送邮箱</span>
						</a>
					</div>
				</form>
			</div>
			<div id="bottom" class="bottom">
			</div>
		</div>
	</body>

</html>