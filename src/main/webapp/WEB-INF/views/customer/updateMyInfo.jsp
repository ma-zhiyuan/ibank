<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd
">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

<head>
<meta charset="utf-8" />
        <title>修改信息</title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/global.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/form.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/biz/uc.css" />
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/user/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/group.js"></script>

</head>

<body>

	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<div id="logo">
				<img
					src="${basepath}/resources/user/images/logo.png" alt="蓝桥" />
				
			</div>
			
		</div>
	</div>
	<div id="page">
		<div class="main layout">
			<div class="col-menu">
				<ul class="menu-items">
					<li class="current"><a class="menu-txt iconfont icon-menu-um"
						href="my_info.html">基本资料</a></li>
				</ul>
			</div>
			<div class="col-main">
				<div class="main-hd">
					<h3 class="iconfont icon-menu-bm">我的信息</h3>
				</div>
				<div class="main-bd">
					<div class="content-bd">
						<div class="form-bd form-col-r items-group-box">
							<div class="item-group form-group">
								<div class="group-hd">
									<h3>我的信息</h3>
								</div>
								<div class="group-bd">
									<form:form action="${basepath}/LCustomer/CService/updateMyInfo"
										modelAttribute="cService" method="post" enctype="multipart/form-data">
										<input type="hidden" name="no" value="${cService.no }">
											<div class="form-item">
												<h4 class="form-label">编号:</h4>
												<div class="form-entity">
													<div class="form-field">
														<p class="form-text">
															<form:input path="no" />
															<form:errors path="no"></form:errors>
														</p>
													</div>
												</div>
											</div>
											<div class="form-item">
												<h4 class="form-label">姓名:</h4>
												<div class="form-entity">
													<div class="form-field">
														<p class="form-text">
															<form:input path="name" id="name"/>
															<form:errors path="name"></form:errors>
														</p>
													</div>
												</div>
											</div>
											<div class="form-item">
												<h4 class="form-label">证件照:</h4>
												<div class="form-entity">
														选择照片：<input type="file" value="选择文件" name="photo1"/>
												</div>
											</div>
											<div class="form-item">
												<h4 class="form-label">性别:</h4>
												<div class="form-entity">
													<div class="form-field">
														男性： <input type="radio" checked="checked" name="Sex"
															value="1" /><br /> 女性： <input type="radio" name="Sex"
															value="0" />
													</div>
												</div>
											</div>
											<div class="form-item">
												<h4 class="form-label">年龄:</h4>
												<div class="form-entity">
													<div class="form-field form-multi-ipt">
														<p class="form-text">
															<form:input path="age" id="age"/>
															<form:errors path="age"></form:errors>
														</p>
													</div>
												</div>
											</div>
											<div class="form-item">
												<h4 class="form-label">电话:</h4>
												<div class="form-entity">
													<div class="form-field form-multi-ipt">
														<p class="form-text">
															<form:input path="phone" id="phone"/>
															<form:errors path="phone"></form:errors>
														</p>
													</div>
												</div>
											</div>
											<div class="form-item">
												<h4 class="form-label">email:</h4>
												<div class="form-entity">
													<div class="form-field form-multi-ipt">
														<p class="form-text">
															<form:input path="email" id="email"/>
															<form:errors path="email"></form:errors>
														</p>
													</div>
												</div>
											</div> <input type="submit" value="更新" id="btn">
									</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="bottom" class="bottom"></div>
</body>
<script type="text/javascript" src="${basepath}/resources/admin/js/jquery.min.js"></script>
<script type="text/javascript" src="${basepath}/resources/admin/js/global.js"></script>
<script type="text/javascript" src="${basepath}/resources/admin/js/validate.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn").click(function() {
			var name=$("#name").val();
			var age=$("#age").val();
			var email = $("#email").val();
			var  temp = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/ ;
			var phone = $("#phone").val();
			var mobile= /^1[34578]\d{9}$/;

			if (name == "" || name.length > 8) {
				alert("姓名不能为空且长度不能大于8")
				return false;
			}
			else if (age < 0 ||age > 120) {
				alert("年龄不能小于0或者大于120")
				return false;
			}
			else if (!temp.test(email)) {
			alert(email)
				alert("请输入正确的电子邮箱。")
				return false;
			}
			else if (!mobile.test(phone)) {
			alert(phone)
				alert("请输入正确的手机号码。")
				return false;
			}

		});

	});
</script>
 
</html>