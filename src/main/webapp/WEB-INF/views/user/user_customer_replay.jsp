<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<!--  -->
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>客服回复用户</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/global.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/list.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/laydate.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/biz/trade.css" />
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath }/resources/user/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/list.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/laydate.js"></script>
</head>

<body>
	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<div id="logo">
				<a href="uc.html"> <img
					src="${basepath }/resources/user/images/logo.png" alt="蓝桥" />
				</a>
			</div>
		</div>
	</div>
	<div id="page">
		<div class="main layout">
			<div class="glb-list-box">
				<div class="glb-list-bd">
					<div class="list-cond-box">
							<div class="uc-trade-hd">
								<ul class="col-opts col-opts-main">
									<li><a
										href="${basepath}/LUser/User_Consultation/toUserConsultationList">返回上一页</a></li>
								</ul>
							</div>
					</div>
					<table class="list-main-tbs trade-list-tbs">
						<thead>
							<tr>
								<th class="tac">序号</th>
								<th class="tac">客服名字</th>
								<th class="tac">回复内容</th>
								<th class="tac">回复时间</th>
								<th class="tac">操作</th>
							</tr>
						</thead>
						<tbody id="json-list">
							<c:forEach items="${requestScope.scrb }" var="s">
								<tr>
									<td>${s.id}</td>
									<td>${s.customerService.name}</td>
									<td>${s.content}</td>
									<td>${s.replaytime}</td>
									<td width="200px"><a href="${basepath}/LUser/User_Consultation/toConsultation?id=${s.id}">咨询</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div id="bottom" class="bottom"></div>
		</div>
</body>

</html>