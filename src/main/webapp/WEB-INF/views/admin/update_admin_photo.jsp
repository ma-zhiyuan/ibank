<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

<head>


<title>管理信息-修改头像</title>
<%@include file="templates/base_css.jsp"%>

<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/form.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/biz/uc.css" />
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
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
			<div class="frame-msub" id="frameMsub">

				<div class="frame-msub-hd">
					<h4 class="msub-title">
						<span class="iconfont icon-setting"></span>管理员信息
					</h4>
				</div>
				<div class="frame-msub-bd">
					<ul class="frame-msub-items">
						<li class="msub-current"><a href="${basepath}/LAdmin/Admin/showAdmin?id=${sessionScope.admin.id }"><span
								class="iconfont icon-parameter"></span>个人信息</a></li>
						<li><a href="${basepath}/LAdmin/Admin/toUpdatePassword"><span
								class="iconfont icon-liuliang">&nbsp;修改密码</span></a></li>
					</ul>
				</div>
			</div>
			<div class="frame-page">
				<div class="frame-main">
					<div class="frame-main-bd">
						<h1 class="frame-title">修改信息</h1>
						<ul class="glb-tabs"></ul>
						<div class="main-bd">
							<div class="content-bd">
								<br> <br>
								<form class="" action="${basepath}/LAdmin/Admin/updateAdminPhoto?id=${sessionScope.admin.id }"
									id="form" method="post" enctype="multipart/form-data"
									name="form" >
									<div class="">
										<h5>
											照片:<input class="ipt" type="file" name="file" id="exampleInputFile"
												value="${sessionScope.admin.photo }" />
										</h5>
									</div>
									<br>
									<div>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<button type="sumbit" class="btn btn-primary">&nbsp;&nbsp;更新&nbsp;&nbsp;</button>
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