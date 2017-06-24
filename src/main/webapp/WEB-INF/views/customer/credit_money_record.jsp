<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- 
	客服为用户服务界面：创建者：魏航
			 创建时间：2017年5月14日
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>信用卡存取款记录</title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/admin/css/list.css">
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/admin/css/dialog.css">
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath}/resources/imgs/logo.png" />
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
</head>

<body>
	<%@include file="templates/header.jsp"%>
	<div class="glb-page">
		<div class="glb-layout">
			<%@include file="templates/lefter.jsp"%>

			<div class="glb-main">
				<div class="glb-main-hd">
					<h3 class="main-title">用户记录&nbsp;&gt;&nbsp;存取款记录</h3>
					<div class="main-toolbar">
						<a href="#" class="glb-button glb-btn-primary">客服操作</a>
					</div>
					<div class="main-toolbar">
						<a href="#" class="glb-button glb-btn-primary">客服操作</a>
					</div>
				</div>

				<div class="content-bd">
					<table class="list-main-tbs">
						<thead>
							<tr>
								<th>流水单号</th>
								<th>操作时间</th>
								<th>银行卡id</th>
								<th>涉及金额</th>
								<th>获得积分</th>
								<th>存取款类型(1存/0取)</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${requestScope.records.data }" var="a">
								<tr>
									<td>${a.id}</td>

									<td><fmt:formatDate value="${a.taketime}" type="both" /></td>
									<td>${a.cardId }</td>
									<td><span class="weak">${a.money }</span></td>
									<td><span class="weak">${a.credit }</span></td>
									<td><span class="weak">${a.isSaveMoney }</span></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
					<tfoot>
						<td class="tbs-col-cb"><input type="checkbox" name=""
							value="" /></td>
						<td colspan="10">
							<div class="glb-left glb-col-left">
								<a href="#" class="glb-button glb-btn-default"> <span
									class="iconfont icon-refresh"></span> 刷新
								</a> <a
									href="${basepath}/LCustomer/CustomerAndUser/showUserCreditMoneyRecord?pageNow=1&cardnum=${requestScope.card.number}"
									class="glb-button glb-btn-default">首页</a>
								<c:if test="${requestScope.records.hasPrePage }">
									<a
										href="${basepath}/LCustomer/CustomerAndUser/showUserCreditMoneyRecord?pageNow=${requestScope.records.currentPage-1 }&cardnum=${requestScope.card.number}"
										class="glb-button glb-btn-default">上一页</a>
								</c:if>
								<span>当前第${requestScope.records.currentPage}页</span>
								<c:if test="${requestScope.records.hasNextPage }">
									<a
										href="${basepath}/LCustomer/CustomerAndUser/showUserCreditMoneyRecord?pageNow=${requestScope.records.currentPage+1}&cardnum=${requestScope.card.number}"
										class="glb-button glb-btn-default">下一页</a>
								</c:if>
								<a
									href="${basepath}/LCustomer/CustomerAndUser/showUserCreditMoneyRecord?pageNow=${requestScope.records.totalPages }&cardnum=${requestScope.card.number}"
									class="glb-button glb-btn-default">末页</a> <input type="text"
									name="pageNow" style="max-width: 50px" /> <input type="submit"
									value="GO" class="glb-button glb-btn-default glb-col-right" />
							</div>
						</td>
					</tfoot>
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
	<script type="text/javascript"
		src="${basepath}/resources/scripts/md5.js" charset="utf-8"></script>

</body>
</html>
