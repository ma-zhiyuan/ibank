<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>查询利率</title>
<%@include file="templates/base_css.jsp"%>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css" href="css/global.css">
<link rel="stylesheet" type="text/css" href="css/form.css">
<link rel="stylesheet" type="text/css" href="css/dialog.css">
<link rel="stylesheet" type="text/css" href="css/biz/uc.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/util.js"></script>
<script type="text/javascript" src="js/animation.js"></script>
<script type="text/javascript" src="js/dialog.js"></script>
</head>

<body>
	<%@include file="templates/header.jsp"%>
	<div id="frameBody" class="frame-body">
		<%@include file="templates/left_navigation.jsp"%>

		<div class="frame-wrapper">
			<div class="frame-page">
				<div class="frame-main">
					<div class="frame-main-bd">
						<h1 class="frame-title">贷款利率</h1> <br> <br>
						<ul class="glb-tabs"></ul>
						 <br> <br>
						<table class="glb-tables">
							<tr>
								<td class="tbs-col-cb"><input type="checkbox" name=""
									value="" /></td>
								<td width="200px">id</td>
								<td width="200px">利率</td>
								<td width="200px">实行时间</td>
								<td width="200px">操作</td>
							</tr>
							<c:forEach items="${rates}" var="rate">
								<tr>
									<td class="tbs-col-cb"><input type="checkbox" name=""
										value="" /></td>
									<td>${rate.id }</td>
									<td>${rate.rate }</td>
									<td>${rate.time }</td>
									<td><a href="${basepath}/LAdmin/rate/updateRateByRateId">修改</a>
									</td>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
