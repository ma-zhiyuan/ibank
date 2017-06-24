<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 
	客服为用户服务界面：创建者：魏航
			 创建时间：2017年5月14日
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客服主页-用户提现</title>
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
<!-- 			<div class="glb-menu"> -->
<!-- 				<ul class="glb-menu-items"> -->
<!-- 					<li><a href="#"> <span -->
<!-- 							class="menu-ico iconfont icon-members"></span> <span -->
<!-- 							class="menu-txt">用户信息</span> -->
<!-- 					</a></li> -->
<!-- 					<li><a href="#"> <span -->
<!-- 							class="menu-ico iconfont icon-advert"></span> <span -->
<!-- 							class="menu-txt">银行卡管理</span> -->
<!-- 					</a></li> -->
<!-- 					<li><a href="${basepath }/LCustomer/CService/getQuestion?pageNow=1"> -->
<!-- 							<span class="menu-ico iconfont icon-3line-y"></span> <span -->
<!-- 							class="menu-txt">通知管理</span> -->
<!-- 					</a></li> -->
<!-- 					<li><a href="${basepath }/LCustomer/CService/UserConsultation?pageNow=1"> -->
<!-- 							<span class="menu-ico iconfont icon-coin"></span> <span -->
<!-- 							class="menu-txt">用户咨询</span> <span class="badge badge--warning">32</span> -->
<!-- 					</a> -->
<!-- 					<li><a href="${basepath }/LCustomer/CustomerAndUser/toCusVerifyUser"> -->
<!-- 							<span class="menu-ico iconfont icon-coin"></span> <span -->
<!-- 							class="menu-txt">用户服务</span> <span class="badge badge--warning"></span> -->
<!-- 					</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->

			<div class="glb-main">
				<div class="glb-main-hd">
					<h3 class="main-title">用户服务&nbsp;&gt;&nbsp;用户提现</h3>
					<div class="main-toolbar">
						<a href="#" class="glb-button glb-btn-primary">客服操作</a>
					</div>
					<div class="main-toolbar">
						<a href="#" class="glb-button glb-btn-primary">客服操作</a>
					</div>
				</div>
				<div class="main uc-main">
					<div class="glb-layout">
						<br> <br>
						<h2>卡号:${requestScope.card.number}
							剩余金额:${requestScope.card.balance}</h2>
						<br>
						<div class="glb-col-p60 glb-center">
							<form class="form-body"
								action="${basepath}/LCustomer/CustomerAndUser/userWithdrawals2" id="form"
								method="post">
								<div class="form-item">
									<h5 class="form-label">当前需要提现卡号为:</h5>
									<div class="form-entity">
										<div class="form-field">
											<input class="form-ipt" type="text" name="cardnum" value="${requestScope.card.number}" />&nbsp;&nbsp;
											<span style="color: red;" id="error_cardnum"></span>
										</div>
									</div>
								</div>
								<div class="form-item">
									<h5 class="form-label">请输入要提现的金额:</h5>
									<div class="form-entity">
										<div class="form-field">
											<input class="form-ipt" type="text" name="balance1" value=""
												placeholder="请输入您要提现的金额" />&nbsp;&nbsp; <span
												style="color: red;" id="error_balance1"></span>
										</div>
									</div>
								</div>

								<div class="form-action">
									<a class="glb-button glb-btn-primary"
										href="javascript:check();">
									提交</a>
								</div>
							</form>
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
		<script type="text/javascript">
		function check() {
			var cardnum = $(":input[name=cardnum]");
			var error_cardnum = $("#error_cardnum");
			if (cardnum.val().length != 19) {
				error_password.text("");
				error_cardnum.text("卡号长度不正确（卡号为19位）");
			} else {
				error_cardnum.text("");
				$("#form").submit();
			}
		}
	</script>

</body>
</html>
