<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客服主页-银行卡操作模块</title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/dialog.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/biz/uc.css">
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath}/resources/imgs/logo.png" />
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath}/resources/imgs/logo.png" />
</head>

<body>

	<%@include file="templates/header.jsp"%>



	<div class="glb-page">
		<div class="glb-layout">
			<%-- <%@include file="templates/lefter.jsp"%> --%>

			<div class="glb-menu">
				<ul class="glb-menu-items">
					<li><a href="#"> <span
							class="menu-ico iconfont icon-members"></span> <span
							class="menu-txt">用户信息</span>
					</a></li>
					<li><a href="${basepath }/LCustomer/CService/list"> <span
							class="menu-ico iconfont icon-advert"></span> <span
							class="menu-txt">银行卡管理</span>
					</a></li>
					<li><a
						href="${basepath }/LCustomer/customer/customerAnnouncement?pageNow=1">
							<span class="menu-ico iconfont icon-3line-y"></span> <span
							class="menu-txt">通知管理</span>
					</a></li>
					<li><a
						href="${basepath }/LCustomer/CService/UserConsultation?pageNow=1">
							<span class="menu-ico iconfont icon-coin"></span> <span
							class="menu-txt">用户咨询</span>
							<div class="notice">${sessionScope.notReplaySize }</div>
					</a></li>
					<li class="menu-current"><a
						href="${basepath}/LCustomer/UrlToView/customerModule"> <span
							class="menu-ico iconfont icon-cmcc"></span> <span
							class="menu-txt">用户服务</span> <span class="badge badge--warning"></span>
					</a></li>
				</ul>
			</div>
			<div class="glb-main">
				<!--                     <div class="glb-main-hd"> -->
				<!--                         <h3 class="main-title">用户信息&nbsp;&gt;&nbsp;用户列表</h3> -->
				<!--                         <div class="main-toolbar"> -->
				<!--                             <a href="#" class="glb-button glb-btn-primary">用户列表</a> -->
				<!--                         </div> -->
				<!--                         <div class="main-toolbar"> -->
				<!--                             <a href="#" class="glb-button glb-btn-primary">用户列表</a> -->
				<!--                         </div> -->
				<!--                     </div> -->
				<div class="glb-main-bd">
					<div class="glb-main-content">
						<!-- 1 -->
						<div class="uc-col-main"
							style="border: 1px solid #909090; width: 300px; margin-left: 16px; margin-top: 10px">
							<div class="uc-ptn-box">
								<h2 style="margin-left: 120px; font-size: 20px">用户存取款</h2>
							</div>
							<div class="uc-acc-box">
								<div class="uc-acc-bd">
									<div class="uc-acc-action clearfix">

										<a id="withdraw"
											href="${basepath}/LCustomer/CustomerAndUser/toCusVerifyUser"
											class="uc-opt-btn uc-trade-btn" style="margin-top: 10px">
											存/取款 </a> <a id="withdraw"
											href="${basepath}/LCustomer/CustomerAndUser/toShowRecords"
											class="uc-opt-btn uc-trade-btn"
											style="margin-top: 10px;width: 130px"> 存取款记录 </a>
										<!-- <a id="withdraw" href="javascript:;"
											class="uc-opt-btn uc-trade-btn" style="margin-top: 10px">
											子标题 </a> -->
									</div>
								</div>
							</div>
						</div>
						<!-- 2 -->
						<div class="uc-col-main"
							style="border: 1px solid #909090; width: 300px; margin-left: 16px; margin-top: 10px">
							<div class="uc-ptn-box">
								<h2 style="margin-left: 120px; font-size: 20px">用户贷款</h2>
							</div>
							<div class="uc-acc-box">
								<div class="uc-acc-bd">
									<div class="uc-acc-action clearfix">
										<a id="withdraw"
											href="${basepath}/LCustomer/BCustomer/userlogin"
											class="uc-opt-btn uc-trade-btn" style="margin-top: 10px">贷款

										</a> <a id="withdraw"
											href="${basepath}/LCustomer/UrlToView/userlogin2"
											<%-- </a> <a id="withdraw" href="${basepath}/LCustomer/CustomerAndUser/toRepayment" --%>
											class="uc-opt-btn uc-trade-btn"
											style="margin-top: 10px"> 还款</a> <a id="withdraw"
											href="${basepath}/LCustomer/UrlToView/customerLookUserLoan"</a><a
											id="withdraw"
											href="${basepath}/LCustomer/UrlToView/customerLookUserLoan"
											class="uc-opt-btn uc-trade-btn"
											style="margin-top: 10px;width: 130px"> 查看贷款信息 </a>
									</div>
								</div>
							</div>
						</div>
						<!-- 3 -->
						<div class="uc-col-main"
							style="border: 1px solid #909090; width: 300px; margin-left: 16px; margin-top: 10px">
							<div class="uc-ptn-box">
								<h2 style="margin-left: 120px; font-size: 20px">信用卡模块</h2>
							</div>
							<div class="uc-acc-box">
								<div class="uc-acc-bd">
									<div class="uc-acc-action clearfix">
										<a id="withdraw" href="${basepath }/LLoan/Loan/toLoan"
											class="uc-opt-btn uc-trade-btn" style="margin-top: 10px">
											贷款 </a>
										<!--  <a id="withdraw" href="javascript:;"
											class="uc-opt-btn uc-trade-btn" style="margin-top: 10px " >
											子模块 </a> -->
									</div>
								</div>
							</div>
						</div>
						<!-- 4 -->
						<div class="uc-col-main"
							style="border: 1px solid #909090; width: 300px; margin-left: 16px; margin-top: 10px">
							<div class="uc-ptn-box">
								<h2 style="margin-left: 120px; font-size: 20px">申请卡</h2>
							</div>
							<div class="uc-acc-box">
								<div class="uc-acc-bd">
									<div class="uc-acc-action clearfix">
										<a id="withdraw"
											href="${basepath }/LCustomer/BCustomer/registCreditCard"
											class="uc-opt-btn uc-trade-btn" style="margin-top: 10px">
											申请信用卡 </a> <a id="withdraw"
											href="${basepath }/LCustomer/BCustomer/userlogin2"
											class="uc-opt-btn uc-trade-btn" style="margin-top: 10px; ">
											添加新卡 </a>

									</div>
								</div>
							</div>
						</div>
						<!--                             <p class="glb-tips glb-tips-info">这是提示文字,<a href="${basepath}/Bank/listAllBank">可以随便写</a></p> -->
						<!--                             <form class="form-body" action="#" id="form"> -->
						<!--                                 <div class="form-item"> -->
						<!--                                     <h6 class="form-label">表单组2 :</h6> -->
						<!--                                     <div class="form-entity"> -->
						<!--                                         <div class="form-field"> -->
						<!--                                             <div class="form-line form-line-sub"> -->
						<!--                                                 <dl class="form-inline glb-selector"> -->
						<!--                                                     <dd class="on"> -->
						<!--                                                         <a class="option" href="javascript:;"> -->
						<!--                                                             <span class="ico-inline iconfont icon-coin"></span>选项00 -->
						<!--                                                         </a> -->
						<!--                                                     </dd> -->
						<!--                                                 </dl> -->
						<!--                                                 <div class="form-inline form-ipt-group"> -->
						<!--                                                     <input class="form-ipt glb-col-w60" type="text" name="userName" value="" placeholder="购买数量"> -->
						<!--                                                     <span class="ipt-addon">件</span> -->
						<!--                                                 </div> -->
						<!--                                                 <div class="form-inline"> -->
						<!--                                                     <p class="form-text form-text-cap">当前剩余<span class="form-text-em">30件</span> -->
						<!--                                                         <a class="form-text-link" href="#">下单</a> -->
						<!--                                                     </p> -->
						<!--                                                 </div> -->
						<!--                                             </div> -->
						<!--                                             <div class="form-line form-line-sub"> -->
						<!--                                                 <dl class="form-inline glb-selector"> -->
						<!--                                                     <dd class="on"> -->
						<!--                                                         <a class="option" href="javascript:;"> -->
						<!--                                                             <span class="ico-inline iconfont icon-account"></span>选项01 -->
						<!--                                                         </a> -->
						<!--                                                     </dd> -->
						<!--                                                 </dl> -->
						<!--                                                 <div class="form-inline form-ipt-group"> -->
						<!--                                                     <input class="form-ipt glb-col-w60" type="text" name="userName" value="" placeholder="购买数量"> -->
						<!--                                                     <span class="ipt-addon">件</span> -->
						<!--                                                 </div> -->
						<!--                                                 <div class="form-inline"> -->
						<!--                                                     <p class="form-text form-text-cap">当前剩余<span class="form-text-em">30件</span> -->
						<!--                                                         <a class="form-text-link" href="#">下单</a> -->
						<!--                                                     </p> -->
						<!--                                                 </div> -->
						<!--                                             </div> -->
						<!--                                             <div class="form-line form-line-sub"> -->
						<!--                                                 <dl class="form-inline glb-selector"> -->
						<!--                                                     <dd class="on"> -->
						<!--                                                         <a class="option" href="javascript:;"> -->
						<!--                                                             <span class="ico-inline iconfont icon-close"></span>选项02 -->
						<!--                                                         </a> -->
						<!--                                                     </dd> -->
						<!--                                                 </dl> -->
						<!--                                                 <div class="form-inline form-ipt-group"> -->
						<!--                                                     <input class="form-ipt glb-col-w60" type="text" name="userName" value="" placeholder="购买数量"> -->
						<!--                                                     <span class="ipt-addon">件</span> -->
						<!--                                                 </div> -->
						<!--                                                 <div class="form-inline"> -->
						<!--                                                     <p class="form-text form-text-cap">当前剩余<span class="form-text-em">30件</span> -->
						<!--                                                         <a class="form-text-link" href="#">下单</a> -->
						<!--                                                     </p> -->
						<!--                                                 </div> -->
						<!--                                             </div> -->
						<!--                                         </div> -->
						<!--                                     </div> -->
						<!--                                 </div> -->
						<!--                                 <div class="form-action"> -->
						<!--                                     <a class="glb-button glb-btn-default" href="reg_seller_c">立即发布信息</a> -->
						<!--                                     <a id="submitBtn" class="glb-button glb-btn-primary" href="add_advert_info.html"> -->
						<!--                                         <span>继续设置详细</span> -->
						<!--                                     </a> -->
						<!--                                 </div> -->
						<!--                             </form> -->
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
	<style>
.notice {
	width: 20px;
	height: 20px;
	line-height: 20px;
	font-size: 10px;
	color: #fff;
	text-align: center;
	background-color: #f00;
	border-radius: 50%;
	position: absolute;
	right: 77%;
	top: 45%;
}
</style>
</body>
</html>

