<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <%@include file="templates/base_css.jsp" %>
    <%@include file="templates/base_js.jsp" %>
    
    <title>查询用户所有卡</title>
    
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
	<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/util.js"></script>
	<script type="text/javascript" src="js/animation.js"></script>
	<script type="text/javascript" src="js/dialog.js"></script>

  </head>
  
  <body>
    <%@include file="templates/header.jsp" %>
    
    <div id="frameBody" class="frame-body">
    <!-- 导入左侧导航 -->
            <%@include file="templates/left_navigation.jsp" %>
            <div class="frame-wrapper">
            <div class="frame-page">
                    <div class="frame-main">
                        <div class="frame-main-bd">
                            <h1 class="frame-title">用户列表</h1>
                            <ul class="glb-tabs">
                            </ul>
				<table class="glb-tables">
		<tr>
			<td width="200px">卡号</td>
			<td width="200px">余额</td>
			<td width="200px">所属银行</td>
			<td width="200px">操作</td>
		</tr>
		<c:forEach items="${cards }" var="card">
			<tr>
				<td>${card.number }</td>
				<td>${card.balance }</td>
				<td>${card.bank.name }</td>
				<td><a href="">冻结</a> 
				<span class="tbs-split">|</span> <a href="">解冻</a></td>
			</tr>
		</c:forEach>
	</table>
				
            </div>
  	<div id="top"> </div>
		<div id="header">
			<div class="layout">
				<div id="logo">
									</div>
				<div id="nav" class="glb-nav">
					<ul class="clearfix">
						<li class="glb-nav-uc current">
							<a href="uc.html">
								<span></span>
							</a>
						</li>
						<li class="glb-nav-trade">
							<a href="trade_list.html">
								<span></span>
							</a>
						</li>
						<li class="glb-nav-setting">
							<a href="my_info.html">
								<span></span>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		
     	<div class="bottom" id="bottom">
		</div>
  </body>
  <!-- 导入js库模板 -->
<%@include file="templates/base_js.jsp"%>

</html>
