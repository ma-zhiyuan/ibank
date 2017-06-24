<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 刘晓莉   查看交易明细 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>蓝桥银行 - 交易明细</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/global.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/list.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/laydate.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/biz/trade.css" />
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath }/resources/user/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/list.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/laydate.js"></script>

</head>

<body>
	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<div id="logo">
				<img src="${basepath }/resources/user/images/logo.png" alt="蓝桥" />
			</div>
		</div>
	</div>
	<div id="page">
		<div class="main layout">
			<div class="glb-list-box">
				<div class="glb-list-hd clearfix">
					<h3 class="list-hd-title">
						<span class="iconfont icon-trade-list"></span> <span
							class="subject">交易记录</span>
					</h3>
					<ul class="list-hd-side">

						<li><span class="side-ft">|</span></li>
						<li></li>
					</ul>
				</div>
				<div class="glb-list-bd">
					<div class="list-cond-box">
						<div class="list-cond-hd clearfix">

							<a id="moreCondBtn" class="more-cond-btn cond-tbs-down"
								href="javascript:;"> 更多条件 <span
								class="iconfont icon-arrow-up"></span>
							</a>
						</div>
						<div id="listCondBd" class="list-cond-bd clearfix">
							<table class="list-cond-tbs">
								<tr>
									<!-- <th>交易号:</th>
									<td><input type="text" class="ipt" /></td>
									<th>流水号:</th>
									<td><input type="text" class="ipt" /></td> -->

									<th>选择交易日期区间:</th>
									<td>
										<div class="list-cond-between">
											<input type="text" class="ipt ipt-date twin-item"
												onclick="laydate()" /> <span class="twin-ft">-</span> <input
												type="text" class="ipt ipt-date twin-item"
												onclick="laydate()" />
										</div>
									</td>

								</tr>
								<tr>
									<th>发起方:</th>
									<td><select class="sel" name="" id="">
											<option value="">全部</option>
											<option value="">个人</option>
											<option value="">商户</option>
									</select></td>
									<th>交易状态:</th>
									<td><select class="sel" name="" id="">
											<option value="">全部</option>
											<option value="">交易成功</option>
											<option value="">交易失败</option>
									</select></td>
									<th>金额区间:</th>
									<td>
										<div class="list-cond-between">
											<input type="text" class="ipt twin-item" /> <span
												class="twin-ft">-</span> <input type="text"
												class="ipt twin-item" />
										</div>
									</td>
								</tr>
							</table>
							<a
								href="${basepath}/LUser/transfer_card/CardtransferSelect?pageNow=1&cardid=${requestScope.cardid}"
								class="cmn-btn cmn-btn-blue submit-cond-btn">提交表单</a>
						</div>
					</div>

					<table class="list-main-tbs trade-list-tbs">
						<thead>
							<tr>
								<th class="tac">编号</th>
								<th class="tac">发起方</th>
								<th class="tac">接收方</th>
								<th class="tar"><a href="javascript:;" class="col-order-by">
										金额(元)
										<div class="order-arr order-desc">
											<span class="arr arr-up"></span> <span class="arr arr-down"></span>
										</div>
								</a></th>
								<th>状态</th>
								<th>交易日期</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${transfers.data}" var="t">
								<c:set value="${i+1}" var="i"></c:set>
								<tr>
									<th>${i}</th>
									<th>${t.fromCardId }</th>
									<th>${t.toCardId }</th>
									<th>${t.money }</th>
									<th>${t.message }</th>

									<th><fmt:formatDate value="${t.createTime }" type="both" /></th>
								</tr>
							</c:forEach>
						</tbody>

					</table>

					<tfoot>

						<td colspan="10">
							<div class="glb-left glb-col-left">
								<a
									href="${basepath}/LUser/transfer_card/CardtransferSelect?pageNow=1&cardid=${requestScope.cardid}"
									class="glb-button glb-btn-default"> <span
									class="iconfont icon-refresh"></span> 刷新
								</a> <a
									href="${basepath}/LUser/transfer_card/CardtransferSelect?pageNow=1&cardid=${requestScope.cardid}"
									class="glb-button glb-btn-default">首页</a>
								<c:if test="${requestScope.transfers.hasPrePage }">
									<a
										href="${basepath}/LUser/transfer_card/CardtransferSelect?pageNow=${requestScope.transfers.currentPage-1 }&cardid=${requestScope.cardid}"
										class="glb-button glb-btn-default">上一页</a>
								</c:if>
								<span>当前第${requestScope.transfers.currentPage}页</span>
								<c:if test="${requestScope.transfers.hasPrePage }">
									共<a
										href="${basepath}/LUser/transfer_card/CardtransferSelect?pageNow=${requestScope.transfers.totalPages }&cardid=${requestScope.cardid}"
										class="glb-button glb-btn-default">页</a>
								</c:if>
								<c:if test="${requestScope.transfers.hasNextPage }">
									<a
										href="${basepath}/LUser/transfer_card/CardtransferSelect?pageNow=${requestScope.transfers.currentPage+1}&cardid=${requestScope.cardid}"
										class="glb-button glb-btn-default">下一页</a>
								</c:if>
								<a
									href="${basepath}${basepath}/LUser/transfer_card/CardtransferSelect?pageNow=${requestScope.transfers.totalPages }&cardid=${requestScope.cardid}"
									class="glb-button glb-btn-default">末页</a> <input type="text"
									name="pageNow" style="max-width: 50px" /> <input type="submit"
									value="GO" class="glb-button glb-btn-default glb-col-right" />
							</div>
						</td>
					</tfoot>
				</div>
			</div>
		</div>
		<div id="bottom" class="bottom"></div>
	</div>
</body>
</html>
