<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page language="java" import="org.lanqiao.bank.base.entity.LoanInfo"%>
<%@ page language="java" import="org.lanqiao.bank.base.util.DateFormatUtil"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>客服-查看-用户贷款信息</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/global.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/form.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/biz/uc.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/dialog.css" />
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath}/resources/imgs/logo.png" />
	<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/admin/css/list.css">
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/admin/css/dialog.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath }/resources/admin/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath }./resources/admin/js/global.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/admin/js/util.js"></script>
<script type="text/javascript"
	src="../../resources/admin/js/animation.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/admin/js/dialog.js"></script>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
		
			
		</script>

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
			<div class="col-menu">
				<ul class="menu-items">
					<li><a class="menu-txt iconfont icon-menu-um"
						href="${basepath }/LUser/User/myinfo?id=${sessionScope.user.id}">用户资料</a>
					</li>
					<li class="last current"><a
						class="menu-txt iconfont icon-menu-pm" href="my_card_list.html">用户贷款信息</a>
					</li>
				</ul>
			</div>
			<div class="col-main">
				<div class="main-hd">
					<h3 class="iconfont icon-menu-bm ">用户贷款信息</h3>
				</div>
				<table class="list-main-tbs">
					<thead>
						<tr>
							<th class="tbs-col-cb"><input type="checkbox" name=""
								value="" /></th>
							<th>id</th>
							<th>贷款时间</th>
							<th>贷款年限</th>
							<th>贷款材料</th>
							<th>贷款金额</th>
							<th>贷款银行卡</th>
							<th>贷款方式</th>
							<th>贷款利率</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${userLoanInfo}" var="loanInfo">
							<tr>
								<td class="tbs-col-cb"><input type="checkbox" name=""
									value="" /></td>
								<td>${loanInfo.id }</td>
								<td><fmt:formatDate  value="${loanInfo.createTime}" pattern="yyyy-MM-dd HH:mm"/></td>
								<td>${loanInfo.loanTime }</td>
								<td>${loanInfo.proppingMaterial }</td>
								<td>${loanInfo.loanMoney }</td>
								<td>${loanInfo.card.number}</td>
								<c:if test="${loanInfo.repaymentMode==1 }">
									<td>等额本息还款</td>
								</c:if>
								<c:if test="${loanInfo.repaymentMode==2 }">
									<td>等额本金还款</td>
								</c:if>
								<td>${loanInfo.interest.rate }&permil;</td>

							</tr>
						</c:forEach>
					</tbody>
					
				</table>

				<button type="button" class="center-block btn btn-success"
					style="width:150px">
					<a href="${basepath }/LCustomer/UrlToView/customerModule">点击返回到主页</a>
				</button>

			</div>
		</div>
	</div>
	</div>
	<div id="bottom" class="bottom"></div>
</body>

</html>
