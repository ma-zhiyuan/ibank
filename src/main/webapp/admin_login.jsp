<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>管理员登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript"
	src="${basepath}/resources/admin/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/scripts/md5.js" charset="utf-8"></script>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<script type="text/javascript">
	$(function() {
		$("#phone").blur(function() {
			var phone = $("#phone").val();
			var pwd = $("#pwd").val();
			if (phone == "" || phone.length < 11) {
				$("#error").text("请输入11位的电话号码！");
			} else if (pwd == "" || pwd.length < 6) {
				$("#error").text("请输入6位以上的密码！");
			} else {
				$("#error").text(" ");
			}
		});


		$("#pwd").blur(function() {
			var phone = $("#phone").val();
			var pwd = $("#pwd").val();
			if (pwd == "" || pwd.length < 6) {
				$("#error").text("请输入6位以上的密码！");
				return false;
			} else if (phone == "" || phone.length < 11) {
				$("#error").text("请输入11位的电话号码！");
			} else {
				$("#error").text("   ");
			}
			var md5pwd = hex_md5(pwd);
			$("#pwd").val(md5pwd);

			return false;
		});

		$("#submit").click(function() {
			$("#myForm").submit();
		});



	});
</script>
</head>

<body class="glb-metro-body">
	<div id="header" class="glb-header">
		<div class="glb-layout">
			<div id="logo" class="glb-logo">
				<a href="#"> <img
					src="${basepath}/resources/admin/images/logo_s1.png" alt="LOGO" />
				</a>
			</div>
		</div>
	</div>



	<div class="glb-layout">
		<div class="form-body">
			<div class="form-head">
				<h1 class="form-head-title">管理员登录</h1>
			</div>
			<form action="${basepath}/LAdmin/Admin/login" id="myForm" method="post">
				<div class="glb-metro-item form-item">
					<h4 class="form-label">
						<span class="iconfont icon-account"></span>
					</h4>
					<div class="form-entity">
						<input class="form-ipt" type="text" id="phone" name="phone"
							value="" placeholder="请输入手机号" />
						<p align="center"><font id="error" color="red"></font></p>
					</div>
				</div>
				<div class="glb-metro-item form-item">
					<h4 class="form-label">
						<span class="iconfont icon-password"></span>
					</h4>
					<div class="form-entity">
						<input class="form-ipt" type="password" id="pwd" name="password"
							value="" placeholder="请输入密码" />
						<p align="center"><font id="error" color="red"></font></p>
					</div>
				</div>
				<div class="glb-metro-item">
					<div class="glb-metro-item">
						<!-- <input type="submit" class="form-inline glb-button metro-btn-main" value="提交"> -->
						<a id="submit" class="form-inline glb-button metro-btn-main">登
							录</a>
						<!-- <p id="error">
							<a href="uc.html" class="form-inline glb-button metro-btn-sub">忘记密码</a> -->
					</div>
				</div>
			</form>
			<c:if test="${!empty sessionScope.error2}">
				<div class="login-error">
					<p  align="center"><font id="error" color="red">手机号或密码不正确！</font></p>
				</div>
			</c:if>
		</div>
	</div>
	
	 <div class="glb-bottom">
            <div class="glb-layout">
                <div class="glb-left">
                    <ul>
                        <li>
                            <a href="#" target="_blank">关于我们</a>
                        </li>
                        <li>
                            <a href="#" target="_blank">安全保障</a>
                        </li>
                        <li>
                            <a href="#" target="_blank">诚聘英才</a>
                        </li>
                        <li>
                            <a href="#" target="_blank">商户合作</a>
                        </li>
                        <li>
                            <a href="#" target="_blank">新手指南</a>
                        </li>
                        <li>
                            <a href="#" target="_blank">在线客服</a>
                        </li>
                        <li>
                            <a href="#" target="_blank">帮助中心</a>
                        </li>
                        <li>
                            <a href="#" target="_blank">站点地图</a>
                        </li>
                        <li class="last">
                            <a href="#" target="_blank">联系我们</a>
                        </li>
                    </ul>
                    <p>蓝桥软件学院教研部</p>
                    <p>国信世纪人才服务（北京）有限公司</p>
                    <p>Copyright Reserved 2016©蓝桥
                        <a class="beian" href="http://www.miibeian.gov.cn" target="_blank">吉ICP备 2222233444号</a>
                    </p>
                </div>
                <div class="glb-right glb-tac">
                    <img class="weixin-code" src="${basepath}/resources/admin/images/weixin.jpg" alt="" />
                    <p class="weixin-text">扫码关注公众号</p>
                </div>
            </div>
        </div>
</body>
</html>
