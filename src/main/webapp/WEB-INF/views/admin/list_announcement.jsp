<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>通知消息列表</title>
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
	<style type="text/css" >
		#biaotou th {text-align:center}
	
	</style>
<!-- 导入css库模板 -->
<%@include file="templates/base_css.jsp"%>
</head>

<body>
	<!-- 导入公用模板 -->
	<%@include file="templates/header.jsp"%>
	<div id="frameBody" class="frame-body">
		<!-- 导入左侧导航 -->
		<%@include file="templates/left_navigation.jsp"%>
		<div class="frame-wrapper" style="margin-left: 20px;">
			<div id="page">
				<div class="main layout">
					<div class="col-main">
						<h1>通知消息记录</h1>
						<div class="main-bd">
							<h2>当前总共有${requestScope.announcementPage.totalRows}条通知消息</h2>
							<h2>
								<a href="${basepath}/LAdmin/AdminAnnounController/insertAnnouncement">添加一条消息</a>
							</h2>
							<div class="content-bd">
								<table class="list-main-tbs">
									<thead>
										<tr id="biaotou">
											<th>标题</th>
											<th id="neirong">内容</th>
											<th>修改时间</th>
											<th>创建时间</th>
											<th>其他操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${requestScope.announcementPage.data }"
											var="a">
											<tr>
												<td>${a.title}</td>
												<td>${a.content }</td>
												<td><fmt:formatDate value="${a.updateTime }"
														type="both" /></td>
												<td><fmt:formatDate value="${a.createTime }"
														type="both" /></td>
												<td><a
													href="${basepath}/LAdmin/AdminAnnounController/toupdateAnnouncement?id=${a.id}"
													target="_blank">编辑消息</a> <a
													href="${basepath}/LAdmin/AdminAnnounController/deleteAnnounById?id=${a.id}"
													target="_blank">删除消息</a></td>
											</tr>
										</c:forEach>

									</tbody>
								</table>
								<tfoot>
								<td colspan="10">
									<div class="glb-left glb-col-left">
										<a
											href="${basepath}/LAdmin/AdminAnnounController/showPageAnnouncement?pageNow=1"
											class="glb-button glb-btn-default">首页</a>
										<c:if test="${requestScope.announcementPage.hasPrePage }">
											<a
												href="${basepath}/LAdmin/AdminAnnounController/showPageAnnouncement?pageNow=${requestScope.announcementPage.currentPage-1 }"
												class="glb-button glb-btn-default">上一页</a>
										</c:if>

										<a class="glb-button glb-btn-default">当前第${requestScope.announcementPage.currentPage}页</a>
										<a class="glb-button glb-btn-default">共${requestScope.announcementPage.totalPages}页</a>
										<c:if test="${requestScope.announcementPage.hasNextPage }">
											<a
												href="${basepath}/LAdmin/AdminAnnounController/showPageAnnouncement?pageNow=${requestScope.announcementPage.currentPage+1}"
												class="glb-button glb-btn-default">下一页</a>
										</c:if>
										<a
											href="${basepath}/LAdmin/AdminAnnounController/showPageAnnouncement?pageNow=${requestScope.announcementPage.totalPages }"
											class="glb-button glb-btn-default">末页</a>
									</div>
									<form
											action="${basepath}/LAdmin/AdminAnnounController/showPageAnnouncement"
											style="text-align: right;font-size: 15px;" id="form">
											<a class="glb-button glb-btn-default">跳转到第<input type="text" name="pageNow" style="max-width: 50px" />页</a>
											<a href="javascript:check(${requestScope.announcementPage.totalPages});" id="submit"
												class="glb-button glb-btn-default"> <span>确定</span>
											</a> <span style="color: red;" id="error_pageNow"></span>
										</form>
								</td>
								</tfoot>
							</div>
						</div>
					</div>
				</div>
				<div id="bottom" class="bottom"></div>
			</div>

		</div>
	</div>
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