<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 
	用户提现界面：创建者：魏航
			 创建时间：2017年5月21日
 -->
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>用户信用卡提现</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/dialog.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/biz/uc.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/css/bootstrap.min.css"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/animation.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/dialog.js"></script>
<script type="text/javascript">
	$(function() {

		$("#applyNewCard").click(function() {

			Dialogx.show({
				_url : 'dialog_bank.html',
				_title : '请选择要申请的银行',
				_callback : function(dialog) {
					$(".bank-card-x").click(function() {
						dialog.closeDialog();
					});
				}
			});
		});

	});
</script>
</head>
<body>
	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<div id="logo">
				<a href="uc.html"> <img
					src="${basepath}/resources/user/images/logo.png" alt="蓝桥" />
				</a>
			</div>
		</div>
	</div>
	<div id="page">
		<div class="main layout">
			<div class="col-menu">
				<ul class="menu-items">
					<li><a class="menu-txt iconfont icon-menu-um"
						href="my_info.html">会员资料</a></li>
					<li><a class="menu-txt iconfont icon-menu-pm"
						href="edit_password.html">密码管理</a></li>
					<li><a class="menu-txt iconfont icon-menu-pm"
						href="my_bank_list.html">银行管理</a></li>
					<li class="last current"><a
						class="menu-txt iconfont icon-menu-pm"
						href="User/showAUserAllCard">我的银行卡</a></li>
				</ul>
			</div>
			<!-- 开始 -->
			<div class="col-main">
				<div class="main-hd">
					<h3 class="iconfont icon-menu-bm">用户提现</h3>
				</div>

				<form class="form-bd" action="${basepath}/LUser/card_user/userWithdrawals"
					 id="form" method="post">


					<div class="form-item">
						<h4 class="form-label">请输入取款金额:</h4>
						<div class="form-entity">
							<div class="form-field">
								<input type="hidden" name="cardId"
									value="${requestScope.card.id}">
							    <input class="ipt"
									type="text" id="balance" name="balance" placeholder="请输入取款金额" />
									<span
									style="color: red;" id="error_balance"></span>
							</div>
						</div>
					</div>
					<div class="form-action clearfix">
						<a href="javascript:check();" id="submit"
							class="glb-btn submit-btn"> <span>提交</span>
						</a>
					</div>
				</form>
			</div>
		</div>
		<!-- 结束 -->
	</div>
	</div>
	<div id="bottom" class="bottom"></div>
	<script type="text/javascript">
	    	function check(){
	    		var balance=$(":input[name=balance]");
	    		var error_balance=$("#error_balance");
	    		if(balance.val()<0){
	    			error_balance.text("输入不能小于0");
	    		}else{
	    			error_balance.text("");
	    			$("#form").submit();
	    		}
	    	}
	    </script>
</body>

</html>
