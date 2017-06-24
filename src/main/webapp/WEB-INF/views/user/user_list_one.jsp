<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>查询一个用户</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
	<h3>用户信息</h3>
	<table class="table table-bordered">
		<tr>
			<td>ID</td>
			<td>name</td>
			<td>age</td>
			<td>gender</td>
			<td>address</td>
			<td>phone</td>
			<td>birthplace</td>
			<td>birthday</td>
			<td>password</td>
			<td>photo</td>
			<td>nickname</td>
			<td>查看</td>
		</tr>
		<tr>
			<td>${requestScope.user.id }</td>
			<td>${requestScope.user.name }</td>
			<td>${requestScope.user.gender }</td>
			<td>${requestScope.user.address }</td>
			<td>${requestScope.user.phone }</td>
			<td>${requestScope.user.birthpalce }</td>
			<td>${requestScope.user.birthday }</td>
			<td>${requestScope.user.password }</td>
			<td>${requestScope.user.photo }</td>
			<td>${requestScope.user.nickname }</td>
			<td><a href="">删除</a> <a href="">更新</a></td>
		</tr>
	</table>
</body>
</html>
