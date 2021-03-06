<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 
	客服为用户服务界面：创建者：魏航
			 创建时间：2017年5月14日
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客服主页</title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
</head>

<body>
	<%@include file="templates/header.jsp"%>
	<div class="glb-page">
		<div class="glb-layout">
			<%@include file="templates/lefter.jsp" %>

			<div class="glb-main">
				<div class="glb-main-hd">
					<h3 class="main-title">用户服务&nbsp;&gt;&nbsp;业务操作</h3>
					
				</div>
				<div class="main uc-main">
					<div class="layout">
						<div class="uc-main-box clearfix">
							<div class="uc-col-main">
								<br> <br>
								
								<div class="form-item">
						<h2 class="form-label">银行卡号:</h2>
						<div class="form-entity">
							<div class="form-field">
								<h2 style="color: red;" >${requestScope.cardInfo.number}</h2>
							</div>
						</div>
					</div>
					<div class="form-item">
						<h2 class="form-label">剩余金额:</h2>
						<div class="form-entity">
							<div class="form-field">
								 <h2 style="color: red;" >${requestScope.cardInfo.balance}</h2>
							</div>
						</div>
					</div>
								<br>
								<%-- <h2>卡号:${requestScope.cardInfo.number}</h2>
								<h2>剩余金额:${requestScope.cardInfo.balance}</h2>
								<br> --%>
								<div class="uc-acc-box">
									<h2>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a id="deposit" href="${basepath }/LCustomer/UrlToView/customerTakeIn" class="glb-button glb-btn-primary">存款</a> 
										&nbsp;&nbsp;&nbsp;&nbsp;
										<a id="withdraw" href="${basepath }/LCustomer/UrlToView/customerTakeOut" class="glb-button glb-btn-primary">取款</a>
									 </h2>
										<!-- <a id="transfer" href="javascript:;" class="uc-opt-btn uc-opt-last uc-trade-btn"> 转 账 </a> -->
								</div>
								<br>
								<br>
								<br>
								<br>
								<br>
								<br>
								<br>
								<br>
								<br>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="templates/footer.jsp"%>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/global.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/validate.js"></script>
</body>
</html>
