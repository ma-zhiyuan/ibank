<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>管理信息-修改密码</title>
<%@include file="templates/base_css.jsp"%>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->



<meta name="keywords" content="" />
<meta name="description" content="" />

<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/biz/uc.css">
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/user/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/global.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/scripts/md5.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
	//给登陆密码前台加密
	$(function() {
		$("#password").blur(function() {
			//原登陆密码加密
			var id = $("#id").val();
			var password = $("#password").val();
			if (!password == "") {
				var md5pwd = hex_md5(password);
				$("#password").val(md5pwd);
				var url = "LAdmin/Admin/verPassword";
				var args = {
					"id" : id,
					"password" : md5pwd,
					"time" : new Date(),
				}
				$.post(url, args, function(data) {
					$("#hint").text(data);
				});
			}
		});

		//判断前后两次输入的密码是否一致
		$("#newPassword2").blur(function() {
			//给新密码加密
			var newpassword = $("#newpassword").val();
			var md5pwd1 = hex_md5(newpassword);
			$("#newpassword").val(md5pwd1);
			//给确认新密码加密
			var newpassword2 = $("#newPassword2").val();
			var md5pwd2 = hex_md5(newpassword2);
			$("#newPassword2").val(md5pwd2);

			var newPwd2 = $(this).val();
			if (newPwd2 !== ($("#newpassword").val())) {
				$("#pwdErrorMsg").text("两次输入密码不一致，请重新输入！");
				return false;
			} else {
				$("#pwdErrorMsg").text("");
				return true;
			}
		});
	});
</script>
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
						<li><a
							href="${basepath}/LAdmin/Admin/showAdmin?id=${sessionScope.admin.id }"><span
								class="iconfont icon-liuliang">&nbsp;个人信息</span></a>
						<li class="msub-current"><a
							href="${basepath}/LAdmin/Admin/toUpdatePassword"><span
								class="iconfont icon-parameter"></span>修改密码</a></li>
						</li>
					</ul>
				</div>
			</div>
			<div class="frame-page">
				<div class="frame-main">

					<div class="frame-main-bd">
						<h1 class="frame-title">修改密码</h1>
						<ul class="glb-tabs"></ul>
						<br> <br> <br>
						<form class="form-inline"
							action="${basepath }/LAdmin/Admin/updatePassword" method="post">
							<input type="hidden" id="id" name="id"
								value="${sessionScope.admin.id }">
							<div style="padding-left: 50px;">
								<div class="form-item">
									<h5>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;原密码: <input
											class="form-control" type="password" id="password"
											name="password" value="" placeholder="请输入密码" /> <label
											id="hint"></label>
									</h5>
								</div>
								<div class="form-item">
									<h5>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新密码: <input
											class="form-control" type="password" id="newpassword"
											name="newpassword" value="" placeholder="请输入确认密码" />
									</h5>
								</div>
								<div class="form-item">
									<h5>
										确认新密码: <input class="form-control" type="password"
											id="newPassword2" name="newpassword2" value=""
											placeholder="请输入确认密码" /><label id="pwdErrorMsg"></label>
									</h5>
								</div>
								<div class="form-item">
									<h5>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<button type="sumbit" class="btn btn-primary">&nbsp;&nbsp;更新&nbsp;&nbsp;</button>
									</h5>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<!-- 导入js库模板 -->
<%@include file="templates/base_js.jsp"%>
</html>
