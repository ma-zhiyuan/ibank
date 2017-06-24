<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    
    
    <title>用户列表</title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h2>所有用户信息</h2>
	<table class="table table-hover">
		<tr>
			<td>id</td>
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
			<td>操作</td>
		</tr>
		<c:forEach items="${requestScope.users }" var="u">
			<tr>
				<td>${u.id }</td>
				<td>${u.name }</td>
				<td>${u.age}</td>
				<td>${u.gender }</td>
				<td>${u.address }</td>
				<td>${u.phone }</td>
				<td>${u.birthplace }</td>
				<td>${u.birthday }</td>
				<td>${u.password }</td>
				<td>${u.photo }</td>
				<td>${u.nickname }</td>
				<td>
				<a href="toupdateUser?id=${u.id }">更新</a>
				<a href="deleteUser?id=${u.id }">删除</a>
				</td>
			</tr>
		</c:forEach>
	</table>
  </body>
</html>
