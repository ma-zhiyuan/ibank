<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 
--查文彬
--2017.5.31  19:00
--用于展示用户信用卡的存取款记录
 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'user_all_bank_card.jsp' starting page</title>

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
	href="${basepath}/resources/admin/css/global.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/gla.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/dialog.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/biz/uc.css">
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
			<div class="col-menu">
				<ul class="menu-items">
					<li><a class="menu-txt iconfont icon-menu-um"
						href="my_info.html">会员资料</a></li>
					<li><a class="menu-txt iconfont icon-menu-pm"
						href="edit_password.html">密码管理</a></li>
					<li><a class="menu-txt iconfont icon-menu-pm"
						href="my_bank_list.html">银行管理</a></li>
					<li class="last current"><a
						class="menu-txt iconfont icon-menu-pm"
						href="User/showAUserAllCard">我的银行卡</a></li>
				</ul>
			</div>
			<!-- 开始 -->
			<div class="col-main">
				<div class="main-hd">
					<h3 class="iconfont icon-menu-bm">信用卡存取款记录</h3>
				</div>
				<div class="main-bd">
					<c:if test="${empty pager.data }">
						<div>您还没有存取款记录!</div>
					</c:if>
					<c:if test="${!empty pager.data }">
						<table class="glb-tables">
							<tr>
								<th>ID</th>
								<th>时间</th>
								<th>金额</th>
								<th>类型</th>
							</tr>
							<c:forEach items="${pager.data }" var="deposit">
								<tr>
									<td>${deposit.id }</td>
									<td>${deposit.create_time }</td>
									<td>${deposit.money }</td>
									<c:if test="${deposit.isTakeOut==1 }">
										<td>取款</td>
									</c:if>
									<c:if test="${deposit.isTakeOut==0 }">
										<td>存款</td>
									</c:if>
								</tr>
							</c:forEach>
						</table>
					</c:if>
					<c:if test="${pager.hasPrePage }">
						<a href="${basepath}/LUser/card_user/viewDeposit?card_id=${cardId }&pageNow=1">首页</a>
						<a href="${basepath}/LUser/card_user/viewDeposit?card_id=${cardId }&pageNow=${pager.currentPage-1 }">上一页</a>
					</c:if>
					<c:if test="${pager.hasNextPage }">
						<a href="${basepath}/LUser/card_user/viewDeposit?card_id=${cardId }&pageNow=${pager.currentPage+1 }">下一页</a>
						<a href="${basepath}/LUser/card_user/viewDeposit?card_id=${cardId }&pageNow=${pager.totalPages }">末页</a>
					</c:if>
					第${pager.currentPage }页&nbsp;&nbsp;&nbsp;共${pager.totalPages }页
				</div>
			</div>
			<!-- 结束 -->
		</div>
	</div>
	<div id="bottom" class="bottom"></div>
</body>

</html>
