<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 
	客服主界面：创建者：苏杰
			 创建时间：2017年5月4日
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客服主页</title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath}/resources/imgs/logo.png" />
</head>

<body>
	<%@include file="templates/header.jsp"%>
	<div class="glb-page">
		<div class="glb-layout">
			<%--   <%@include file="templates/lefter.jsp" %> --%>


			<div class="glb-menu">
				<ul class="glb-menu-items">
					<li class="menu-current"><a href="#"> <span
							class="menu-ico iconfont icon-members"></span> <span
							class="menu-txt">客服守则</span>
					</a></li>
					<li><a href="${basepath }/LCustomer/CService/list"> <span
							class="menu-ico iconfont icon-advert"></span> <span
							class="menu-txt">银行卡管理</span>
					</a></li>
					<li><a
						href="${basepath }/LCustomer/customer/customerAnnouncement?pageNow=1">
							<span class="menu-ico iconfont icon-3line-y"></span> <span
							class="menu-txt">通知管理</span>
					</a></li>
					<li><a
						href="${basepath }/LCustomer/CService/UserConsultation?pageNow=1">
							<span class="menu-ico iconfont icon-coin"></span> <span
							class="menu-txt">用户咨询</span>
							<div class="notice">${sessionScope.notReplaySize }</div>
					</a></li>
					<li><a href="${basepath}/LCustomer/UrlToView/customerModule">
							<span class="menu-ico iconfont icon-cmcc"></span> <span
							class="menu-txt">用户服务</span> <span class="badge badge--warning"></span>
					</a></li>
				</ul>
			</div>

			<div class="glb-main">
				<div class="glb-main-hd">
					<h3 class="main-title">客服守则</h3>
				</div>
				
				<div>
				<h1 align="center">客服守则</h3>
				<h4>第一条　坚持原则，坚定信念。在政治上同党中央保持一致，在工作上坚定正确的金融服务方向。</h4>
				<h4>第二条　执行政策，依章办事。自觉执行国家金融政策，严守金融纪律，维护金融秩序，规范操作，维护建设银行荣誉。</h4>
				<h4>第三条　努力学习，积极进取。要增强竞争意识，不断学习，更新观念，更新知识，提高管理水平。</h4>
				<h4>第四条　精神饱满，着装整洁，以良好的精神面貌，向社会展示良好的企业形象。</h4>
				<h4>第五条　文明服务，礼貌待人。自觉使用文明用语，对客户和蔼可亲，服务耐心细致，展示良好的行风行貌。</h4>
				<h4>第六条　爱行爱岗，敬业尽责。以主人翁态度对待工作，认真办事，忠于职守，为建设银行的业务发展勇于奉献。</h4>
				</div>
				
				
				
				
			</div>
		</div>
	</div>
	<%@include file="templates/footer.jsp"%>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/global.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/validate.js"></script>
	<style>
.notice {
	width: 20px;
	height: 20px;
	line-height: 20px;
	font-size: 10px;
	color: #fff;
	text-align: center;
	background-color: #f00;
	border-radius: 50%;
	position: absolute;
	right: 77%;
	top: 45%;
}
</style>
</body>
</html>
