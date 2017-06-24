<%@page import="org.lanqiao.bank.base.util.CardUtils"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>蓝桥银行 - 我的银行卡</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/global2.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/glw.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/theme_blue.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/global.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/form.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/dialog.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/biz/uc.css" />
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript" src="${basepath}/resources/scripts/md5.js" charset="utf-8"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/animation.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/dialog.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/validate.js"></script>
<script type="text/javascript">
	$(function() {
		$("#phone").blur(function() {
			var phone = $("#phone").val();

			if (phone == "" || phone.length < 6) {
				$("#error1").text("请输入11位的电话号码！");
			} else {
				$("#error1").text(" ");
			}
			return false;
		});
		$("#pwd").blur(function() {

			var pwd = $("#pwd").val();
			if (pwd == "" || pwd.length < 6) {
				$("#error2").text("请输入6位以上的密码！");
			} else {
				$("#error2").text(" ");
			var md5pwd = hex_md5(pwd);
			$("#pwd").val(md5pwd);
			}

			return false;
		});
		

		$("#balance").blur(function() {
			var balance = $("#balance").val();
			if (balance == "") {
				$("#error5").text("请输入预存金额");
			} else {
				$("#error5").text(" ");
			}
			return false;
		});

		$("#password1").blur(function() {
			var pwd1 = $("#password1").val();
			var pwd2 = $("#password2").val();
			 
			if(pwd1==""||pwd2==""||pwd1.length<6){
			
				$("#error7").text("请输入六位数字密码！");
			}else if(pwd2!=pwd1){
				$("#error6").text("两次输入密码不一致！");
			}else{
				$("#error6").text(" ");
			var md5pwd = hex_md5(pwd1);
			var md5pwd2 = hex_md5(pwd2);
			$("#password1").val(md5pwd);
			$("#password2").val(md5pwd2);
				}
			return false;

		});


		$("#submit1").click(function() {
			var phone = $("#phone").val();
			var pwd = $("#pwd").val();
			if (phone == ""|| pwd=="") {
				alert("请输入电话或密码");
			} else{
			$("#userSubmit").submit();
			}
			return false;
		});
		$("#submit2").click(function() {
		
			var balance = $("#balance").val();
			var pwd = $("#password1").val();
			var pwd2 = $("#password2").val();
			if (balance == ""|| pwd==""||pwd2=="") {
			alert("请输入密码或预存余额");
			} else{
			$("#addSubmit").submit();
			}
			return false;
		});
	});
</script>
</head>

<body>
	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<div id="logo">
				<a href="uc.html"> <img
					src="${basepath }/resources/user/images/logo.png" alt="蓝桥" />
				</a>
			</div>

		</div>
	</div>
	<div id="page">
		<div class="main layout">
			<div class="col-menu">
				<ul class="menu-items">
					<li class="menu-current"><a href="#"> <span
							class="menu-txt">用户信息</span>
					</a></li>
					<li class="last current"><a href="#"> <span
							class="menu-txt">添加银行卡</span>
					</a></li>
				</ul>
			</div>


			<div class="col-main">
				<div class="main-hd">
					<h3 class="iconfont icon-menu-bm">添加银行卡</h3>
				</div>
				<div class="glb-main-bd">
					<div class="glb-main-content">
						<c:if test="${empty requestScope.user }">
							<form class="form-body" id="userSubmit"
								action="${basepath}/LCustomer/BCustomer/selectUser" id="userSubmit"
								method="post">
								<div class="form-item">
									<div class="form-entity">
										请输入电话号码：<input type="text" class="form-ipt glb-col-w190"
											name="phone" id="phone" />
									</div>
									<p id="error1"></p>
								</div>
								<div class="form-item">
									<div class="form-entity">
										请输入密码：<input type="password" class="form-ipt glb-col-w190"
											name="password" id="pwd" />

									</div>
									<p id="error2"></p>
								</div>
									<c:if test="${!empty requestScope.error}">
										<div class="login-error">
											<p id="error" align="center">手机号或密码不正确！</p>
										</div>
									</c:if>
								<div class="form-action">
									<button id="submit1" class="glb-button glb-btn-primary">
										<span id="">确定</span>
									</button>
									
								</div>

							</form>



						</c:if>
						<c:if  test="${!empty requestScope.user }">
						  
							<form class="form-body" id="addSubmit"
								action="${basepath}/LCustomer/BCustomer/addNewCard" method="post">
								<div class="form-item">
									<div class="form-entity">
										<input type="hidden" class="form-ipt glb-col-w190"
											name="phone" id="phone" value="${requestScope.user.phone}" />
									</div>

								</div>
								<div class="form-item">
									<div class="form-entity">
										<input type="hidden" class="form-ipt glb-col-w190" name="bank"
											id="bank" value="1" />
									</div>
								</div>
								
							
								
								
								<div class="form-item">
									<div class="form-entity">
											
										新&nbsp;卡&nbsp;号：<input type="text" class="form-ipt glb-col-w190" 
										 name="cardNumber" value=<%=CardUtils.createCard() %> />
										
									</div>
									<p id="error4"></p>
								</div>
								<div class="form-item">
									<div class="form-entity">
										请输入预存金额：<input type="text" class="form-ipt glb-col-w190"
											name="balance" id="balance" />
									</div>
									<p id="error5"></p>
								</div>
								<div class="form-item">
									<div class="form-entity">
										输入支付密码：<input type="password"
											class="form-ipt glb-col-w190" name="cardPassword"
											id="password1" />
									</div>
									<p id="error7"></p>
								</div>
								<div class="form-item">
									<div class="form-entity">
										再次&nbsp;确认密码：<input type="password"
											class="form-ipt glb-col-w190" name="cardPassword2"
											id="password2" />
									</div>
									<p id="error6"></p>
								</div>
								<c:if test="${!empty requestScope.error}">
										<div class="login-error">
											<p id="error8" align="center">您还没有填写信息！</p>
										</div>
									</c:if>
								<div class="form-action">
									<button id="submit2" class="glb-button glb-btn-primary">
										<span>确定添加</span>
									</button>
								</div>
							</form>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="bottom" class="bottom"></div>

</body>

</html>