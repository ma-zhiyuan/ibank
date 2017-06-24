<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客服主页-用户贷款</title>
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
			<div class="glb-menu">
				<ul class="glb-menu-items">
					<li><a href="#"> <span
							class="menu-ico iconfont icon-members"></span> <span
							class="menu-txt">用户信息</span>
					</a></li>
					<li><a href="#"> <span
							class="menu-ico iconfont icon-advert"></span> <span
							class="menu-txt">银行卡管理</span>
					</a></li>
					<li><a
						href="${basepath }/LCustomer/CService/getQuestion?pageNow=1">
							<span class="menu-ico iconfont icon-3line-y"></span> <span
							class="menu-txt">通知管理</span>
					</a></li>
					<li><a
						href="${basepath }/LCustomer/CService/UserConsultation?pageNow=1">
							<span class="menu-ico iconfont icon-coin"></span> <span
							class="menu-txt">用户咨询</span> <span class="badge badge--warning"></span>
					</a></li>
					<li class="menu-current"><a href="${basepath }"> <span
							class="menu-ico iconfont icon-coin"></span> <span
							class="menu-txt">用户服务</span> <span class="badge badge--warning"></span>
					</a></li>
				</ul>
			</div>

			<div class="glb-main">
				<div class="glb-main-hd">

					<h4 class="main-title">用户服务&nbsp;&gt;&nbsp;用户贷款</h4>
					<div class="main-toolbar">
						<a href="#" class="glb-button glb-btn-primary">客服操作</a>
					</div>
					<div class="main-toolbar">
						<a href="#" class="glb-button glb-btn-primary">客服操作</a>
					</div>
				</div>
				<br> <br>
				<form class="form-horizontal" role="form"
					action="${basepath }/LLoan/Loan/userLoan">
					<%-- <div class="form-group">
							<label for="name" class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="name" value="${sessionScope.user.name }">
							</div>
						</div> --%>
					<div class="form-group">
						<label for="cardid" class="col-sm-2 control-label">银行卡号</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="cardid" name="cardNumber"
								placeholder="请填写银行卡号">
						</div>
					</div>
					<div class="form-group">
						<label for="loan_money" class="col-sm-2 control-label">贷款金额</label>
						<div class="col-sm-6">
							<input type="number" class="form-control" id="loan_money" name="money"
								placeholder="请填写贷款金额">
						</div>
					</div>
					<div class="form-group">
						<label for="loan_year" class="col-sm-2 control-label">贷款年数</label>
						<div class="col-sm-6">
							<!-- <input type="number" class="form-control" id="loan_money" name="duration"
								placeholder="请客户贷款年数"> -->
							<select name="duration">
								<option value="1">1年</option>
								<option value="2">2年</option>
								<option value="3">3年</option>
							</select>
						</div>

					</div>
					<div class="form-group">
						<label for="loan_year" class="col-sm-2 control-label"
							name="duration">贷款年利率</label>
						<div class="col-sm-6">
							<!-- <input type="text" class="form-control" id="loan_money" name="rate"
								placeholder="请输入当前贷款利率"> -->
							<select name="rate">
								<option value="0.0435">1年利率4.35%</option>
								<option value="0.044">2年利率4.40%</option>
								<option value="0.045">3年利率4.50%</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="center-block btn btn-info">提交</button>
						</div>
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
	<link rel="stylesheet"
		href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script
		src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script
		src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		
	</script>
</body>
</html>
