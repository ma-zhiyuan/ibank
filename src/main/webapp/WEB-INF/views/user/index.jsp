<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			
%>
<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的蓝桥银行</title>
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
	var data = "";
	var data2 = "";
	$.ajax({
		url: "/ibank/LUser/transfer_user/transferSelect",
		data: {},
		type: "GET",
		async: false,
		success: function(myData){
			data = myData;
		}
	})
	$.ajax({
		url:"/ibank/LUser/User/getUserBanks",
		data:{},
		type:"GET",
		async: false,
		success: function(myData){
			data2=myData;
		
		}
	})
	
	$(function() {
		var totalCount = data.length;
			var $ul = $("#tbody");
			$ul.empty();
			var size=6;
			if(totalCount==0){$("#tbody").append("<lable>没有查到交易！</lable>");
			return ;
			}
			if(totalCount>6){
			size=6;
			}else{
			size=totalCount;
			}
			for (var j = 0; j < size; j++) {
				$("#tbody").append("<tr><td>" + data[j].createTime + "</td>"
								+ "<td>转账</td>"
								+ "<td>" + data[j].fromname + "</td>"
								+ "<td>" + data[j].money+ "</td>" 
								+ "<td>交易成功</td>"
								+ "</tr>")
			}
			var cnumber = data2[0].number;
			var balance=data2[0].balance;
			$(".ptn-cid").html(cnumber);
			$(".money").html(balance);
		// 充值
		$("#deposit").click(function() {

			Dialogx.show({
				_url : '/ibank/LUser/UrlToView/dialogAmount',
				_title : '请输入充值金额'
			});
		});

		// 提现
		$("#withdraw").click(function() {

			Dialogx.show({
				_url : '/ibank/LUser/UrlToView/dialogAmount',
				_title : '请输入提现金额'
			});
		});

		// 转账
		$("#transfer").click(function() {

			Dialogx.show({
				_url : '/ibank/LUser/UrlToView/dialogTransfer',
				_title : '请输入转账信息'
			});
		});

		// 切换银行卡
		$("#switchCard").click(function() {

			Dialogx.show({
				_url : '/ibank/LUser/UrlToView/dialogBank',
				_title : '请选择要切换的银行卡',
				_callback : function(dialog) {
					var xcard=$(".card-x");
					$(".card-items li").click(function(){
						var ps = $(this).find("p");
						var as = $(this).find("a");
						var card = $(ps[0]);
						var cid = $(as[0]);
						var money = $(ps[1])
						$(".ptn-cid").html(card.html());
						$(".money").html(money.html());
						$("#cid").html(cid.html());
						dialog.closeDialog();
					})
				}
			});
		});
	});
	
	function details(basepath){
		var cid = $("#cid").text();
		window.location.href=basepath+"/LUser/transfer_card/CardtransferSelect?pageNow=1&cardid="+cid;
		
	}
</script>

</head>

