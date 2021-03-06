<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>还款信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>蓝桥银行 - 贷款信息</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/dialog.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/biz/uc.css">
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/css/bootstrap.min.css"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/animation.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/dialog.js"></script>
</head>
<body>
	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<div id="logo">
				<a href="uc.html"> <img
					src="${basepath}/resources/user/images/logo.png" alt="蓝桥" />
				</a>
			</div>
			<div id="nav" class="glb-nav">
				<ul class="clearfix">
					<li class="glb-nav-uc current"><a href="uc.html"> <span></span>
					</a></li>
					<li class="glb-nav-trade"><a href="trade_list.html"> <span></span>
					</a></li>
					<li class="glb-nav-setting"><a href="my_info.html"> <span></span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div id="page">
		<div class="main layout">
		<h1>还款信息记录</h1>
			<div class="col-menu">
				
				<!-- <ul class="menu-items">
					<li><a class="menu-txt iconfont icon-menu-um"
						href="my_info.html">会员资料</a></li>
					<li><a class="menu-txt iconfont icon-menu-pm"
						href="edit_password.html">密码管理</a></li>
					<li><a class="menu-txt iconfont icon-menu-pm"
						href="my_bank_list.html">银行管理</a></li>
					<li class="last current"><a
						class="menu-txt iconfont icon-menu-pm"
						href="User/showAUserAllCard">我的银行卡</a></li>
				</ul> -->
			</div> 
			<!-- 开始 -->
			
		
			<table class="uc-trade-list">
				<thead>
					<tr>
						<td>ID</td>
						<td>本期要换金额</td>
						<td>贷款id</td>
						<!-- <td>本期还款时间</td> -->
						<td>操作</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${requestScope.AllCreditrepayment}" var="cr">
						<tr>
							<td>${cr.id}</td>
							<td>${cr.repayMoney}</td>
							<td>${cr.loanId}</td>
							<%-- <td>${cr.repayTime}</td> --%>
							<c:if test="${cr.isRepay==0}">
								<td width="200px"><a
									href="${basepath}/LUser/card_user/userInterestRepay?id=${cr.id}">还款</a></td>
							</c:if>
							<c:if test="${cr.isRepay==1}">
								<td width="200px">已还款</td>
							</c:if>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- 结束 -->
		</div>
	</div>
	<div id="bottom" class="bottom"></div>
</body>

</html>
