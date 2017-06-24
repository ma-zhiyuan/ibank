<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 
	创建者：王泽华
		创建时间：2017年5月6日
	客服查询用户银行卡信息第一步，输入用户手机号和密码
	
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
<script type="text/javascript"
	src="${basepath}/resources/scripts/md5.js"></script>


<script type="text/javascript">

	$(function() {

		$("#phone").blur(function() {
			var phone = $("#phone").val();
			var pwd = $("#password").val();
			if (phone == "" || phone.length < 11||phone.length >11) {
				$("#error").text("请输入11位的电话号码！");	

			} else if (pwd == "") {
				$("#error").text("请输入密码");
			} else {
				$("#error").text("请进行下一步");
			}
		});


		$("#password").blur(function() {
			var phone = $("#phone").val();
			var pwd = $("#password").val();
			if (phone == "") {
				$("#error").text("请输入用户名");
			} else if (pwd == "") {
				$("#error").text("请输入密码");
			} else {
				$("#error").text("请进行下一步");
			}
		});
	});

	var flag = true;
	function check() {
		if (flag) {
			return true;
		} else {
			return false;
		}
	}

	function userSubmit() {
		var phone = $("#phone").val();
		var pwd = $("#password").val();
		if (phone.length == 11 && pwd != null) {
			var password = $("#password");
			var hash = hex_md5(password.val());
			password.val(hash);
			return true;
		}
		return false;
	}
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
					<h3 class="main-title">请输入用户信息</h3>
				</div>
				<div class="glb-main-bd">
					<div class="glb-main-content">
						<p class="glb-tips glb-tips-success">
							<span class="iconfont icon-info"></span>请用户填写用户名和密码用来查询用户的银行卡
						</p>
						<div class="glb-col-p60 glb-center">
							<form class="form-body"
								action="${basepath}/LCustomer/CustomerCar/selectUser"  method="post"
								onsubmit="userSubmit()" id="form">
								<br /> <br /> <br />
								<div class="form-item">
									<h5 class="form-label">手机号:</h5>
									<div class="form-entity">
										<div class="form-field">
											<input class="form-ipt" type="text" id="phone" name="phone"
												value="" placeholder="请输入手机号" />
										</div>
									</div>
								</div>
								<div class="form-item">
									<h5 class="form-label">登录密码:</h5>
									<div class="form-entity">
										<div class="form-field form-ipt-group">
											<input class="form-ipt" id="password" type="password"
												id="password" name="password" value="" placeholder="请输入登录密码" />
											<a class="ipt-addon ipt-icon iconfont icon-password"
												href="javascript:;"></a>
										</div>
									</div>
								</div>
								<div class="form-item">
									<div class="form-entity">
										<div class="form-field form-ipt-group">
											<c:if test="${empty sessionScope.errorU}">
												<div class="login-error">
													<p id="error" align="center">请输入手机号码</p>
												</div>
											</c:if>
											<c:if test="${!empty sessionScope.user.errorU}">
												<div class="login-error">
													<p id="error" align="center">用户名或密码错误</p>
												</div>
											</c:if>
										</div>
									</div>
								</div>
								<div class="form-action">
									<input type="submit" class="glb-button glb-btn-primary"
										value="下一步" />

								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="templates/footer.jsp"%>
</body>
</html>
