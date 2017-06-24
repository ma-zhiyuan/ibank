
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

<head>
<meta charset="utf-8" />
<title>管理员查看所有咨询</title>
<!-- 导入css库模板 -->
<%@include file="templates/base_css.jsp"%>

<script type="text/javascript" src="${basepath }/resources/user/js/jquery.js"></script>
<script type="text/javascript">
	function check(){
		var re=/^[1-9]+[0-9]*]*$/;
		var num=$("#num").val();
		if(!re.test(num)){
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
			<div class="frame-msub" id="frameMsub">
 				<div class="frame-msub-hd">
 					<h4 class="msub-title">
 						<span class="iconfont icon-setting"></span>查询管理
 					</h4>
 				</div>
 				<div class="frame-msub-bd">
 					<ul class="frame-msub-items">
 						<li><a href="${basepath }/LAdmin/card/list"> <span class="iconfont icon-liuliang"></span>查看银行卡
 						</a></li>
 						<li class="msub-current"><a href="${basepath}/LAdmin/Admin/selectAllLoanInfos?pageNow=1"> <span class="iconfont icon-liuliang"></span>查看贷款信息</a>
 						</li>
 						<li><a href="${basepath}/LAdmin/Admin/selectAllConsult?pageNow=1"> <span class="iconfont icon-liuliang"></span>查看咨询信息</a>
 						</li>
 					</ul>
 				</div>
 			</div>
			<div class="frame-page">
				<div class="frame-main">
					<div class="frame-main-bd">
						<h1 class="frame-title">贷款信息</h1>
						<ul class="glb-tabs">
						</ul>
						<form action="${basepath }/LAdmin/Admin/selectAllLoanInfos">
							<ul class="glb-search">
								<li><h3 style="margin-top:5px">贷款金额 :</h3></li>
								<li ><input onkeyup="value=value.replace(/[^\d]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" class="form-ipt" name="left"
									value="${left}" />
								</li>
								<li><h3 style="margin-top:5px">-</h3></li>
								<li><input onkeyup="value=value.replace(/[^\d]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" class="form-ipt" name="right"
									value="${right}" /></li>
								<li><h3 style="margin-top:5px">排序方式: </h3></li>
								<li><select name="orderByClause" class="form-sel">
										<c:if test="${orderByClause == 0}">
											<option value="0">请选择</option>
											<option value="1">按贷款时间升序</option>
											<option value="2">按贷款时间降序</option>
											<option value="3">按贷款金额升序</option>
											<option value="4">按贷款金额降序</option>
										</c:if>
										<c:if test="${orderByClause == 1 }">
											<option value="0">请选择</option>
											<option value="1" selected="selected">按贷款时间升序</option>
											<option value="2">按贷款时间降序</option>
											<option value="3">按贷款金额升序</option>
											<option value="4">按贷款金额降序</option>
										</c:if>
										<c:if test="${orderByClause == 2 }">
											<option value="0">请选择</option>
											<option value="1">按贷款时间升序</option>
											<option value="2" selected="selected">按贷款时间降序</option>
											<option value="3">按贷款金额升序</option>
											<option value="4">按贷款金额降序</option>
										</c:if>
										<c:if test="${orderByClause == 3 }">
											<option value="0">请选择</option>
											<option value="1">按贷款时间升序</option>
											<option value="2">按贷款时间降序</option>
											<option value="3" selected="selected">按贷款金额升序</option>
											<option value="4">按贷款金额降序</option>
										</c:if>
										<c:if test="${orderByClause == 4 }">
											<option value="0">请选择</option>
											<option value="1">按贷款时间升序</option>
											<option value="2">按贷款时间降序</option>
											<option value="3">按贷款金额升序</option>
											<option value="4" selected="selected">按贷款金额降序</option>
										</c:if>
								</select>
								</li>
								<li><button type="submit" class="glb-button glb-btn-default">搜索</button></li>
							</ul>
						</form>
						<table class="glb-tables">
							<thead>
								<tr>
									<th>贷款时间</th>
									<th>贷款年限</th>
									<th>贷款材料</th>
									<th>贷款金额</th>
									<th>贷款用户</th>
									<th>贷款银行卡</th>
									<th>贷款方式</th>
									<th>贷款利率</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${pager.data}" var="loanInfo">
									<tr>
										<td><fmt:formatDate value="${loanInfo.createTime}"
												pattern="yyyy-MM-dd HH:mm" /></td>
										<td>${loanInfo.loanTime }</td>
										<td>${loanInfo.proppingMaterial }</td>
										<td>${loanInfo.loanMoney }</td>
										<td>${loanInfo.userId }</td>
										<td>${loanInfo.card.number}</td>
										<c:if test="${loanInfo.repaymentMode==1 }">
											<td>等额本息还款</td>
										</c:if>
										<c:if test="${loanInfo.repaymentMode==2 }">
											<td>等额本金还款</td>
										</c:if>
										<td>${loanInfo.interest.rate }&permil;</td>
										 <td width="200px"><%--<a
											href="#">删除</a> <span
											class="tbs-split">|</span>--%>
											<a href="${basepath }/LAdmin/Admin/getDetailLoanInfo?loanInfoId=${loanInfo.id}">详情</a> <span
											class="tbs-split"></span>
										</td> 
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<td colspan="12">
									<ul class="glb-left glb-col-left">
										<li><a
											href="${basepath}/LAdmin/Admin/selectAllLoanInfos?pageNow=1&left=${left}&right=${right}&orderByClause=${orderByClause}">首页</a></li>
										<c:if test="${pager.hasPrePage }">
											<li><a
												href="${basepath}/LAdmin/Admin/selectAllLoanInfos?pageNow=${pager.currentPage-1 }&left=${left}&right=${right}&orderByClause=${orderByClause}">上一页</a>
											</li>
										</c:if>

										<li>第${pager.currentPage}页</li>
										<li>共${pager.totalPages}页</li>

										<c:if test="${pager.hasNextPage }">
											<li><a
												href="${basepath}/LAdmin/Admin/selectAllLoanInfos?pageNow=${pager.currentPage+1}&left=${left}&right=${right}&orderByClause=${orderByClause}">下一页</a></li>
											<li><a
												href="${basepath}/LAdmin/Admin/selectAllLoanInfos?pageNow=${pager.totalPages }&left=${left}&right=${right}&orderByClause=${orderByClause}">末页</a></li>
										</c:if>
										<li>
											<form
												action="${basepath }/LAdmin/Admin/selectAllLoanInfos?left=${left}&right=${right}&orderByClause=${orderByClause}">
												到第<input onkeyup="value=value.replace(/[^\d]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" name="skipPageNow"
													style="max-width: 30px" value="${pager.currentPage }" />页 <input
													type="submit" value="确定" />
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