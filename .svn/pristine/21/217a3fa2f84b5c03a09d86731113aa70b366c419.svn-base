<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

<head>
<meta charset="utf-8" />
<title>转账管理</title>
<!-- 导入css库模板 -->
<%@include file="templates/base_css.jsp"%>
<script type="text/javascript" src="${basepath }/resources/user/js/jquery.js"></script>
<script type="text/javascript">
	
	function check2(){
		var re=/^[1-9]+[0-9]*]*$/;
		var num3=$("#num3").val();
		if(!re.test(num3)){
			return false;
		}
		return true;
	}
	
</script>
</head>

<body>
	<!-- 导入公用模板 -->
	<%@include file="templates/header.jsp"%>
	<div id="frameBody" class="frame-body">
		<!-- 导入左侧导航 -->
		<%@include file="templates/left_navigation.jsp"%>
		<div class="frame-wrapper">
                <div class="frame-page">
                    <div class="frame-main">
                        
                        <div class="frame-main-bd">
                            <h1 class="frame-title">转账管理</h1>
                            <br/>
                            <br/>
                            <form action="${basepath }/LAdmin/transfer/getPageTransfer" onsubmit="return check1()">
	                            <ul class="glb-search">
		                            <li>
										<h3 style='margin-top: 5px'>交易金额	:</h3>
									</li>
	                                <li>
	                                    <input type="number" id="num1" class="form-ipt" name="left" value="${left}" />
	                                </li>
	                                <li>
										<h3 style='margin-top: 5px'> - </h3>
									</li>
	                                <li>
	                                    <input type="number" id="num2" class="form-ipt" name="right" value="${right}"/>
	                                </li>
	                                <li>
										<h3 style='margin-top: 5px'>排序方式:</h3>
									</li>
	                                <li>
	                                    <select name="orderByClause" class="form-sel">
		                                    <c:if test="${orderByClause == 0}">
		                                    	<option value="0">请选择</option>
		                                        <option value="1">按转账时间升序</option>
		                                        <option value="2">按转账时间降序</option>
		                                        <option value="3">按转账金额升序</option>
		                                        <option value="4">按转账金额降序</option>
		                                    </c:if>
		                                    <c:if test="${orderByClause == 1 }">
		                                    	<option value="0">请选择</option>
		                                        <option value="1" selected="selected">按转账时间升序</option>
		                                        <option value="2">按转账时间降序</option>
		                                        <option value="3">按转账金额升序</option>
		                                        <option value="4">按转账金额降序</option>
		                                    </c:if>
		                                    <c:if test="${orderByClause == 2 }">
		                                    	<option value="0">请选择</option>
		                                        <option value="1">按转账时间升序</option>
		                                        <option value="2" selected="selected">按转账时间降序</option>
		                                        <option value="3">按转账金额升序</option>
		                                        <option value="4">按转账金额降序</option>
		                                    </c:if>
		                                    <c:if test="${orderByClause == 3 }">
		                                    	<option value="0">请选择</option>
		                                        <option value="1">按转账时间升序</option>
		                                        <option value="2">按转账时间降序</option>
		                                        <option value="3" selected="selected">按转账金额升序</option>
		                                        <option value="4">按转账金额降序</option>
		                                    </c:if>
		                                    <c:if test="${orderByClause == 4 }">
		                                    	<option value="0">请选择</option>
		                                        <option value="1">按转账时间升序</option>
		                                        <option value="2">按转账时间降序</option>
		                                        <option value="3">按转账金额升序</option>
		                                        <option value="4" selected="selected">按转账金额降序</option>
		                                    </c:if>
	                                    </select>
	                                </li>
	                                <li><button type="submit" class="glb-button glb-btn-default">搜索</button></li>
	                            </ul>
                            </form>
						<table class="glb-tables">
							<thead>
								<tr>
									<th>转账人</th>
									<th>转账卡号</th>
									<th>转入卡号</th>
									<th>交易金额</th>
									<th>备注消息</th>
									<th>交易时间</th>
									<th></th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${pager.data}" var="tran">
									<tr>
										<td>${tran.user.name }</td>
										<td>${tran.fromCard.number }</td>
										<td>${tran.toCard.number }</td>
										<td>${tran.money }</td>
										<td>${tran.message }</td>

										
										<td><fmt:formatDate value="${tran.createTime }" type="both"/></td>

										<td><fmt:formatDate value="${tran.createTime}"
												pattern="yyyy-MM-dd HH:mm" /></td>

										<td>
											<a
											href="${basepath}/LAdmin/transfer/deleteDetailTransfer?transferId=${tran.id}">删除</a> <span
											class="tbs-split">|</span>
											<a href="${basepath}/LAdmin/transfer/getDetailTransfer?transferId=${tran.id}">详情</a> <span
											class="tbs-split"></span>
										</td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<td colspan="12">
									<ul class="glb-left glb-col-left">
										<li><a href="${basepath}/LAdmin/transfer/getPageTransfer?pageNow=1&left=${left}&right=${right}&orderByClause=${orderByClause}">首页</a></li>
										<c:if test="${pager.hasPrePage }">
											<li><a
												href="${basepath}/LAdmin/transfer/getPageTransfer?pageNow=${pager.currentPage-1 }&left=${left}&right=${right}&orderByClause=${orderByClause}">上一页</a>
											</li>
										</c:if>

										<li>第${pager.currentPage}页</li>
										<li>共${pager.totalPages}页</li>

										<c:if test="${pager.hasNextPage }">
											<li><a
												href="${basepath}/LAdmin/transfer/getPageTransfer?pageNow=${pager.currentPage+1}&left=${left}&right=${right}&orderByClause=${orderByClause}">下一页</a></li>
											<li><a
											href="${basepath}/LAdmin/transfer/getPageTransfer?pageNow=${pager.totalPages }&left=${left}&right=${right}&orderByClause=${orderByClause}">末页</a></li>
										</c:if>
										<li>
										<form action="${basepath }/LAdmin/transfer/getPageTransfer?left=${left}&right=${right}&orderByClause=${orderByClause}" onsubmit="return check2()">
										到第<input type="text" id="num3" name="skipPageNow" style="max-width: 30px" value="${pager.currentPage }"/>页
											<input type="submit" value="确定" />
										</form>
										</li>
									</ul>
								</td>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<!-- 导入js库模板 -->
<%@include file="templates/base_js.jsp"%>


</html>