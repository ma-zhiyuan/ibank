<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
<meta charset="utf-8" />
<title>根据姓名模糊查询用户列表</title>
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
<!-- 			<div class="frame-msub" id="frameMsub"> -->

<!-- 				<div class="frame-msub-hd"> -->
<!-- 					<h4 class="msub-title"> -->
<!-- 						<span class="iconfont icon-setting"></span>用户管理 -->
<!-- 					</h4> -->
<!-- 				</div> -->
<!-- 				<div class="frame-msub-bd"> -->
<!-- 					<ul class="frame-msub-items"> -->
<!-- 						<li class="msub-current"><a href="#"><span -->
<!-- 								class="iconfont icon-parameter"></span>用户列表</a></li> -->
<!-- 						<li><a href="${basepath }/LAdmin/transfer/getPageTransfer?pageNow=1"><span -->
<!-- 								class="iconfont icon-liuliang"></span>转账管理</a></li> -->
<!-- 						<li><a href="#"><span class="iconfont icon-payitem"></span>。。。</a> -->
<!-- 						</li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 			</div> -->
			<div class="frame-page">
				<div class="frame-main">

					<div class="frame-main-bd">
						<h1 class="frame-title">用户列表</h1>
						<ul class="glb-tabs">
<!-- 							<li class="glb-col-right"><a href="#" -->
<!-- 								class="glb-button glb-btn-default"> <span -->
<!-- 									class="iconfont icon-shop"></span> 刷新 -->
<!-- 							</a> <a href="#" class="glb-button glb-btn-primary"> <span -->
<!-- 									class="iconfont icon-reviewing"></span> 刷新 -->
<!-- 							</a></li> -->
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
						</ul>
						<table class="glb-tables">
							<thead>
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
								<c:forEach items="${requestScope.pageusers}" var="user">
									<tr>
										<td>${user.name }</td>
										<td>${user.age }</td>
										<td>${user.gender }</td>
										<td>${user.address }</td>
										<td>${user.phone }</td>
										<td>${user.birthplace }</td>
										<td>${user.birthday }</td>
										<td>${user.nickname }</td>
										<td width="200px"><a
											href="${basepath}/LAdmin/Admin/deleteUser?id=${user.id}" id="state">删除</a>
											<span class="tbs-split">|</span> <a
											href="${basepath}/LAdmin/Admin/selectUserClear?userId=${user.id}">查看</a>
											<span class="tbs-split">|</span>  <a
													href="${basepath}/LAdmin/card/getCardsByUserId?id=${user.id  }">银行卡</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
<!-- 						<form action="${basepath}/LAdmin/Admin/selectAll " -->
<!-- 							style="text-align: right;font-size: 15px;"> -->
<!-- 							跳转到第<input type="text" name="pageNow" style="max-width: 50px" />页&nbsp;&nbsp;&nbsp; -->
<!-- 							<input type="submit" value="确定" /> -->
<!-- 						</form> -->
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