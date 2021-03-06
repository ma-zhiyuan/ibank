<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

<head>


<title>管理信息-修改信息</title>
<%@include file="templates/base_css.jsp"%>

<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/form.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/biz/uc.css" />
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/admin/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/util.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/group.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#form").click(function() {
			//验证姓名不能为空
			$("#name").blur(function() {
				var f = document.form;
				var name = f.name.value;
				if (name == "") {
					document.getElementById("error1").innerHTML = "姓名不能为空";
					f.name.focus();
					return false;
				} else {
					document.getElementById("error1").innerHTML = "";
				}
			});
			//验证手机号
			$("#phone").blur(function() {
				var f = document.form;
				var phone = f.phone.value;
				var re = /^1\d{10}$/;
				if (!re.test(phone)) {
					document.getElementById("error2").innerHTML = "电话格式不正确";
					f.phone.focus();
					return false;
				} else {
					document.getElementById("error2").innerHTML = "";
				}
			});
			//验证邮箱
			$("#email").blur(function() {
				var f = document.form;
				var email = f.email.value;
				var ref = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
				if (!ref.test(email)) {
					document.getElementById("error3").innerHTML = "邮箱格式不正确";
					f.email.focus();
					return false;
				} else {
					document.getElementById("error3").innerHTML = "";
				}
			});
		});
	});
</script>
<meta http-equiv="Content-Type"
	content="multipart/form-data; charset=utf-8" />
</head>

<body>
	<!-- 导入公用模板 -->
	<%@include file="templates/header.jsp"%>
	<div id="frameBody" class="frame-body">
		<!-- 导入左侧导航 -->
		<%@include file="templates/left_navigation.jsp"%>
		<div class="frame-wrapper">
			<div class="frame-msub" id="frameMsub">

				<div class="frame-msub-hd">
					<h4 class="msub-title">
						<span class="iconfont icon-setting"></span>管理员信息
					</h4>
				</div>
				<div class="frame-msub-bd">
					<ul class="frame-msub-items">
						<li class="msub-current"><a href="${basepath}/LAdmin/Admin/showAdmin?id=${sessionScope.admin.id }"><span
								class="iconfont icon-parameter"></span>个人信息</a></li>
						<li><a href="${basepath}/LAdmin/Admin/toUpdatePassword"><span
								class="iconfont icon-liuliang">&nbsp;修改密码</span></a></li>
					</ul>
				</div>
			</div>
			<div class="frame-page">
				<div class="frame-main">
					<div class="frame-main-bd">
						<h1 class="frame-title">修改信息</h1>
						<ul class="glb-tabs"></ul>
						<div class="main-bd">
							<div class="content-bd">
								<br> <br> <br> <br>
								<form class="form-inline" action="${basepath}/LAdmin/Admin/updateAdmin"
									id="form" method="post" enctype="multipart/form-data"
									name="form" >

									<div style="padding-left: 100px;">
									<input class="form-control" type="hidden" name="id"
										value="${sessionScope.admin.id }" placeholder="请输入id" />

									<div class="form-item">
										<h5>
											姓名:<input class="form-control" type="text" name="name" id="name"
												value="${sessionScope.admin.name }" placeholder="请输入姓名" />
											<span id="error1"></span>
										</h5>
									</div>
									<div class="form-item">
										<h5>
											电话:<input class="form-control" type="text" name="phone" maxlength="11"
												id="phone" value="${sessionScope.admin.phone }"
												placeholder="请输入电话" /> <span id="error2"></span>
										</h5>
									</div>
									<div class="form-item">
										<h5>
											邮箱:<input class="form-control" type="text" name="email" id="email"
												value="${sessionScope.admin.email }" placeholder="请输入邮箱" />
											<span id="error3"></span>
										</h5>
									</div>
									<br>
									<div>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<button type="sumbit" class="btn btn-primary">&nbsp;&nbsp;更新&nbsp;&nbsp;</button>
									</div>
									
									
									</div>
								</form>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<!-- 导入js库模板 -->
<%@include file="templates/base_js.jsp"%>
</html>