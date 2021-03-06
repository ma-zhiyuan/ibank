
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML >
<html>
<head>
<meta charset="UTF-8">
<title>用户登录成功</title>
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


</head>

<body>

	<div id="top" class="glb-topbar">
		<div class="glb-layout">
			<ul class="glb-left">
				<li><a href="#" target="_blank"><span
						class="item-ico iconfont icon-home"></span>主页</a></li>
				<li><a href="#" target="_blank"><span
						class="item-ico iconfont icon-mblog"></span>官方微博</a></li>
			</ul>
			<ul class="glb-right">
				<li>你好, 张三丰</li>
				<li><a href="#">退出</a></li>
				<li><a href="#">我的蓝桥</a></li>
				<li class="item-stripe"><a href="#">帮助中心</a></li>
				<li class="item-stripe"><a href="#">意见反馈</a></li>
				<li class="item-stripe"><a href="${basepath}/views/user/apply_credit_card.jsp">申请信用卡</a></li>
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
	<div class="glb-page glb-wrapper" style="width:993px;margin:0 auto;">
			<img src="${basepath}/views/user/images/success.jpg" alt="LOGO" width="200" height="200" />
			<span style="font-size: 80px">恭喜您，操作成功！</span><br>
			<a href="${basepath}/index.jsp" style="font-size:50px;">点击返回首页</a>
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
</body>



</html>