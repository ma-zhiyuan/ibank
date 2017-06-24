<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>修改利率</title>
    <%@include file="templates/base_css.jsp"%>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/form.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/biz/uc.css" />
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" />
<script type="text/javascript"
	src="${basepath}/resources/admin/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/util.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/group.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
		$(function() {
		$("#form").click(function() {
			//验证利率不能为空
			$("#rate").blur(function() {
				var f = document.form;
				var rate = f.rate.value;
				if (rate == "") {
					document.getElementById("error1").innerHTML = "利率不能为空";
					f.rate.focus();
					return false;
				} else {
					document.getElementById("error1").innerHTML = "";
				}
			});
		});
	});
</script>
	<meta http-equiv="Content-Type"
	content="multipart/form-data; charset=utf-8" />
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
						<h1 class="frame-title">修改存款利率</h1>
						<ul class="glb-tabs"></ul>
						<div class="main-bd">
							<div class="content-bd">
								<br> <br> <br> <br>
								<form class="form-inline" action="${basepath}/LAdmin/Admin/updateRate"
									id="form" method="post" enctype="multipart/form-data"
									name="form" >
									<div style="padding-left: 100px;">
									<input class="form-control" type="hidden" name="id"
										value="${sessionScope.admin.id }" placeholder="请输入id" />
									<div class="form-item">
										<h5>
											利率:<input class="form-control" type="text" name="rate" id="rate"
												value="${sessionScope.admin.rate }" placeholder="请输入利率" />
											<span id="error3"></span>
										</h5>
									</div>
									<br>
									</div>
								</form>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
  </body>
  <!-- 导入js库模板 -->
<%@include file="templates/base_js.jsp"%>
</html>
