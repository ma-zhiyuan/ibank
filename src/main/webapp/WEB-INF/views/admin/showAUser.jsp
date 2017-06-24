<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
		<title>查询一个用户</title>
		<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/gla.css" />
	<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
	</head>
	<body>
		<%@include file='templates/header.jsp' %>
		<div id="frameBody" class="frame-body">
				<%@include file="templates/left_navigation.jsp"%>
			
			<div class="frame-wrapper">
				<div class="frame-page">
					<div class="frame-main">
						<div class="frame-main-hd">
							<h2 class="frame-title">用户详细信息</h2>
							<h6 class="frame-tips glb-text-success"><span class="iconfont icon-correct"></span>操作成功</h6>
						</div>
						<div class="frame-main-bd">
							<ul class="glb-steps glb-stepbar glb-steps-col4">
								<div class="form-body">
										<div class="glb-col-p50">
											<div class="form-item">
												<h6 class="form-label">用户姓名:</h6>
												<div class="form-entity">
													<div class="form-field">
													   <h6>${requestScope.showUser.name }</h6>
													</div>
												</div>
											</div>
											<div class="form-item">
												<h6 class="form-label">用户年龄:</h6>
												<div class="form-entity">
													<div class="form-field">
														<h6>${requestScope.showUser.age }</h6>
													</div>
												</div>
											</div>
											<div class="form-item">
												<h6 class="form-label">用户性别:</h6>
												<div class="form-entity">
													<div class="form-field">
														<h6>${requestScope.showUser.gender }</h6>
													</div>
												</div>
											</div>
											<div class="form-item">
												<h6 class="form-label">用户住址:</h6>
												<div class="form-entity">
													<div class="form-field">
														<h6>${requestScope.showUser.address }</h6>
													</div>
												</div>
											</div>
											<div class="form-item">
												<h6 class="form-label">用户手机:</h6>
												<div class="form-entity">
													<div class="form-field">
														<h6>${requestScope.showUser.phone }</h6>
													</div>
												</div>
											</div>
											
											<div class="form-item">
												<h6 class="form-label">用户邮箱:</h6>
												<div class="form-entity">
													<div class="form-field">
														<h6>${requestScope.showUser.email}</h6>
													</div>
												</div>
											</div>
											
											<div class="form-item">
												<h6 class="form-label">用户出生地:</h6>
												<div class="form-entity">
													<div class="form-field">
														<h6>${requestScope.showUser.birthplace }</h6>
													</div>
												</div>
											</div>
											<div class="form-action clearfix">
											</div>
										</div>
								</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
 <script type="text/javascript"
	src="${basepath}/resources/admin/js/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/global.js" charset="utf-8"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/dialog.js" charset="utf-8"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/validate.js" charset="utf-8"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/gla.js" charset="utf-8"></script>
	<script type="text/javascript">
		$(function() {

			$("#showDialogBtn").click(function() {

				Dialogx.show({
					_url: 'dialog.html',
					_title: '请输入充值金额'
				});

			});

			$("#alertBtn").click(function() {

				Dialogx.confirm('这是一个提示框', function() {
					console.log("woqu");
				});

			});

			// VALIDATE
			$("#demoForm").validate(rules);
		});

		// form validate rule
		var rules = {

			"name-a": {
				tip: "name-a的提示信息",
				rule: {
					required: ["请输入name-a!"],
					length: ["name-a长度为4-20位", "4-20"]
				}
			},

			"name-b": {
				tip: "请输入name-b!",
				rule: {
					required: ["请输入name-b!"],
					length: ["name-b至少为两个汉字!", "2-20"]
				}
			},

			"name-c": {
				tip: "请输入name-c",
				rule: {
					required: ["请输入name-c!"],
					regex: ["请输入正确的name-c!", "tel,mobile"]
				}
			}

		};
	</script>

</html>