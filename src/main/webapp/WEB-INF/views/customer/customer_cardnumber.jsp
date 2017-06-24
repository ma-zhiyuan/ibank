<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 
	客服为用户服务界面：创建者：刘晓莉
			 创建时间：2017年5月14日
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客服主页-获取用户银行卡号</title>
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
					<h3 class="main-title">用户服务&nbsp;&gt;&nbsp;用户查询</h3>
					<div class="main-toolbar">
						<a href="#" class="glb-button glb-btn-primary">客服操作</a>
					</div>
				</div>

				<form class="form-body"
					action="${basepath}/LCustomer/CustomerAndUser/showUserCreditMoneyRecord?pageNow=1"
					id="form" method="post">

					<div class="form-item">
						<h5 class="form-label">请输入信用卡卡号:</h5>
						<div class="form-entity">
							<div class="form-field">
								<input id="cardnum" class="form-ipt" type="text" name="cardnum"
									value="" placeholder="请输入银行卡号" />&nbsp;&nbsp; <span
									style="color: red;" id="error_cardnum">${errorInfo}</span>
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
	<script type="text/javascript">
		function check() {
			
			var cardnum = $(":input[name=cardnum]");
			
			var error_cardnum = $("#error_cardnum");
			if (cardnum.val().length != 19) {
				error_cardnum.text("卡号长度不正确（卡号为19位）");
			} else {
				error_cardnum.text("");
				$("#form").submit();
			}
		}
	</script>
</body>
</html>
