<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>密码验证</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>蓝桥银行 - 我的银行卡</title>
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
					<h3 class="iconfont icon-menu-bm">密码验证-取款</h3>
				</div>

				<form class="form-bd" action="${basepath}/LUser/card_user/toUserWithdrawals"
					 id="form" method="post">


					<div class="form-item">
						<h4 class="form-label">密码验证:</h4>
						<div class="form-entity">
							<div class="form-field">
								<input type="hidden" name="cardId"
									value="${requestScope.cardId}"> <input class="ipt"
									type="password" id="card_password" name="card_password"
									placeholder="请输入密码" />
									<span
									style="color: red;" id="error_password"></span>
							</div>
						</div>
					</div>
					<div class="form-action clearfix">
						<a href="javascript:check();" id="submit"
							class="glb-btn submit-btn"> <span>验证</span>
						</a>
					</div>
				</form>
			</div>
		</div>
		<!-- 结束 -->
	</div>
	</div>
	<div id="bottom" class="bottom"></div>
	 <script type="text/javascript" src="${basepath}/resources/admin/js/jquery.min.js"></script>
	    <script type="text/javascript" src="${basepath}/resources/admin/js/global.js"></script>
	    <script type="text/javascript" src="${basepath}/resources/admin/js/validate.js"></script>
	    <script type="text/javascript" src="${basepath}/resources/scripts/md5.js" charset="utf-8"></script>
	    <script type="text/javascript">
	    	function check(){
	    		var password=$(":input[name=card_password]");
	    		var error_password=$("#error_password");
	    		if(password.val().length==""){
	    			error_name.text("");
	    			error_password.text("密码不能为空");
	    		}else{
	    			error_password.text("");
	    			password.val(hex_md5(password.val()));
	    			$("#form").submit();
	    		}
	    	}
	    </script>
</body>

</html>
