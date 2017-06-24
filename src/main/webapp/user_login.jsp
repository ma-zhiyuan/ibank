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
		<title>蓝桥银行-登录</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<link rel="stylesheet" type="text/css" href="${basepath}/resources/user/css/global.css">
		<link rel="stylesheet" type="text/css" href="${basepath}/resources/user/css/biz/login.css">
		<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
		<script type="text/javascript" src="${basepath}/resources/user/js/jquery.js"></script>
		<script type="text/javascript" src="${basepath}/resources/user/js/global.js"></script>
		<script type="text/javascript" src="${basepath}/resources/scripts/md5.js" charset="utf-8"></script>
		<script type="text/javascript">
		
		    $("#phone").blur(function(){
					var phone=$("#phone").val();
					var pwd=$("#password").val();
					var vcode=$("#vcode").val();
					if(phone==""){
						$("#error").text("请输入电话号码");
					    }else
					if(pwd==""){
                        $("#error").text("请输入密码");
                        }else
                    if(vcode==""){
                        $("#error").text("请输入验证码");
                        }else{
                        $("#error").text("请登录");
                    }					    
		     });
		    $("#password").blur(function(){
					var phone=$("#phone").val();
					var pwd=$("#password").val();
					var vcode=$("#vcode").val();
					if(phone==""){
						$("#error").text("请输入电话号码");
					    }else
					if(pwd==""){
                        $("#error").text("请输入密码");
                        }else
                    if(vcode==""){
                        $("#error").text("请输入验证码");
                        }else{
                        $("#error").text("请登录");
                    }
		    });
		    
		
		function reImg(){  
            var img = document.getElementById("Img");  
            img.src = "/ibank/LUser/User/vcode?rnd=" + Math.random();  
        }  
        
        
	 $(function(){
	 var flag = true;
		    $("#vcode").blur(function(){
					var phone=$("#phone").val();
					var pwd=$("#password").val();
					var vcode=$("#vcode").val();
					if(phone==""){
						$("#error").text("请输入电话号码");
					    }else
					if(pwd==""){
                        $("#error").text("请输入密码");
                        }else
                    if(vcode==""){
                        $("#error").text("请输入验证码");
                        }else{
                        $("#error").text("请登录");
                    }
					var vcode = $("#vcode").val();
					var code = vcode.toUpperCase();
					var url = "/ibank/LUser/User/getcode";
					$.ajax({
						url:url,
						async:false,
						cache:false,
						success:function(data){
							if(code!=data){
								$("#error").text("验证码错误");
								flag=false;
							}else{
							    flag=true; 
							}
						}
					});	
					return flag;
		    });
	 $("#submit").click(function(){
	 var pwd=$("#password").val();
	 if(pwd!=""){
		var md5pwd = hex_md5(pwd);
		$("#password").val(md5pwd);
        }
       if(flag==false){
       return false;
       }
	 });
   });
		
		</script>
	</head>

	<body class="login-body">
		<div id="top"></div>
		<div id="header"></div>
		<div class="login-wrapper">
			<div class="login-pos layout">
				<div class="login-box login-wth-code">
					<div class="login-bd login-opa60">
					   <form action="${basepath}/LUser/User/login" onsubmit="return check()" id="search_form" method="post">
						<h3 class="login-title">登录</h3>
						<dl class="login-item">
							<dt>
							<span class="iconfont icon-acc-user"></span>
						</dt>
							<dd>
								<input type="text"   id="phone" name="phone" placeholder="请输入电话号码" />
							</dd>
						</dl>
						<dl class="login-item">
							<dt>
							<span class="iconfont icon-acc-pwd"></span>
						</dt>
							<dd>
								<input type="password" id="password" name="password" placeholder="请输入密码" />
							</dd>
						</dl>
						<p class="login-help">
							<a href="${basepath}/views/user/user_registe_a.jsp" class="register">立即注册</a>
							<a href="${basepath}/views/user/user_forget_password_a.jsp" class="forget-pwd" >忘记密码?</a>
						</p>
						<div class="login-code clearfix">
							<dl class="login-item ">
								<dt>
								<span class="iconfont icon-acc-kaptcha"></span>
							</dt>
								<dd>
									<input type="text"  name="vcode" id="vcode" placeholder="验证码" />
								</dd>
							</dl>
							<a  onclick="reImg();" class="login-captcha">
								<img id="Img" src="${basepath}/LUser/User/vcode" alt="点击刷新" />
							</a>
						</div>
						<a href="javascript:document:search_form.submit();" id="submit" class="glb-btn login-btn">
							<span>登 录</span>
						</a>
						<c:if test="${empty sessionScope.error2}">
						<div class="login-error" >
							<span class="iconfont icon-wrong" ></span>
							<p id="error">请输入电话号码</p>
						</div>
						</c:if>
						<c:if test="${!empty sessionScope.error2}">
						<div class="login-error"  >
							<span class="iconfont icon-wrong" ></span>
							<p id="error">用户名或密码错误</p>
						</div>
						</c:if>
					  </form>	  
					</div>
				</div>
			</div>
		</div>
		<div class="bottom" id="bottom">
		</div>
	</body>

</html>
