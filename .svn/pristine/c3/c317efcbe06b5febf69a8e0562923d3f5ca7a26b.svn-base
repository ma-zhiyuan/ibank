<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8" />
<title>客服列表</title>
<!-- 导入css库模板 -->
<%@include file="templates/base_css.jsp"%>
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
						<span class="iconfont icon-setting"></span>客服管理
					</h4>
				</div>
				<div class="frame-msub-bd">
					<ul class="frame-msub-items">
						<li class="msub-current"><a
							href="${basepath}/LCustomer/CService/selectAllCusService?pageNow=1"><span
								class="iconfont icon-liuliang"></span>客服列表</a></li>
						<li><a href="${basepath}/LAdmin/UrlToView/cusSevice_register"><span
								class="iconfont icon-liuliang"></span>客服注册</a></li>
						</li>
					</ul>
				</div>
			</div>
			<div class="frame-page">
				<div class="frame-main">

					<div class="frame-main-bd">
						<h1 class="frame-title">客服列表</h1>
						<ul class="glb-tabs">
						</ul>
						<table class="glb-tables">
							<thead>
								<tr>
									<th>编号</th>
									<th>姓名</th>
									<th>年龄</th>
									<th>性别</th>
									<th>邮箱</th>
									<th>手机</th>
									<th>操作</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${requestScope.cServicePage.data }" var="cs">
									<tr>

										<td>${cs.no}</td>
										<td>${cs.name}</td>
										<td>${cs.age}</td>
										<td>${cs.gender}</td>
										<td>${cs.email}</td>
										<td>${cs.phone}</td>
										<td width="200px"><a
											href="${basepath}/LCustomer/CService/deleteCusServiceByNo?no=${cs.no}">删除</a>
											</a> <span class="tbs-split">|</span> <a
											href="${basepath}/LCustomer/CService/toupdateCS?no=${cs.no}">修改</a></td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<td colspan="10">
									<div class="glb-left glb-col-left">
										<a
											href="${basepath}/LCustomer/CService/selectAllCusService?pageNow=1"
											class="glb-button glb-btn-default">首页</a>
										<c:if test="${requestScope.cServicePage.hasPrePage }">
											<a
												href="${basepath}/LCustomer/CService/selectAllCusService?pageNow=${requestScope.cServicePage.currentPage-1 }"
												class="glb-button glb-btn-default">上一页</a>
										</c:if>

										<a class="glb-button glb-btn-default">当前第${requestScope.cServicePage.currentPage}页</a>
										<a class="glb-button glb-btn-default">共${requestScope.cServicePage.totalPages}页</a>
										<c:if test="${requestScope.cServicePage.hasNextPage }">
											<a
												href="${basepath}/LCustomer/CService/selectAllCusService?pageNow=${requestScope.cServicePage.currentPage+1}"
												class="glb-button glb-btn-default">下一页</a>
										</c:if>
										<a
											href="${basepath}/LCustomer/CService/selectAllCusService?pageNow=${requestScope.cServicePage.totalPages }"
											class="glb-button glb-btn-default">末页</a>
									</div>
									<form
											action="${basepath}/LCustomer/CService/selectAllCusService"
											style="text-align: right;font-size: 15px;" id="form">
											<a class="glb-button glb-btn-default">跳转到第<input type="text" name="pageNow" style="max-width: 50px" />页</a>
											<a href="javascript:check(${requestScope.cServicePage.totalPages});" id="submit"
												class="glb-button glb-btn-default"> <span>确定</span>
											</a> <span style="color: red;" id="error_pageNow"></span>
										</form>
								</td>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/global.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/validate.js"></script>
	<script type="text/javascript">
	    	function check(page){
	    		var pageNow=$(":input[name=pageNow]");
	    		var error_pageNow=$("#error_pageNow");
	    		if(pageNow.val()>page){
	    			error_pageNow.text("您输入了不合法的页面");
	    		}else{
	    			error_pageNow.text("");
	    			$("#form").submit();
	    		}
	    	}
	    </script>
</body>

<!-- 导入js库模板 -->
<%@include file="templates/base_js.jsp"%>
</html>
