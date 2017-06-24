

<!--

	用户注册第四步，完成注册
  -->

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

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
	$(function() {});
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
	<div class="glb-page glb-wrapper">
		<div class="glb-layout">
			<ul class="glb-steps glb-stepbar glb-steps-col4">

				<li>
					<p class="step-text">1. 注册账号</p>
				</li>
				<li>
					<p class="step-text">2. 填写信息</p>
				</li>
				<li>
					<p class="step-text">3. 等待审核</p>
				</li>
				<li  class="step-current">
					<p class="step-text">4. 注册成功</p>
				</li>
			</ul>

			<div class="glb-col-p60 glb-center"></div>
		</div>
	</div>

	<div class="glb-result glb-result-success">
		<p class="glb-result-ico iconfont icon-correct"></p>
		<dl class="glb-result-msg">
			<dt>您已成功注册</dt>
			
			<dd>
				请你进行登录或退出。<a href="${basepath}">去主页</a>
			</dd>
			<dd>
				温馨提示: <span class="glb-text-em">用户名和密码</span>是您登录系统的唯一凭证,请您牢记!
			</dd>
		</dl>
	</div>
<br><br><br><br><br><br><br><br><br>

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
</body>



</html>