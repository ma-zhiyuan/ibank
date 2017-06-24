<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>


<title>更新存款利率</title>
<%@include file="templates/base_css.jsp"%>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


	<script type="text/javascript"
	src="${basepath }/resources/admin/js/jquery.js"></script>
<meta http-equiv="Content-Type"
	content="multipart/form-data; charset=utf-8" />
<script type="text/javascript">
	$(function(){
		$("#rate").blur(function(){
			var rate = $("#rate").val();
			if(rate<0||rate>1||rate.trim()==""){
				alert("利率必须大于0，小于1 !!");
				return false;
			}
		});
	});
	
	function clickChack(){
		var rate = $("#rate").val();
		if(rate.trim()==""){
			alert("利率不能为空");
			return false;
		}
		$("#myform").submit();
	}
</script>
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
						<span class="iconfont icon-setting"><a
							href="${basepath }/LAdmin/Bank/toBankInterestRate">更新存款利率</a></span>
					</h4>
				</div>
				<div class="frame-msub-hd">
					<h4 class="msub-title">
						<span class="iconfont icon-setting"><a
							href="${basepath }/LAdmin/Bank/toDepositInterestRate">添加存款利率</a></span>
					</h4>
				</div>
				<!-- <div class="frame-msub-bd">
					<ul class="frame-msub-items">
						<li class="msub-current"><span
							class="iconfont icon-parameter"></span>存款利率</a></li>
					</ul>
				</div> -->
			</div>
			<div class="frame-page">
				<div class="frame-main">
					<div class="frame-main-bd">
						<h1 class="frame-title">更新存款利率</h1>
						<ul class="glb-tabs">
							<li class="glb-col-right"><a
								href="JavaScript:history.back(-1)"
								class="glb-button glb-btn-primary"> <span
									class="iconfont icon-reviewing"></span> 返回上一页
							</a></li>
						</ul>
						<div style="text-align:center;">
							<div class="frame-main-bd" >
								<form class="form-inline" action="${basepath }/LAdmin/Bank/updateBankInterest" id="myform">
								<div class="frend-link" style="width:700px;margin:0 auto;">
									<div class="form-group">
										<input type="hidden" value="${interest.id }" name="id">
											<input type="text" class="form-ipt" id="rate" name="rate" value="" placeholder="请输入新利率">
										
									</div>
								</div>
									<br><button id="mybutton" type="button" class="glb-button glb-btn-default" style="background:green" onclick="clickChack()">确定</button>
								</form>
							</div>
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
