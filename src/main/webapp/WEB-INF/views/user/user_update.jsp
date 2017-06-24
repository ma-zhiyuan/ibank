<%@page import="org.lanqiao.bank.base.util.DateFormatUtil"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>蓝桥银行 - 账户设置</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/biz/uc.css">
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/user/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/group.js"></script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
	function check() {
		var file = $(":input[name=file]").val();
		var name = $(":input[name=name]").val();
		var age = $(":input[name=age]").val();
		var address = $(":input[name=address]").val();
		var phone = $(":input[name=phone]").val();
		var nickname = $(":input[name=nickname]").val();
		var email = $(":input[name=email]").val();
		var filter = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		var error1 = $("#error1");
		var error2 = $("#error2");
		var error3 = $("#error3");
		var error4 = $("#error4");
		var error5 = $("#error5");
		var error6 = $("#error6");
		var error7 = $("#error7");
		if (file.length == "") {
			error1.text("头像不能为空！");
		} else if (name.length == "") {
			error1.text("");
			error2.text("用户名不能为空！");
		} else if (age == 0) {
			error1.text("");
			error2.text("");
			error3.text("年龄不能为空！");
		} else if (address.length == "") {
			error1.text("");
			error2.text("");
			error3.text("");
			error4.text("地址不能为空！");
		} else if (phone.length == "") {
			error1.text("");
			error2.text("");
			error3.text("");
			error4.text("");
			error5.text("电话不能为空！");
		} else if (phone.length != 11) {
			error1.text("");
			error2.text("");
			error3.text("");
			error4.text("");
			error5.text("电话格式不正确！");
		} else if (nickname == "") {
			error1.text("");
			error2.text("");
			error3.text("");
			error4.text("");
			error5.text("");
			error6.text("别名不能为空！");
		} else if (email == "") {
			error1.text("");
			error2.text("");
			error3.text("");
			error4.text("");
			error5.text("");
			error6.text("");
			error7.text("邮箱不能为空！");
		} else if (!filter.test(email)) {
			error1.text("");
			error2.text("");
			error3.text("");
			error4.text("");
			error5.text("");
			error6.text("");
			error7.text("邮箱格式不正确！");
		} else {
			error7.text("");
			$("#form").submit();
		}
	}
