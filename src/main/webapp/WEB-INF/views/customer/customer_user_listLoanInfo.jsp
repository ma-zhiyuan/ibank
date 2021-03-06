<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE>
<html>
<head>


<title>客服管理-用户还款</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<%@include file="templates/header.jsp"%>
	<div class="glb-page">
		<div class="glb-layout">
			<div class="glb-menu">
				<ul class="glb-menu-items">
					<li class="menu-current"><a href="#"> <span
							class="menu-ico iconfont icon-members"></span> <span
							class="menu-txt">用户信息</span>
					</a></li>
					<li><a href="#"> <span
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
					<li><a
						href="${basepath }/LCustomer/CustomerAndUser/toCusVerifyUser">
							<span class="menu-ico iconfont icon-coin"></span> <span
							class="menu-txt">用户服务</span> <span class="badge badge--warning"></span>
					</a></li>
				</ul>
			</div>

			<div class="glb-main">
				<div class="glb-main-hd">
					<h3 class="main-title">用户服务&nbsp;&gt;&nbsp;用户贷款</h3>
				</div>
				<div class="glb-main-bd">
					<div class="glb-main-content">
							<form action="${basepath}/LCustomer/CustomerAndUser/toSelectRepayment">
							<!-- <div class="form-item">
								<h5>
									请输入要还款的银行卡号: <input class="form-control" type="text"
										id="cardNumber" name="cardNumber" value="" style="width: 150px;height: 30px"
										placeholder="请输入银行卡" />
										<button type="sumbit" class="btn btn-primary" style="height: 30px;width: 50px">&nbsp;&nbsp;确认&nbsp;&nbsp;</button>
								</h5>
							</div> -->
							<div class="form-item">
								<label for="cardid" class="col-sm-2 control-label">银行卡号</label>
								<div class="col-sm-6">
									<select class="form-control" name="cardNumber">
										<c:forEach items="${sessionScope.card}" var="card">
											<option value="${card.number }">${card.number }</option>
										</c:forEach>
									</select>
									<button type="sumbit" class="btn btn-primary"
										style="height: 30px;width: 70px">&nbsp;&nbsp;确认&nbsp;&nbsp;</button>
								</div>
							</div>
							</form>
						<table class="glb-tables" style="font-size: 17px">
							<thead>
								<tr>
									<th>#</th>
									<th>贷款日期</th>
									<th>贷款金额</th>
									<th>利率</th>
									<th>卡号</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty list }">
									<tr>无贷款记录！</tr>
								</c:if>
								<c:if test="${not empty list}">
									<c:forEach items="${list}" var="loan"> 
										<c:set var="index" value="${index+1}" /> 
									<tr>
										<td>${ index}</td>
										<td><fmt:formatDate value="${loan.createTime}"
													pattern="yyyy-MM-dd " /></td>
										<td>${loan.loanMoney }</td>
										<td>${loan.interest.rate }</td>
										<td>${loan.card.number }</td>
										<td><a href="${basepath}/LCustomer/CustomerAndUser/toRepaymentPage?id=${loan.id}">还款</a></td>
									</tr>
									
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
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
