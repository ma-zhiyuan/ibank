<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>蓝桥银行 - 我的银行卡</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/global.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/form.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/biz/uc.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/dialog.css" />
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/scripts/md5.js" charset="utf-8"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/animation.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/dialog.js"></script>

<script type="text/javascript">




	/* $(function() {

		$("#applyNewCard").click(function() {

			Dialogx.show({
				_url : 'dialog_bank.html',
				_title : '请选择要申请的银行',
				_callback : function(dialog) {
					$(".bank-card-x").click(function() {
						dialog.closeDialog();
					});
				}
			});
		});

	}); */
	$(function() {
		$("#submit").click(function() {
		    var pwd = $("#password").val();
			var pwd2 = $("#password2").val();
			if(pwd!=pwd2){
			  return false;
			}else{
			if (pwd != "") {
				var md5pwd = hex_md5(pwd);
				$("#password").val(md5pwd);
			}
			if (pwd2 != "") {
				var md5pwd2 = hex_md5(pwd2);
				$("#password2").val(md5pwd2);
			}
			}
			
		});
	});

	$(function() {
			$("#email").blur(function() {
				var f = document.form;
				var email = f.email.value;
				var filter = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
				var password = f.password.value;
				if (email == "") {
					document.getElementById("error1").innerHTML = "邮箱不能为空！";
					f.email.focus();
					return false;
				} else if (!filter.test(email)) {
					document.getElementById("error1").innerHTML = "邮箱格式不正确！";
					f.email.focus();
					return false;
				} else {
					document.getElementById("error1").innerHTML = "";
				}
			});
			$("#password").blur(function() {
				var f = document.form;
				var password = f.password.value;
				var password2 = f.password2.value;
				if (password == "") {
					document.getElementById("error2").innerHTML = "密码不能为空";
					f.password.focus();
					return false;
				} else if (password.length != 6) {
					document.getElementById("error2").innerHTML = "密码为6位，请重新输入！";
					f.password.focus();
					return false;
				} else {
					document.getElementById("error2").innerHTML = "";
				}
			});

			$("#password2").blur(function() {
				var f = document.form;
				var password = f.password.value;
				var password2 = f.password2.value;
				var submit=f.submit.value;
				if (password != password2) {
					document.getElementById("error3").innerHTML = "你两次输入的密码不一致，请重新输入！";
					f.password2.focus();
					return false;
				} else {
					document.getElementById("error3").innerHTML = "";
				}
			});
			/* $("#submit").click(function() {
				var f = document.form;
				var email = f.email.value;
				var password = f.password.value;
				var password2 = f.password2.value;
				var submit = f.submit.value;
				if (email == null || password == null || password2 == null) {
					document.getElementById("error3").innerHTML = "以上信息有误！重新填写！";
					f.submit.focus();
					return false;
				} else {
					document.getElementById("error3").innerHTML = "";
				}
			}); */
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
					<li><a class="menu-txt iconfont icon-menu-um"
						href="${basepath }/LUser/User/myinfo?id=${sessionScope.user.id}">用户资料</a></li>
					<li class="last current"><a
						class="menu-txt iconfont icon-menu-pm" href="my_card_list.html">申请银行卡</a>
					</li>
				</ul>
			</div>
			<div class="col-main">
				<div class="main-hd">
					<h3 class="iconfont icon-menu-bm">申请银行卡</h3>
				</div>
				<div class="main-bd">
					<div class="content-hd">
						<%-- <p class="tips">
							您当前已申请<span class="em">2</span>张银行卡 <a id="applyNewCard"
								href="${basepath }/views/user/user_add_card_first.jsp">+申请新银行卡</a>
						</p> --%>
					</div>
					<form action="${basepath }/LUser/card_user/addCard" method="post"
						name="form" id="form" onsubmit="return check_login();">
						<div class="form-group">
							<label class="col-sm-2 control-label" for="inputSuccess">
								请填写邮箱 </label>
							<div class="col-sm-5">
								<input type="email" id="email" name="email" class="form-control"
									value="" placeholder="请填写邮箱"> <span id="error1"
									style="color: #F83232">${requestScope.error1 }</span>
							</div>
						</div>
						<br /> <br /> <br />
						<div class="form-group">
							<label class="col-sm-2 control-label" for="inputSuccess">
								设置支付密码 </label>
							<div class="col-sm-5">
								<input type="password" id="password" name="password"
									class="form-control" value="" placeholder="请设置6位支付密码">
								<span id="error2" style="color: #F83232"></span>
							</div>
						</div>
						<br /> <br /> <br>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="inputSuccess">
								确认支付密码 </label>
							<div class="col-sm-5">
								<input type="password" id="password2" name="password2"
									class="form-control" value="" placeholder="请再次输入支付密码">
								<span id="error3" style="color: #F83232">${requestScope.error3 }</span>
							</div>
						</div>
						<br /> <br /> <input type="submit" id="submit" name="submit"
							class="center-block btn btn-info" value="提交">
						<!-- <button type="submit" id="submit" name="submit" class="center-block btn btn-info">提交</button> -->
					</form>

				</div>
			</div>
		</div>
	</div>
	<div id="bottom" class="bottom"></div>
</body>

</html>
