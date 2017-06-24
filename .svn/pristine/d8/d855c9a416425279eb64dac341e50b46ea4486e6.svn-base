<%@page import="org.lanqiao.bank.base.util.DateFormatUtil"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath }/resources/imgs/logo.png" />
	<link rel="stylesheet"
		href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script
		src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script
		src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
				<form class="form-horizontal" role="form" id="form" name="form"
					action="${basepath }/LCustomer/UCustomer/loan" method="post" enctype="multipart/form-data">


					<div class="form-group">
						<div class="col-sm-6">
							<input type="hidden" class="form-control" name="id">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<input type="hidden" class="form-control" name="id">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
								id="error0" style="color: #F83232">${requestScope.error }</span>
						</div>
					</div>
							<input type="hidden" class="form-control" id="name" name="userId"
								value="${sessionScope.user.id }">
					<div class="form-group">
						<label for="cardid" class="col-sm-2 control-label">银行卡号</label>
						<div class="col-sm-6">
							<select class="form-control" id="cardId" name="cardId">
								<c:forEach items="${sessionScope.card}" var="card">
									<option value="${card.id}">${card.number }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="loan_money" class="col-sm-2 control-label">贷款金额</label>
						<div class="col-sm-6">
							<input type="number" class="form-control" id="loan_money"
								name="loanMoney" placeholder="请填写贷款金额" value=""> <span
								id="error1" style="color: #F83232"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="loan_year" class="col-sm-2 control-label">贷款年限</label>
						<div class="col-sm-6">
							<input type="number" class="form-control" id="loan_year"
								name="loan_year" value="" placeholder="请输入贷款年限  注：贷款年限单位为年">
								<span
								id="error2" style="color: #F83232"></span>
						</div>
					</div>
					 <!--  <div class="form-group">
						<label for="pay_method" class="col-sm-2 control-label">贷款利率</label>
						<div class="col-sm-6">
							<select class="form-control" id="pay_method" name="rateId">
								<option value="1">1年以内</option>
								<option value="2">1-5年以内</option>
								<option value="3">5年以上</option>
							</select>
						</div>
					</div> -->
					<div class="form-group">
						<label for="pay_method" class="col-sm-2 control-label">还款方式</label>
						<div class="col-sm-6">
							<select class="form-control" id="pay_method" name="repaymentMode">
								<option value="1">等额本息还款</option>
								<option value="2">等额本金还款</option>
							</select>
						</div>
					</div>
					 <!-- <div class="form-group">
						<label for="loan_time" class="col-sm-2 control-label">贷款时间</label>
						<div class="col-sm-6">
							<input type="date" class="form-control" id="loan_time"
								name="createTime" value="">
								<span
								id="error2" style="color: #F83232"></span>
						</div>
					</div> --> 
					<div class="form-group">
						<label for="loan_info" class="col-sm-2 control-label">上传凭证</label>
						<div class="col-sm-6">
							<input type="file" class="form-control" id="loan_info"
								name="proppingMaterial" value="">
								<span
								id="error3" style="color: #F83232"></span>
						</div>
					</div>
					<div class="form-group">
						<!-- <div class="col-sm-offset-2 col-sm-10">
						    <input type="submit"class="center-block btn btn-info" id="submit" value="提交" href="javascript:check();">
							<button type="submit" class="center-block btn btn-info" id="submit">提交</button>
						<div class="form-action"> -->
						<div class="form-action">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        	<a class="glb-button glb-btn-primary" href="javascript:check();">提交</a>
                        </div>
                        </div>
						</div>
					</div>
				</form>




			</div>
		</div>
	</div>
	<%-- <%@include file="templates/footer.jsp"%> --%>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/global.js"></script>
	<script type="text/javascript"
		src="${basepath}/resources/admin/js/validate.js"></script>
	
	<script type="text/javascript">
		
			 /* $(function() {
			$("#loan_money").blur(function() {
				var f = document.form;
				var loan_money = f.loan_money.value;
				if (loan_money == "") {
					document.getElementById("error1").innerHTML = "贷款金额不能为空！";
					f.loan_money.focus();
					return false;
				} else {
					document.getElementById("error1").innerHTML = "";
				
				}
			});
			});  */
			function check(){
			    var loanMoney=$(":input[name=loanMoney]").val();
	    		var loan_year=$(":input[name=loan_year]").val();
	    		var proppingMaterial=$(":input[name=proppingMaterial]").val();
	    		var error1=$("#error1");
	    		var error2=$("#error2");
	    		var error3=$("#error3");
	    		if(loanMoney.length==""){
	    			error1.text("贷款金额不能为空！");
	    		}else if(loanMoney.length<5){
	    			error1.text("贷款金额必须在5位以上！");
	    		}else if(loan_year.length==""){
	    		    error1.text("");
	    		    error2.text("贷款年限不能为空！");
	    		}else if(proppingMaterial.length==""){
	    		    error2.text("");
	    		    error3.text("贷款凭证不能为空！");
	    		}
	    		else{
	    			error3.text("");
		    		$("#form").submit();
	    		}
	    	}
	</script>
</body>
</html>
