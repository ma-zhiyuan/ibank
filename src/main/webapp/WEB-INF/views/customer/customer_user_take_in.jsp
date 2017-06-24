<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客服主页-用户存款</title>
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
			<%@include file="templates/lefter.jsp"%>
			

			<div class="glb-main">
				<div class="glb-main-hd">
					<h3 class="main-title">用户服务&nbsp;&gt;&nbsp;用户存款</h3>
					
				</div>

				<form class="form-body"
					action="${basepath }/LCustomer/CustomerAndUser/takeIn"
					id="form" method="post">
					<div class="form-item">
						<h5 class="form-label">存款金额:</h5>
						<div class="form-entity">
							<div class="form-field">
								<input id="money" class="form-ipt" type="text" name="money"
									value="" placeholder="请输入存款金额" />&nbsp;&nbsp; <span
									style="color: red;" id="error_money">${errorInfo}</span>
								<input style="display: none"  class="ipt" type="text" name="rateId" value="${requestScope.rate}" />
							</div>
						</div>
					</div>
					
					<div class="form-action">
						<a class="glb-button glb-btn-primary" href="javascript:check();">提交</a>
					</div>
				</form>
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
	<script type="text/javascript"
		src="${basepath}/resources/scripts/md5.js" charset="utf-8"></script>
	<script type="text/javascript">
		function check() {
			var money = $(":input[name=money]");
			var error_money = $("#error_money");
			if (money.length == "") {
				error_money.text("金额不能为空");
		
			} else {
				error_money.text("");
				$("#form").submit();
			}
		}
	</script>
</body>
</html>
