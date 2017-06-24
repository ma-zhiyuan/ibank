

<!-- 
	用户注册第二步

 -->

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.HashMap"%>

<!DOCTYPE HTML >
<html>
<head>

<title>注册详细信息</title>
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
<script type="text/javascript">

	$(function() {

		$("#name").blur(function() {
			var name = $("#name").val();

			if (name == "") {
				$("#naerror").text("姓名不能为空");
			}
		});

		$("#birthday").blur(function() {
			var name = $("#birthday").val();
			if (name == "") {
				$("#bn").text("出生年月不能为空");
			}
		});

		$("#email").blur(function() {

			if ($("#email").val() == "") {
				$("#ee").text("邮箱不能为空");
				return false;
			}
			var email = $("#email").val();
			if (!email.match(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/)) {
				$("#ee").text("格式不正确！请重新输入");
				return false;
			}
		});

	});
</script>
</head>

<body>
	<div id="top" class="glb-topbar">
		<div class="glb-layout">
			<ul class="glb-left">
				<li><a href="http://www.lanqiao.org" target="_blank"><span
						class="item-ico iconfont icon-home"></span>蓝桥主页</a></li>
				<li>
			</ul>
			<ul class="glb-right">
				<li><a href="${basepath}/user_login.jsp">登录</a></li>
				<li class="item-stripe"><a href="${basepath}/views/user/user_help.jsp">帮助中心</a></li>
			</ul>
		</div>
	</div>
	<div id="header" class="glb-header">
		<div class="glb-layout">
			<div id="logo" class="glb-logo">
				<a href="#"> <img
					src="${basepath}/resources/admin/images/logo_w.png" alt="LOGO" />
				</a>
			</div>
		</div>
	</div>

	<!---->
	<div class="glb-page glb-wrapper">
		<div class="glb-layout">
			<ul class="glb-steps glb-stepbar glb-steps-col4">
				<li>
					<p class="step-text">1. 注册账号</p>
				</li>
				<li class="step-current">
					<p class="step-text">2. 填写信息</p>
				</li>
				<li>
					<p class="step-text">3. 等待审核</p>
				</li>
				<li>
					<p class="step-text">4. 注册成功</p>
				</li>
			</ul>

			<div class="glb-col-p70 glb-center">

				<c:if test="${!empty map}">
					
						<h2 style="color:red;">你有提交的数据有以下错误请重新填写信息再提交：</h2>
						<c:forEach items="${map}" var="node">
							<p class="form-label" style="color:red;">${node.value}</p><br>
						</c:forEach>
					
					
					<br>
				</c:if>
				<br>

				<form class="form-body glb-group"
					action="${basepath}/LUser/User/registe_b" id="form" method="post"
					enctype="multipart/form-data">

					<div class="glb-group-item">
						<div class="glb-group-hd">
							<h4 class="group-title">用户信息</h4>
							<h6 class="group-tip">请输入用户的详细信息</h6>
						</div>
						<div class="glb-group-bd">

							<div class="form-item">
								<h5 class="form-label">姓名:</h5>
								<div class="form-entity">
									<div class="form-field">
										<input class="form-ipt" type="text" name="name" id="name" value="${sessionScope.user.name}"  
											placeholder="请输入用户名称" />
										<p name="nerror" id="nerror" value=""></p>

									</div>
								</div>
							</div>
							<div class="form-item">
								<h5 class="form-label">出生日期/曾用名:</h5>
								<div class="form-entity">
									<div class="form-field">
										<input class="form-inline form-ipt glb-col-w80" type="date"
											name="birthday" value="${sessionScope.user.birthday}"
											placeholder="请输入你的出身日期：格式为（yyyy-mm-dd）"> <input
											class="form-inline form-ipt glb-col-w150" type="text"
											name="nickname" value="${sessionScope.user.nickname}" placeholder="请输入曾用名">
										<p name="bn" id="bn" value=""></p>
									</div>
								</div>
							</div>
							<div class="form-item">
								<h5 class="form-label">年龄/性别:</h5>
								<div class="form-entity">
									<div class="form-field">
										<input class="form-inline form-ipt glb-col-w80" type="number"
											name="age" value="${sessionScope.user.age}" placeholder="请输入年龄"> <select
											class="form-inline form-sel" name="gender" value="${sessionScope.user.gender}">
											<option value="0">男</option>
											<option value="1">女</option>
										</select>

									</div>
								</div>
							</div>

							<div class="form-item">
								<h5 class="form-label">出生地:</h5>
								<div class="form-entity">
									<div class="form-field">
										<input class="form-ipt" type="text" name="birthplace" value="${sessionScope.user.birthplace}"
											placeholder="详细地址" />
									</div>
								</div>
							</div>

							<div class="form-item">
								<h5 class="form-label">家庭住址:</h5>
								<div class="form-entity">
									<div class="form-field">
										<input class="form-ipt" type="text" name="address" value="${sessionScope.user.address}"
											placeholder="详细地址" />
									</div>
								</div>
							</div>

							<div class="form-item">
								<h5 class="form-label">邮箱:</h5>
								<div class="form-entity">
									<div class="form-field">
										<input class="form-ipt" type="text" name="email" value="${sessionScope.user.email}"
											id="email" placeholder="请输入邮箱" />
										<h5 class="form-label" name="ee" id="ee" value=""></h5>
										<br>
									</div>
								</div>
							</div>

							<div class="form-item">
								<h5 class="form-label">请上传你的头像</h5>
								<div class="form-entity">
									<div class="form-field">
										<div class="form-inline">
											<input type="file" name="file" value="点击上传头像" class="form-line-sub glb-button glb-btn-default" />
										</div>

									</div>
								</div>

								<div class="form-caption">
									<h6>1. 内容简介本书分为上学期和下学期两部分</h6>
									<h6>
										2. 主要内容包括：<span class="form-text-em">写校</span>园一处景物；
									</h6>
									<h6>3. 是2012年西安出版社出版的一本图书</h6>
								</div>

							</div>

							<div class="form-action">
								<input type="submit" class="glb-button glb-btn-primary"
									value="下一步" />

							</div>

						</div>
					</div>
				</form>

			</div>
		</div>
	</div>
	<div class="glb-bottom">
		<div class="glb-layout">
			<div class="glb-left">
				<ul>
					<li><a href="#" target="_blank">关于我们</a></li>
					<li><a href="#" target="_blank">安全保障</a></li>
					<li><a href="#" target="_blank">诚聘英才</a></li>
					<li><a href="#" target="_blank">商户合作</a></li>
					<li><a href="#" target="_blank">新手指南</a></li>
					<li><a href="#" target="_blank">在线客服</a></li>
					<li><a href="#" target="_blank">帮助中心</a></li>
					<li><a href="#" target="_blank">站点地图</a></li>
					<li class="last"><a href="#" target="_blank">联系我们</a></li>
				</ul>
				<p>蓝桥软件学院教研部</p>
				<p>国信世纪人才服务（北京）有限公司</p>
				<p>
					Copyright Reserved 2016©蓝桥 <a class="beian"
						href="http://www.miibeian.gov.cn" target="_blank">吉ICP备
						2222233444号 </a>
				</p>
			</div>
			<div class="glb-right glb-tac">
				<img class="weixin-code"
					src="${basepath}/resources/admin/images/weixin.jpg" alt="" />
				<p class="weixin-text">扫码关注公众号</p>
			</div>
		</div>
	</div>
</body>

</html>