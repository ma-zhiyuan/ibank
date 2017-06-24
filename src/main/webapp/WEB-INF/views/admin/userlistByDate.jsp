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
										<td width="200px"><a
											href="${basepath}/LAdmin/Admin/deleteUser?id=${user.id}" id="state">删除</a>
											<span class="tbs-split">|</span> <a
											href="${basepath}/LAdmin/Admin/selectUserClear?userId=${user.id}">查看</a>
											<span class="tbs-split">|</span> <a
													href="${basepath}/LAdmin/card/getCardsByUserId?id=${user.id  }">银行卡</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
									<ul class="glb-right glb-pagination">
										<li><a href="${basepath}/LAdmin/Admin/selectAllByDate?pageNow=1">首页</a></li>&nbsp;&nbsp;&nbsp;
										<c:if test="${requestScope.pageusers.hasPrePage }">
											<li><a
												href="${basepath}/LAdmin/Admin/selectAllByDate?pageNow=${requestScope.pageusers.currentPage-1 }">上页</a>
											</li>&nbsp;&nbsp;&nbsp;
										</c:if>
										<li>共${requestScope.pageusers.totalPages}</li>  &nbsp;&nbsp;&nbsp;  
										<li>第${requestScope.pageusers.currentPage}</li>&nbsp;&nbsp;&nbsp;

										<c:if test="${requestScope.pageusers.hasNextPage }">
											<li><a
												href="${basepath}/LAdmin/Admin/selectAllByDate?pageNow=${requestScope.pageusers.currentPage+1}">下页</a></li>&nbsp;&nbsp;&nbsp;
										</c:if>
										<li><a
											href="${basepath}/LAdmin/Admin/selectAllByDate?pageNow=${requestScope.pageusers.totalPages }">末页</a></li>&nbsp;&nbsp;&nbsp;
									</ul>
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
</script>

</html>