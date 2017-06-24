

<!-- 

	用户注册第一步
 -->


<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML >
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/admin/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/validate.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/scripts/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/scripts/md5.js" charset="utf-8"></script>

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
	<div class="glb-page glb-wrapper">
		<div class="glb-layout">
			<ul class="glb-steps glb-stepbar glb-steps-col4">
				<li class="step-current">
					<p class="step-text">1. 注册账号</p>
				</li>
				<li>
					<p class="step-text">2. 填写信息</p>
				</li>
				<li>
					<p class="step-text">3. 等待审核</p>
				</li>
				<li>
					<p class="step-text">4. 注册成功</p>
				</li>
			</ul>
			<div class="glb-col-p60 glb-center">
				<form class="form-body" action="${basepath}/LUser/User/registe_a"
					method="post" onsubmit="return userSubmit()" id="form">
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
					<!--  <div class="form-item">
                            <h5 class="form-label">验证码:</h5>
                            <div class="form-entity">
                                <div class="form-field form-case-code">
                                    <input class="form-inline form-ipt" type="text" name="userName" value="" placeholder="请输入短信验证码" />
                                    <a class="form-inline glb-button glb-btn-primary glb-btn-disabled" href="javascript:;">发送验证码</a>
                                </div>
                            </div>
                        </div> -->


					<div class="form-item">

						<div class="form-entity">
							<div class="form-field form-ipt-group">
								<c:if test="${empty sessionScope.error}">
									<div class="login-error">
										<p id="error" align="center">请输入手机号码</p>
									</div>
								</c:if>
								<c:if test="${!empty sessionScope.error}">
									<div class="login-error">
										<span align="center" class="iconfont icon-wrong"></span>
										<p id="error" align="center">用户名已经注册</p>
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
						2222233444号</a>
				</p>
			</div>
			<div class="glb-right glb-tac">
				<img class="weixin-code"
					src="${basepath}/resources/admin/images/weixin.jpg" alt="" />
				<p class="weixin-text">扫码关注公众号</p>
			</div>
		</div>
	</div>
	<script type="text/javascript">

	$(function() {
		flag = true;
		$("#phone").blur(function() {
			var phone = $("#phone").val();
			var pwd = $("#password").val();
			var mobile = /^1(3|4|5|7|8)\d{9}$/;
			if (phone == "" || phone.length < 11 || phone.length > 11) {
				$("#error").text("请输入11位的电话号码！");

			} else if (!mobile.test(phone)) {
				$("#error").text("手机号码格式有误");

			} else {
				/* 验证用户名是否已存在 */

				$.ajax({
					type : "post",
					url : "/ibank/LUser/User/getUserByPhone",
					async : false,
					cache : false,
					data : {
						user_phone : phone
					},
					success : function(data) {

						if (data == "false") {
							$("#error").text("手机号已被注册");
							flag = false;
						} else {
							$("#error").text("请注册");
						}
					}
				});
				return flag;

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
				$("#error").text("请注册");
			}
		});
		
	});
		function userSubmit() {
			var phone = $("#phone").val();
			var pwd = $("#password");
			var mobile = /^1(3|4|5|7|8)\d{9}$/;
			if (phone.length == 11 && pwd.val() != "" && mobile.test(phone)&&flag) {
				pwd.val(hex_md5(pwd.val()));
				return true;
			}
			return false;
		}

</script>
</body>



</html>