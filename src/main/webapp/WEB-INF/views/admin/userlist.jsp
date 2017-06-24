<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
<meta charset="utf-8" />
<title>用户列表</title>
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
			<div class="frame-page">
				<div class="frame-main">

					<div class="frame-main-bd">
						<h1 class="frame-title">用户列表</h1>
						<ul class="glb-tabs">
						</ul>
						<ul class="glb-search">
								<form action="selectByLikeName">
								<li><h3 style="margin-top:5px">姓名模糊查找:</h3></li>
							<li>
							<input type="text" class="form-ipt" name="name" value=""
							</li>
							<!-- <li><input type="text" class="form-ipt" name="" value=""
								placeholder="请输入" /></li> -->
							<li><button type="submit" class="glb-button glb-btn-default">搜索</button></li>
								</form>
									<li><h3 style="margin-top:5px">条件查看:
									<select style="font-size: 15px;">
												<option>下拉选择</option>
												<option onclick="submitForm2()">正常查看</option>
												<option onclick="submitForm1()">按年龄升序查看</option>
												<option onclick="submitForm3()">按年龄降序查看</option>
												<option onclick="submitForm4()">按生日升序查看</option>
												<option onclick="submitForm5()">按生日降序查看</option>
									</select>
									
									</h3></li>
								
								
						</ul>
						<table class="glb-tables">
							<thead>
								<tr>
									<th>姓名</th>
									<th>年龄</th>
									<th>性别</th>
									<th>家庭地址</th>
									<th>手机</th>
									<th>出生地</th>
									<th>出生日期</th>
									<th>昵称</th>
									<th>用户状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${requestScope.pageusers.data }" var="user">
									<tr>
										<td>${user.name }</td>
										<td>${user.age }</td>
										<td>${user.gender }</td>
										<td>${user.address }</td>
										<td>${user.phone }</td>
										<td>${user.birthplace }</td>
										<td><fmt:formatDate  value="${user.birthday }" pattern="yyyy-MM-dd HH:mm"/></td>
										<td>${user.nickname }</td>
										<td>
												<c:if test="${ user.state==0}">
													此用户已经被删除
												</c:if>
												<c:if test="${user.state!=0 }">
													正常用户
												</c:if>
										</td>
												<c:if test="${user.state!=0}">
														<td width="200px"><a
															href="${basepath}/LAdmin/Admin/deleteUser?id=${user.id}" id="state">删除</a>
															<span class="tbs-split">|</span> <a
															href="${basepath}/LAdmin/Admin/selectUserClear?userId=${user.id}">查看</a>
															<span class="tbs-split">|</span> <a
																	href="${basepath}/LAdmin/card/getCardsByUserId?id=${user.id  }">银行卡</a></td>
												</c:if>
												<c:if test="${user.state==0}">
														<td width="200px"> 此用户无法进行操作</td>
												</c:if>
										</td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<td colspan="10">
									<div class="glb-left glb-col-left">
										<a
											href="${basepath}/LAdmin/Admin/selectAll?pageNow=1"
											class="glb-button glb-btn-default">首页</a>
										<c:if test="${requestScope.pageusers.hasPrePage }">
											<a
												href="${basepath}/LAdmin/Admin/selectAll?pageNow=${requestScope.pageusers.currentPage-1 }"
												class="glb-button glb-btn-default">上一页</a>
										</c:if>

										<a class="glb-button glb-btn-default">当前第${requestScope.pageusers.currentPage}页</a>
										<a class="glb-button glb-btn-default">共${requestScope.pageusers.totalPages}页</a>
										<c:if test="${requestScope.pageusers.hasNextPage }">
											<a
												href="${basepath}/LAdmin/Admin/selectAll?pageNow=${requestScope.pageusers.currentPage+1}"
												class="glb-button glb-btn-default">下一页</a>
										</c:if>
										<a
											href="${basepath}/LAdmin/Admin/selectAll?pageNow=${requestScope.pageusers.totalPages }"
											class="glb-button glb-btn-default">末页</a>
									</div>
									<form
											action="${basepath}/LAdmin/Admin/selectAll"
											style="text-align: right;font-size: 15px;" id="form">
											<a class="glb-button glb-btn-default">跳转到第<input type="text" name="pageNow" style="max-width: 50px" />页</a>
											<a href="javascript:check(${requestScope.pageusers.totalPages});" id="submit"
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
</body>

<!-- 导入js库模板 -->
<%@include file="templates/base_js.jsp"%>
<script type="text/javascript">
	function submitForm1() {
		window.location.href = "selectAllByAge?pageNow=1";
	}
	function submitForm2() {
		window.location.href = "selectAll?pageNow=1";
	}
	function submitForm3() {
		window.location.href = "selectAllByAgeDesc?pageNow=1";
	}
	function submitForm4() {
		window.location.href = "selectAllByDate?pageNow=1";
	}
	function submitForm5() {
		window.location.href = "selectAllByDateDesc?pageNow=1";
	}
	
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

</html>