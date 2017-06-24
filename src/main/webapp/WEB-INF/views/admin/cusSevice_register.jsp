<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>注册客服</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="${basepath}/resources/scripts/md5.js" charset="utf-8"></script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<script type="text/javascript"></script>

</head>

<body>
	 <%@include file="templates/header.jsp" %>
	<div class="glb-page glb-wrapper">
		<div class="glb-layout">
			<div class="glb-col-p80 glb-center">
				<ul class="glb-steps glb-stepbar glb-steps-col4"
					style="text-align:center;">
					<li class="step-current">
						<h1 class="main-title">管理员注册客服</h1>
					</li>
				</ul>
			</div>
			<div class="glb-col-p60 glb-center">
			
				<form class="form-body" action="${basepath}/LCustomer/CService/insertCustomerService"  method="post"
					id="form" enctype="multipart/form-data">
					<div class="form-item">
						<h5 class="form-label">姓名:</h5>
						<div class="form-entity">
							<div class="form-field">
								<input class="form-ipt" type="text" name="name" value=""
									placeholder="请输入姓名" />
							</div>
						</div>
					</div>

					<div class="form-item">
						<h5 class="form-label">年龄:</h5>
						<div class="form-entity">
							<div class="form-field">
								<input class="form-ipt" type="text" name="age" value=""
									placeholder="请输入年龄" />
							</div>
						</div>
					</div>

					<div class="form-item">
						<h5 class="form-label">性别:</h5>
						<div class="form-entity">
							<div class="form-field">
								男性： <input type="radio" checked="checked" name="gender"
									value="1" /><br /> 女性： <input type="radio" name="gender"
									value="0" />
							</div>
						</div>
					</div>

					<div class="form-item">
						<h5 class="form-label">电话:</h5>
						<div class="form-entity">
							<div class="form-field">
								<input class="form-ipt" type="text" id="phone" name="phone" value=""
									placeholder="请输入电话" />
							</div>
						</div>
					</div>

					<div class="form-item">
						<h5 class="form-label">邮箱:</h5>
						<div class="form-entity">
							<div class="form-field">
								<input class="form-ipt" type="text" id="email" name="email" value=""
									placeholder="邮箱" />
							</div>
						</div>
					</div>

					<div class="form-item">
						<h5 class="form-label">照片</h5>
						<div class="form-entity">
							<div class="form-field">
								<div class="form-inline">
									<input type="file" name="profile" >
								</div>
							</div>
						</div>
					</div>

					<div class="form-item">
						<h5 class="form-label">登录密码:</h5>
						<div class="form-entity">
							<div class="form-field form-ipt-group">
								<input class="form-ipt" type="password"
									name="password" value="" id="password" placeholder="请输入登录密码" /> <a
									id="togglePwdType"
									class="ipt-addon ipt-icon iconfont icon-password"
									href="javascript:;"></a>
							</div>
						</div>
					</div>

					<div class="form-item">
						<h5 class="form-label">确认密码:</h5>
						<div class="form-entity">
							<div class="form-field form-ipt-group">
								<input class="form-ipt" type="password"
									name="password2" value="" id="password2" placeholder="请输入确认密码" /> <a
									id="togglePwdType1"
									class="ipt-addon ipt-icon iconfont icon-password"
									href="javascript:;"></a>
							</div>
						</div>
					</div>

					<div class="form-action">
						<input type="submit" value="注册" class="glb-button glb-btn-primary" id="btn" form="form">
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
				<img class="weixin-code" src="${basepath}/resources/admin/images/weixin.jpg"
					alt="" />
				<p class="weixin-text">扫码关注公众号</p>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript" src="${basepath}/resources/admin/js/jquery.min.js"></script>
<script type="text/javascript" src="${basepath}/resources/admin/js/global.js"></script>
<script type="text/javascript" src="${basepath}/resources/admin/js/validate.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn").click(function(){
			var pwd = $("#password").val();
			var pwd2 = $("#password2").val();
			var email = $("#email").val(); 
			var phone = $("#phone").val(); 
			
			var  temp = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/ ;
			var mobile= /^1[34578]\d{9}$/;
			if(pwd!=pwd2){
				alert("两次密码不一致!");
				return false;
			}
			if(pwd.length < 8){
				alert("密码长度不能小于8");
				return false;
			} 
			
			var password = hex_md5(pwd);
			$("#password").val(password);
			
			if(!temp.test(email)){
				alert("请输入正确的电子邮箱。")
				return false;
			}
			if(!mobile.test(phone)){
				alert("请输入正确的手机号码。")
				return false;
			}
			
		});
	
	});
</script>

</html>