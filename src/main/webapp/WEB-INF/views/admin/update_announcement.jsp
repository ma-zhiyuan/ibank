<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>修改通知消息</title>
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
						<div class="form-body">
							<form:form id="demoForm" action="${basepath}/LAdmin/AdminAnnounController/updateAnnouncement" method="post"
								enctype="multipart/form-data" modelAttribute="announ">
								<input type="hidden" name="id" value="${announ.id }">
								<div class="">
									<div class="form-item">
										<h2 class="form-label">编辑标题:</h2>
										<div class="form-entity">
											<div class="form-field">
												<form:input  path="title" id="title"
													placeholder="请输入标题" />
											</div>
										</div>
									</div>
									<div class="form-item">
										<h2 class="form-label">编辑内容:</h2>
										<div class="form-entity">
											<div class="form-field">
												<form:textarea path="content" id="content" cols="25" rows="5"/>
											</div>
										</div>
									</div>
									<div class="form-item">
										<h2 class="form-label">消息类型:</h2>
										<div class="form-entity">
											<div class="form-field">
												<form:input class="form-ipt"  path="attribute"
													value="" placeholder="请输入消息类型"  id="attribute"/>
											</div>
										</div>
									</div>
									<h2 class="form-label">图片 :</h2>
									<div class="form-entity">
										<div class="form-field">
											<div class="">
												<a href="" class="form-line-sub glb-button glb-btn-default">
													<input type="file" name="picture1" value="点击上传图片" id="picture1">
												</a> 
											</div>
										</div>
									</div>

									<div class="form-item" >
										<div class="form-entity">
											<div class="form-field">
												<input class="glb-button glb-btn-primary"  id="btn" type="submit" value="提交"  />
											</div>
										</div>
									</div>
								</div>
							</form:form>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<script type="text/javascript" src="${basepath}/resources/admin/js/jquery.min.js"></script>
<script type="text/javascript" src="${basepath}/resources/admin/js/global.js"></script>
<script type="text/javascript" src="${basepath}/resources/admin/js/validate.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn").click(function(){
			var title = $("#title").val(); 
			var content = $("#content").val(); 
			var attribute = $("#attribute").val(); 
			var photo = $("#picture1").val()
			if(title.length == 0){
				alert("标题不能为空")
				return false;
			}
			if(content.length == 0){
				alert("内容不能为空")
				return false;
			}
			if(attribute.length == 0){
				alert("消息类型不能为空")
				return false;
			}
			if(photo.length == 0){
				alert("照片类型不能为空")
				return false;
			}
		});
	
	});
</script>


<!-- 导入js库模板 -->
<%@include file="templates/base_js.jsp"%>
</html>