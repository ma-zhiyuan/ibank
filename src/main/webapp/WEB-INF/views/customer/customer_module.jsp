<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>�ͷ���ҳ-���п�����ģ��</title>
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
							class="menu-txt">�û���Ϣ</span>
					</a></li>
					<li><a href="${basepath }/LCustomer/CService/list"> <span
							class="menu-ico iconfont icon-advert"></span> <span
							class="menu-txt">���п�����</span>
					</a></li>
					<li><a
						href="${basepath }/LCustomer/customer/customerAnnouncement?pageNow=1">
							<span class="menu-ico iconfont icon-3line-y"></span> <span
							class="menu-txt">֪ͨ����</span>
					</a></li>
					<li><a
						href="${basepath }/LCustomer/CService/UserConsultation?pageNow=1">
							<span class="menu-ico iconfont icon-coin"></span> <span
							class="menu-txt">�û���ѯ</span>
							<div class="notice">${sessionScope.notReplaySize }</div>
					</a></li>
					<li class="menu-current"><a
						href="${basepath}/LCustomer/UrlToView/customerModule"> <span
							class="menu-ico iconfont icon-cmcc"></span> <span
							class="menu-txt">�û�����</span> <span class="badge badge--warning"></span>
					</a></li>
				</ul>
			</div>
			<div class="glb-main">
				<!--                     <div class="glb-main-hd"> -->
				<!--                         <h3 class="main-title">�û���Ϣ&nbsp;&gt;&nbsp;�û��б�</h3> -->
				<!--                         <div class="main-toolbar"> -->
				<!--                             <a href="#" class="glb-button glb-btn-primary">�û��б�</a> -->
				<!--                         </div> -->
				<!--                         <div class="main-toolbar"> -->
				<!--                             <a href="#" class="glb-button glb-btn-primary">�û��б�</a> -->
				<!--                         </div> -->
				<!--                     </div> -->
				<div class="glb-main-bd">
					<div class="glb-main-content">
						<!-- 1 -->
						<div class="uc-col-main"
							style="border: 1px solid #909090; width: 300px; margin-left: 16px; margin-top: 10px">
							<div class="uc-ptn-box">
								<h2 style="margin-left: 120px; font-size: 20px">�û���ȡ��</h2>
							</div>
							<div class="uc-acc-box">
								<div class="uc-acc-bd">
									<div class="uc-acc-action clearfix">

										<a id="withdraw"
											href="${basepath}/LCustomer/CustomerAndUser/toCusVerifyUser"
											class="uc-opt-btn uc-trade-btn" style="margin-top: 10px">
											��/ȡ�� </a> <a id="withdraw"
											href="${basepath}/LCustomer/CustomerAndUser/toShowRecords"
											class="uc-opt-btn uc-trade-btn"
											style="margin-top: 10px;width: 130px"> ��ȡ���¼ </a>
										<!-- <a id="withdraw" href="javascript:;"
											class="uc-opt-btn uc-trade-btn" style="margin-top: 10px">
											�ӱ��� </a> -->
									</div>
								</div>
							</div>
						</div>
						<!-- 2 -->
						<div class="uc-col-main"
							style="border: 1px solid #909090; width: 300px; margin-left: 16px; margin-top: 10px">
							<div class="uc-ptn-box">
								<h2 style="margin-left: 120px; font-size: 20px">�û�����</h2>
							</div>
							<div class="uc-acc-box">
								<div class="uc-acc-bd">
									<div class="uc-acc-action clearfix">
										<a id="withdraw"
											href="${basepath}/LCustomer/BCustomer/userlogin"
											class="uc-opt-btn uc-trade-btn" style="margin-top: 10px">����

										</a> <a id="withdraw"
											href="${basepath}/LCustomer/UrlToView/userlogin2"
											<%-- </a> <a id="withdraw" href="${basepath}/LCustomer/CustomerAndUser/toRepayment" --%>
											class="uc-opt-btn uc-trade-btn"
											style="margin-top: 10px"> ����</a> <a id="withdraw"
											href="${basepath}/LCustomer/UrlToView/customerLookUserLoan"</a><a
											id="withdraw"
											href="${basepath}/LCustomer/UrlToView/customerLookUserLoan"
											class="uc-opt-btn uc-trade-btn"
											style="margin-top: 10px;width: 130px"> �鿴������Ϣ </a>
									</div>
								</div>
							</div>
						</div>
						<!-- 3 -->
						<div class="uc-col-main"
							style="border: 1px solid #909090; width: 300px; margin-left: 16px; margin-top: 10px">
							<div class="uc-ptn-box">
								<h2 style="margin-left: 120px; font-size: 20px">���ÿ�ģ��</h2>
							</div>
							<div class="uc-acc-box">
								<div class="uc-acc-bd">
									<div class="uc-acc-action clearfix">
										<a id="withdraw" href="${basepath }/LLoan/Loan/toLoan"
											class="uc-opt-btn uc-trade-btn" style="margin-top: 10px">
											���� </a>
										<!--  <a id="withdraw" href="javascript:;"
											class="uc-opt-btn uc-trade-btn" style="margin-top: 10px " >
											��ģ�� </a> -->
									</div>
								</div>
							</div>
						</div>
						<!-- 4 -->
						<div class="uc-col-main"
							style="border: 1px solid #909090; width: 300px; margin-left: 16px; margin-top: 10px">
							<div class="uc-ptn-box">
								<h2 style="margin-left: 120px; font-size: 20px">���뿨</h2>
							</div>
							<div class="uc-acc-box">
								<div class="uc-acc-bd">
									<div class="uc-acc-action clearfix">
										<a id="withdraw"
											href="${basepath }/LCustomer/BCustomer/registCreditCard"
											class="uc-opt-btn uc-trade-btn" style="margin-top: 10px">
											�������ÿ� </a> <a id="withdraw"
											href="${basepath }/LCustomer/BCustomer/userlogin2"
											class="uc-opt-btn uc-trade-btn" style="margin-top: 10px; ">
											�����¿� </a>

									</div>
								</div>
							</div>
						</div>
						<!--                             <p class="glb-tips glb-tips-info">������ʾ����,<a href="${basepath}/Bank/listAllBank">�������д</a></p> -->
						<!--                             <form class="form-body" action="#" id="form"> -->
						<!--                                 <div class="form-item"> -->
						<!--                                     <h6 class="form-label">������2 :</h6> -->
						<!--                                     <div class="form-entity"> -->
						<!--                                         <div class="form-field"> -->
						<!--                                             <div class="form-line form-line-sub"> -->
						<!--                                                 <dl class="form-inline glb-selector"> -->
						<!--                                                     <dd class="on"> -->
						<!--                                                         <a class="option" href="javascript:;"> -->
						<!--                                                             <span class="ico-inline iconfont icon-coin"></span>ѡ��00 -->
						<!--                                                         </a> -->
						<!--                                                     </dd> -->
						<!--                                                 </dl> -->
						<!--                                                 <div class="form-inline form-ipt-group"> -->
						<!--                                                     <input class="form-ipt glb-col-w60" type="text" name="userName" value="" placeholder="��������"> -->
						<!--                                                     <span class="ipt-addon">��</span> -->
						<!--                                                 </div> -->
						<!--                                                 <div class="form-inline"> -->
						<!--                                                     <p class="form-text form-text-cap">��ǰʣ��<span class="form-text-em">30��</span> -->
						<!--                                                         <a class="form-text-link" href="#">�µ�</a> -->
						<!--                                                     </p> -->
						<!--                                                 </div> -->
						<!--                                             </div> -->
						<!--                                             <div class="form-line form-line-sub"> -->
						<!--                                                 <dl class="form-inline glb-selector"> -->
						<!--                                                     <dd class="on"> -->
						<!--                                                         <a class="option" href="javascript:;"> -->
						<!--                                                             <span class="ico-inline iconfont icon-account"></span>ѡ��01 -->
						<!--                                                         </a> -->
						<!--                                                     </dd> -->
						<!--                                                 </dl> -->
						<!--                                                 <div class="form-inline form-ipt-group"> -->
						<!--                                                     <input class="form-ipt glb-col-w60" type="text" name="userName" value="" placeholder="��������"> -->
						<!--                                                     <span class="ipt-addon">��</span> -->
						<!--                                                 </div> -->
						<!--                                                 <div class="form-inline"> -->
						<!--                                                     <p class="form-text form-text-cap">��ǰʣ��<span class="form-text-em">30��</span> -->
						<!--                                                         <a class="form-text-link" href="#">�µ�</a> -->
						<!--                                                     </p> -->
						<!--                                                 </div> -->
						<!--                                             </div> -->
						<!--                                             <div class="form-line form-line-sub"> -->
						<!--                                                 <dl class="form-inline glb-selector"> -->
						<!--                                                     <dd class="on"> -->
						<!--                                                         <a class="option" href="javascript:;"> -->
						<!--                                                             <span class="ico-inline iconfont icon-close"></span>ѡ��02 -->
						<!--                                                         </a> -->
						<!--                                                     </dd> -->
						<!--                                                 </dl> -->
						<!--                                                 <div class="form-inline form-ipt-group"> -->
						<!--                                                     <input class="form-ipt glb-col-w60" type="text" name="userName" value="" placeholder="��������"> -->
						<!--                                                     <span class="ipt-addon">��</span> -->
						<!--                                                 </div> -->
						<!--                                                 <div class="form-inline"> -->
						<!--                                                     <p class="form-text form-text-cap">��ǰʣ��<span class="form-text-em">30��</span> -->
						<!--                                                         <a class="form-text-link" href="#">�µ�</a> -->
						<!--                                                     </p> -->
						<!--                                                 </div> -->
						<!--                                             </div> -->
						<!--                                         </div> -->
						<!--                                     </div> -->
						<!--                                 </div> -->
						<!--                                 <div class="form-action"> -->
						<!--                                     <a class="glb-button glb-btn-default" href="reg_seller_c">����������Ϣ</a> -->
						<!--                                     <a id="submitBtn" class="glb-button glb-btn-primary" href="add_advert_info.html"> -->
						<!--                                         <span>����������ϸ</span> -->
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
