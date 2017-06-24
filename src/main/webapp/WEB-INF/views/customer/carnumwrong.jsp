<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 
	用户还款失败界面：创建者：魏航
			 创建时间：2017年5月31日
 -->
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="refresh" content="5;url=${basepath}/LCustomer/CustomerAndUser/toShowRecords" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客服填入卡号类型错误</title>
</head>
<body>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/css/biz/reg.css">
<script type="text/javascript"
	src="${basepath}/resources/user/css/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/css/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/css/js/util.js"></script>
<meta charset="utf-8" />
<title></title>
<!-- 导入css库模板 -->
<%@include file="templates/base_css.jsp"%>
</head>

<body>
	<div id="frameBody" class="frame-body">
		<div class="frame-wrapper">
			<div id="top"></div>
			<div id="header"></div>
			<div id="page">
				<div class="glb-alert-box glb-alert-succ">
					<p class="iconfont icon-glb-right"></p>
					<div class="glb-alert-msg">
						<p class="hd">
						<c:if test="${requestScope.msg==1 }">
							<em>您输入了非信用卡号 ，请重新输入正确的信用卡号。</em> <br>
							<em>稍等几秒系统将自动将返回上个页面</em> 
							</c:if>
							<c:if test="${requestScope.msg==2 }">
							<em>您输入卡号不存在，请重新输入正确的信用卡号。</em> <br>
							<em>稍等几秒系统将自动将返回上个页面</em> 
							</c:if>
						</p>
					</div>
				</div>
				<div id="bottom" class="bottom"></div>
			</div>
		</div>
	</div>

</body>
<!-- 导入js库模板 -->
</html>