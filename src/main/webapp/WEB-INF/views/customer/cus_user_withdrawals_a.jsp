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
			<%@include file="templates/lefter.jsp"%>
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
			<!-- 							class="menu-txt">用户咨询</span> <span class="badge badge--warning"></span> -->
			<!-- 					</a></li> -->
			<!-- 					<li class="menu-current"><a href="${basepath }"> <span -->
			<!-- 							class="menu-ico iconfont icon-coin"></span> <span -->
			<!-- 							class="menu-txt">用户服务</span> <span class="badge badge--warning"></span> -->
			<!-- 					</a></li> -->
			<!-- 				</ul> -->
			<!-- 			</div> -->

			<div class="glb-main">
				<div class="glb-main-hd">
					<h3 class="main-title">用户服务&nbsp;&gt;&nbsp;用户提现</h3>
					
				</div>

				<form class="form-body"
					action="${basepath}/LCustomer/CustomerAndUser/userWithdrawals"
					id="form" method="post">
					<div class="form-item">
						<h5 class="form-label">银行卡号:</h5>
						<div class="form-entity">
							<div class="form-field">
								<input id="cardnum" class="form-ipt" type="text" name="cardnum"
									value="" placeholder="请输入银行卡号" />&nbsp;&nbsp; <span
									style="color: red;" id="error_cardnum">${errorInfo}</span>
							</div>
						</div>
					</div>
					<div class="form-item">
						<h5 class="form-label">银行卡密码:</h5>
						<div class="form-entity">
							<div class="form-field">
								<input class="form-ipt" type="password" name="password" value=""
									placeholder="请输入银行卡密码" />&nbsp;&nbsp; <span
									style="color: red;" id="error_password"></span>
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
			var password = $(":input[name=password]").val();
			var cardnum = $(":input[name=cardnum]");
			var error_password = $("#error_password");
			var error_cardnum = $("#error_cardnum");
			if (password.length == "") {
				error_password.text("密码不能为空");
			} else if (cardnum.val().length != 19) {
				error_password.text("");
				error_cardnum.text("卡号长度不正确（卡号为19位）");
			} else {
				error_cardnum.text("");
				$(":input[name=password]").val(hex_md5(password));
				$("#form").submit();
			}
		}
	</script>
</body>
</html>
