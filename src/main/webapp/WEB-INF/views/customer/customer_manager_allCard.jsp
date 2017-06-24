<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客服主页-管理所有银行卡</title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath}/resources/imgs/logo.png" />

</head>

<body>
	<%@include file="templates/header.jsp"%>
	<div class="glb-page">
		<div class="glb-layout">
			<%-- <%@include file="templates/lefter.jsp"%> --%>
			<div class="glb-menu">
				<ul class="glb-menu-items">
					<li class="menu-current"><a
						href="${basepath }/LCustomer/CService/list"> <span
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
					<li><a href="${basepath}/LCustomer/UrlToView/customerModule">
							<span class="menu-ico iconfont icon-cmcc"></span> <span
							class="menu-txt">用户服务</span> <span class="badge badge--warning"></span>
					</a></li>
				</ul>
			</div>





			<div class="glb-main">
				<div class="frame-page">
					<div class="frame-main">
						<div class="frame-main-hd"></div>
						<div class="frame-main-bd">

							<ul class="glb-search">
								<form action="${basepath }/LCustomer/CService/list">
									<input type="hidden" name="currentPage" value="1" />
									<li><h3 style="margin-top:5px">卡号</h3></li>
									<li><input type="text" class="form-ipt" name="number"
										value="${number }" /></li>
									<li><h3 style="margin-top:5px">余额</h3></li>
									<li><input type="text" class="form-ipt" name="left"
										value="${left }" /></li>
									<li><h3 style='margin-top: 5px'>:</h3></li>
									<li><input type="text" class="form-ipt" name="right"
										value="${right }" /></li>
									<li>
										<h3 style='margin-top: 5px'>排序</h3>
									</li>
									<li><select name="orderByClause" class="form-sel">
											<c:if test="${orderByClause == 0 }">
												<option value="0">请选择</option>
												<option value="1">余额由大到小</option>
												<option value="2">余额由小到大</option>
											</c:if>
											<c:if test="${orderByClause == 1 }">
												<option value="0">请选择</option>
												<option value="1" selected="selected">余额由大到小</option>
												<option value="2">余额由小到大</option>
											</c:if>
											<c:if test="${orderByClause == 2 }">
												<option value="0">请选择</option>
												<option value="1">余额由大到小</option>
												<option value="2" selected="selected">余额由小到大</option>
											</c:if>
									</select></li>

									<li><button type="submit"
											class="glb-button glb-btn-default">搜索</button></li>
								</form>
							</ul>
							<table class="glb-tables">
								<thead>
									<tr>
										<th class="tbs-col-cb"><input type="checkbox" name=""
											value="" /></th>
										<th>卡号</th>
										<th>余额</th>
										<th>所在银行</th>
										<th>所属用户</th>
										<th>是否为信用卡</th>
										<th>操作</th>
									</tr>
								</thead>
								<c:forEach items="${pager.data }" var="card">
									<tr>
										<td class="tbs-col-cb"><input type="checkbox" name=""
											value="" /></td>
										<td>${card.number }</td>
										<td>${card.balance }</td>
										<td>${card.bank.name }</td>
										<td>${card.user.name }</td>
										<td>
												<c:if test="${card.isCreditCard==1}">
													信用卡
												</c:if>
												<c:if test="${card.isCreditCard!=1 }">
													普通卡
												</c:if>
										</td>
										<td width="200px" >
											<span
											class="tbs-split">|</span> <c:if test="${card.isPass==1}">
											 已通过验证
											</c:if> <c:if test="${card.isPass==0 }">
												<a
													href="${basepath }/LCustomer/CService/takeCardPass?id=${card.id}">通过银行卡验证</a>
											</c:if></td>
									</tr>
								</c:forEach>
								</tbody>
								<tfoot>
									<td class="tbs-col-cb"> </td>
									<td colspan="6">
										<div class="glb-left glb-col-left">
											<a href="${basepath }/LCustomer/CService/list?currenPage=1"
												class="glb-button glb-btn-default"> <span
												class="iconfont icon-refresh"></span> 刷新
											</a>
										</div>
										<ul class="glb-right glb-pagination">
											<li><a
												href="${basepath }/LCustomer/CService/list?currenPage=1">首页</a></li>
											<li><a
												href="${basepath }/LCustomer/CService/list?currentPage=${pager.currentPage-1 }">上页</a>
											</li>
											<li>共${pager.totalPages}</li>
											<li>第${pager.currentPage}</li>

											<li><a
												href="${basepath }/LCustomer/CService/list?currentPage=${pager.currentPage == pager.totalPages ? pager.totalPages : pager.currentPage - 0 + 1}">下页</a></li>
											<li><a
												href="${basepath }/LCustomer/CService/list?currentPage=${pager.totalPages }">末页</a></li>

											跳转到第
											<form action="${basepath }/LCustomer/CService/list"
												method="get">
												<input type="text" name="currentPage"
													style="max-width: 50px" />页 <input type="submit"
													value="确定" />
											</form>
										</ul>
									</td>
								</tfoot>
							</table>
						</div>
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

