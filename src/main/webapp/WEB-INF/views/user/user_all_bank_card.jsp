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


<title>用户所有银行卡列表</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>蓝桥银行 - 我的银行卡</title>
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
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
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
<script type="text/javascript">
	$(function() {

		$("#applyNewCard").click(function() {

			Dialogx.show({
				_url : 'dialog_bank.html',
				_title : '请选择要申请的银行',
				_callback : function(dialog) {
					$(".bank-card-x").click(function() {
						dialog.closeDialog();
					});
				}
			});
		});

	});
</script>
</head>
<body>
	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<div id="logo">
				 <img
					src="${basepath}/resources/user/images/logo.png" alt="蓝桥" />
			</div>
			<div id="nav" class="glb-nav">
				<ul class="clearfix">
					<li class="glb-nav-uc current"></li>
					<li class="glb-nav-trade"></li>
					<li class="glb-nav-setting"></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="page">
		<div class="main layout">
			<!-- 开始 -->
			<div class="col-main">
				<div class="main-hd">
					<h3 class="iconfont icon-menu-bm">我的银行卡</h3>
				</div>
				<div class="main-bd">
					<div class="content-hd">
						<p class="tips">
							您当前已申请<span class="em">${cardNum}</span>张银行卡 
						</p>
					</div>
					<div class="content-bd">
						
						<ul class="card-items">
							<c:forEach items="${cards }" var="card">
								<li class="df-show">
									<div class="card-layout card-top">
										<div class="card-col-l">
											<div class="glb-col-hd">
												<h3 class="col-title">普通卡</h3>
											</div>
										</div>
										<p class="card-col-r card-no">${card.number}</p>
									</div>
									<div class="card-layout card-mid">
										<p class="card-col-l card-time">申请日期:card表中无申请时间</p>
										<div class="card-col-r">
											<a class="card-opt card-opt-hide" href="javascript:;">删除</a>
											<a class="card-opt" href="${basepath}/LUser/User/myinfo">账户信息</a>
										</div>
									</div>
									<div class="card-layout card-btm clearfix">
										<div class="card-col-l">
											<p>户名:${card.user.name }</p>
											<p>手机:${card.user.phone }</p></br></br>
											<p class="card-txt">
												<a href="${basepath}/LUser/card_user/creditrepayment?cardId=${card.id}">查看贷款记录</a>
											</p>
											<p class="card-txt">
												<a href="${basepath}/LUser/card_user/ ">查看记录</a>
											</p>
										</div>
										<div class="card-col-r">
											<p class="card-txt">
												<a href="${basepath}/LUser/card_user/toSaveMoney?cardId=${card.id}">普通卡存款</a>
											</p>
											<p class="card-txt">
												<a href="${basepath}/LUser/card_user/totakeMoney?cardId=${card.id}">普通卡取款</a>
											</p>
											<p class="card-txt">
												<a href="${basepath}/LUser/card_user/ ">普通卡贷款</a>
											</p>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="content-bd">
						<div class="content-hd">
							<!-- <h3 class="iconfont icon-menu-bm">我的信用卡</h3> -->
						</div>
						<ul class="card-items">
							<c:forEach items="${creditcards }" var="card">
								<li class="df-show">
									<div class="card-layout card-top">
										<div class="card-col-l">
											<div class="glb-col-hd">
												<h3 class="col-title">信用卡</h3>
											</div>
										</div>
										<p class="card-col-r card-no">${card.number}</p>
									</div>
									<div class="card-layout card-mid">
										<p class="card-col-l card-time">申请日期:card表中无申请时间</p>
										<div class="card-col-r">
											<a class="card-opt card-opt-hide" href="javascript:;">删除</a>
											<a class="card-opt" href="${basepath}/LUser/User/myinfo">账户信息</a>
										</div>
									</div>
									<div class="card-layout card-btm clearfix">
										<div class="card-col-l">
											<p>户名:${card.user.name }</p>
											<p class="card-txt">
												信用等级:<c:if test="${card.credit<500 }">银卡</c:if>
												<c:if test="${card.credit>500&&card.credit<2000 }">金卡</c:if>
												<c:if test="${card.credit>2000&&card.credit<4000}">白钻</c:if>
												<c:if test="${card.credit>4000&&card.credit<5000}">红钻</c:if>
												<c:if test="${card.credit>5000}">蓝钻</c:if>
											</p>
											<p>手机:${card.user.phone }</p>
											<p class="card-txt">
												<a href="${basepath}/LUser/card_user/creditrepayment?cardId=${card.id}">查看贷款记录</a>
											</p>
											<p class="card-txt" style="font-size: 14px;">
											<br>
											<br>
												 友情提示:信用卡贷款请联系客服! 
											</p>
											<!-- <p class="card-txt">
												<a href="${basepath}/LUser/card_user/">查看记录</a>
											</p> -->
											
										</div>
										<div class="card-col-r">
											<p class="card-txt">
												<a href="${basepath}/LUser/card_user/toSaveMoney?cardId=${card.id}">信用卡存款</a>
											</p>
											<p class="card-txt">
												<a href="${basepath}/LUser/card_user/totakeMoney?cardId=${card.id}">信用卡取款</a>
											</p>
											<p class="card-txt">
												<a href="${basepath }/LUser/card_user/viewDeposit?card_id=${card.id}&pageNow=1">查看存取款记录</a>
											</p>
											<!-- <p class="card-txt">
												<a href="${basepath}/LUser/card_user/ ">信用卡贷款</a>
											</p> -->
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
			</div>
			<!-- 结束 -->
		</div>
	</div>
	<div id="bottom" class="bottom"></div>
</body>

</html>