<body>
	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<div id="logo">
				<a href="${basepath}/LUser/User/returnMain">
					<img src="${basepath}/resources/user/images/logo.png" alt="蓝桥" />
	 			</a>
			</div>
			<div id="nav" class="glb-nav">
				<ul class="clearfix">
					<li class="glb-nav-uc current"><a href="uc.html"
						style="color: black;text-decoration: none;font-size: 16px;"> <span>我的主页</span>
					</a></li>
					<li class="glb-nav-trade"><a href="${basepath}/LUser/User/showAUserAllCard"
						style="color: black;text-decoration: none;font-size: 16px;"> <span>我的卡库</span>
					</a></li>
					<li class="glb-nav-setting"><a href="${basepath}/LUser/Announcement/getAllAnnouncement?pageNow=1"
						style="color: black;text-decoration: none;font-size: 16px;"> <span>蓝桥通知</span>
					</a></li>
					<li class="glb-nav-setting"><a href="${basepath}/LUser/User_Consultation/toUserConsultationList"
						style="color: black;text-decoration: none;font-size: 16px;"> <span>用户咨询</span>
					</a></li>
					<li class="glb-nav-setting"><a href="${basepath}/LUser/enterpriseRegist/"
						style="color: black;text-decoration: none;font-size: 16px;"> <span>企业</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="main uc-main">
		<div class="layout">
			<div class="uc-main-box clearfix">
				<div class="uc-col-main">
					<div class="uc-ptn-box">
						<a style="DISPLAY:none" id="cid">1</a>
						<span class="iconfont icon-partner"></span>卡号:<span class="ptn-cid">666</span>
						 <a id="switchCard" href="javascript:;" class="ptn-switch">切换银行卡</a>
					</div>
					<div class="uc-acc-box">
						<div class="uc-acc-bd">
							<div class="uc-acc-ht">
								<h3 class="title">账户余额</h3>
								
							</div>
							<div class="uc-acc-main">
								<p class="item-amount">
									<span class="money">135698.02</span> 元
								</p>
								<a href="javascript:details('${basepath}');" class="item-link">查看明细</a>
							</div>
							<div class="uc-acc-action clearfix">
								<a id="deposit" href="javascript:;"
									class="uc-opt-btn uc-trade-btn"> <span
									class="iconfont icon-btn-deposit"></span> 充 值
								</a> <a id="withdraw" href="javascript:;"
									class="uc-opt-btn uc-trade-btn"> <span
									class="iconfont icon-btn-withdraw"></span> 提 现
								</a> <a id="transfer" href="javascript:;"
									class="uc-opt-btn uc-opt-last uc-trade-btn"> <span
									class="iconfont icon-btn-payment"></span> 转 账
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="uc-col-side uc-col-card">
					<div class="side-hd">
						<h3>银行卡</h3>
					</div>
					<div class="side-bd">
						<ul class="uc-col-items">
							<li><span class="iconfont icon-menu-bm"></span> <span
								class="item-txt">已申请银行卡:</span> <span class="item-act"><a
									href="${basepath}/LUser/User/showAUserAllCard">${requestScope.cardNum}</a>张</span>
							</li>
							<!-- <li><span class="iconfont icon-company"></span> <span
								class="item-txt">已申请对接银行:</span> <span class="item-act"><a
									href="my_bank_list.html">4</a>个</span></li> -->
						</ul>
						<div class="uc-col-entity clearfix">
							<div class="uc-entity-cl">
								<p>
									系统默认显示的银行为蓝桥银行，不可更改！
								</p>
							</div>
							<div class="uc-entity-cr">
								<a id="applyNewCard" href="${basepath}/LUser/UrlToView/userAddCardFirst"
									class="uc-opt-btn uc-card-btn">申请银行卡</a>
							</div>
						</div>
					</div>
				</div>
				<div class="uc-col-side">
					<div class="side-hd">
						<h3>
							Welcome to Lanqiao Bank！<br> <a href="${basepath}/LUser/User/myinfo" style="font-weight: bold;font-size: 18px;">${sessionScope.user.name} </a>（点击查看个人信息）
						</h3>
					</div>
					<div class="side-bd">
						 
						<div class="uc-col-entity">
							 文化与价值观 以客户需求为导向，为客户提供更加专业、精心、超值的金融服务，与客户共同成长。 
						</div>
					</div>
				</div>
			</div>
			<div class="uc-trade-box">
				<div class="uc-trade-hd">
					<h3 class="title">
						<span class="iconfont icon-trade-list"></span> 最新交易
					</h3>
				
					<ul class="col-opts col-opts-side">
						<li class="nb"><a href="${basepath }/LUser/UrlToView/toview?view=user/transfer/trade_list">查看所有交易</a></li>
					</ul>
				</div>
				<div class="uc-trade-bd clearfix">
					<table class="uc-trade-list">
					<thead>
							<tr>
								<th>交易日期</th>
								<th class="tac">类型</th>
								<th class="tac">发起方</th>
								<th class="tac">金额(元)</th>
								<th>状态</th>
							</tr>
						</thead>
						<tbody id="tbody">

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div id="bottom" class="bottom"></div>
</body>

</html>