</script>
</head>
<body>
	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<div id="logo">
				<a href="uc.html"> <img
					src="${basepath}/resources/user/images/logo.png" alt="蓝桥" />
				</a>
			</div>
			<div id="nav" class="glb-nav">
				<ul class="clearfix">
					<li class="glb-nav-uc"><a href="uc.html"> <span></span>
					</a></li>
					<li class="glb-nav-trade"><a href="trade_list.html"> <span></span>
					</a></li>
					<li class="glb-nav-setting current"><a href="my_info.html">
							<span></span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="page">
		<div class="main layout">
			<div class="col-menu">
				<ul class="menu-items">
					<li class="current"><a class="menu-txt iconfont icon-menu-um"
						href="my_info.html">用户资料</a></li>
					<li><a class="menu-txt iconfont icon-menu-pm"
						href="${basepath}/LUser/UrlToView/updateUserPassword">密码管理</a></li>
					<li><a class="menu-txt iconfont icon-menu-pm"
						href="my_bank_list.html">银行管理</a></li>
					<li class="last"><a class="menu-txt iconfont icon-menu-pm"
						href="${basepath}/views/user/user_all_bank_card.jsp">我的银行卡</a></li>
				</ul>
			</div>
			<div class="col-main">
				<div class="main-hd">
					<h3 class="iconfont icon-menu-bm">编辑用户信息</h3>
				</div>
				<div style="">
					<form
						action="${basepath}/LUser/User/${sessionScope.user.id }/update"
						method="post" name="form" id="form" enctype="multipart/form-data">
						<div class="form-item">
							<h4 class="form-label"></h4>
							<div class="form-entity">
								<div class="form-field">
									<p class="form-text"></p>
								</div>
							</div>
						</div>
						<div class="form-item">
							<h4 class="form-label">用户头像:</h4>
							<div class="form-entity">
								<p class="form-text">
									<label for="inputfile">请选择头像</label> <input class="form-ipt"
										type="file" name="file" id="file"
										value="${sessionScope.user.photo }" /> <span id="error1"
										style="color: #F83232"></span>
								</p>
							</div>
						</div>
						<div class="form-item">
							<h4 class="form-label">用户姓名:</h4>
							<div class="form-entity">
								<p class="form-text">
									<input class="form-ipt" type="text" name="name" id="name"
										value="${sessionScope.user.name }" /> <span id="error2"
										style="color: #F83232"></span>
								</p>
							</div>
						</div>
						<div class="form-item">
							<h4 class="form-label">用户年龄:</h4>
							<div class="form-entity">
								<div class="form-field">
									<p class="form-text">
										<input class="form-ipt" type="number" name="age" id="age"
											value="${sessionScope.user.age+0}" /> <span id="error3"
											style="color: #F83232"></span>
									</p>
								</div>
							</div>
						</div>
						<div class="form-item">
							<h4 class="form-label">用户地址:</h4>
							<div class="form-entity">
								<div class="form-field">
									<p class="form-text">
										<input class="form-ipt" type="text" name="address"
											id="address" value="${sessionScope.user.address }" /> <span
											id="error4" style="color: #F83232"></span>
									</p>
								</div>
							</div>
						</div>
						<div class="form-item">
							<h4 class="form-label">用户电话:</h4>
							<div class="form-entity">
								<div class="form-field">
									<p class="form-text">
										<input class="form-ipt" type="number" name="phone" id="phone"
											value="${sessionScope.user.phone }" /> <span id="error5"
											style="color: #F83232"></span>
									</p>
								</div>
							</div>
						</div>
						<div class="form-item">
							<h4 class="form-label">用户别名:</h4>
							<div class="form-entity">
								<div class="form-field">
									<p class="form-text">
										<input class="form-ipt" type="text" name="nickname"
											id="nickname" value="${sessionScope.user.nickname }" /> <span
											id="error6" style="color: #F83232"></span>
									</p>
								</div>
							</div>
						</div>
						<div class="form-item">
							<h4 class="form-label">用户邮箱:</h4>
							<div class="form-entity">
								<div class="form-field">
									<p class="form-text">
										<input class="form-ipt" type="email" name="email" id="email"
											value="${sessionScope.user.email }" /> <span id="error7"
											style="color: #F83232"></span>
									</p>
								</div>
							</div>
						</div>


						<div class="form-item">
							<h4 class="form-label"></h4>
							<div class="form-entity">
								<div class="form-field">
									<p class="form-text">
										<input class="form-ipt" type="hidden" name="password"
											id="password" value="${sessionScope.user.password }" /> <span
											id="error8" style="color: #F83232"></span>
									</p>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label"></h4>
								<div class="form-entity">
									<div class="form-field">
										<p class="form-text">
											<input class="form-ipt" type="hidden" name="birthplace"
												id="birthplace" value="${sessionScope.user.birthplace }">
										</p>
									</div>
								</div>
								<%-- <div class="form-item">
							<h4 class="form-label"></h4> 
							<div class="form-entity">
								<div class="form-field">
									<p class="form-text">
										<input class="form-ipt" type="hidden" name="birthday" id="birthday" value="${sessionScope.user.birthday }">
									</p>
								</div>
							</div>    --%>
								<div class="form-item">
									<h4 class="form-label"></h4>
									<div class="form-entity">
										<div class="form-field">
											<p class="form-text">
												<input class="form-ipt" type="hidden" name="gender"
													id="gender" value="${sessionScope.user.gender }">
											</p>
										</div>
									</div>
									<%-- <div class="form-item">
							<h4 class="form-label">注册时间</h4>
							<div class="form-entity">
								<div class="form-field">
									<p class="form-text">
										<input class="form-ipt"  type="text" name="registerDate" id="registerDate" value="${sessionScope.user.registerDate }">
									</p>
								</div>
							</div>   --%>
									<div class="form-item">
										<div class="form-entity">
											<div class="col-sm-offset-col0-sm-3">
												<div class="form-action">
													<a class="center-block btn btn-info"
														href="javascript:check();">提交</a>
												</div>
											</div>
										</div>
									</div>
								</div>
					</form>
					<div id="bottom" class="bottom"></div>
				</div>
</body>
</html>
