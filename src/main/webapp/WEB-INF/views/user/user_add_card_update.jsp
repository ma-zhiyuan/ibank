<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>蓝桥银行 - 我的银行卡修改银行</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<link rel="stylesheet" type="text/css" href="${basepath }/resources/user/css/global.css"/>
		<link rel="stylesheet" type="text/css" href="${basepath }/resources/user/css/form.css"/>
		<link rel="stylesheet" type="text/css" href="${basepath }/resources/user/css/biz/uc.css"/>
		<link rel="stylesheet" type="text/css" href="${basepath }/resources/user/css/dialog.css"/>
        <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"/>  
	    <link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
	    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${basepath }/resources/user/js/jquery.js"></script>
		<script type="text/javascript" src="${basepath }/resources/user/js/global.js"></script>
		<script type="text/javascript" src="${basepath }/resources/user/js/util.js"></script>
		<script type="text/javascript" src="${basepath }/resources/user/js/animation.js"></script>
		<script type="text/javascript" src="${basepath }/resources/user/js/dialog.js"></script>
		<script type="text/javascript">
			$(function() {

				$("#applyNewCard").click(function() {

					Dialogx.show({
						_url: 'dialog_bank.html',
						_title: '请选择要申请的银行',
						_callback: function(dialog) {
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
		<div id="top"> </div>
		<div id="header">
			<div class="layout">
				<div id="logo">
					<a href="uc.html">
						<img src="${basepath }/resources/user/images/logo.png" alt="蓝桥" />
					</a>
				</div>
				
			</div>
		</div>
		<div id="page">
			<div class="main layout">
				<div class="col-menu">
					<ul class="menu-items">
						<li>
							<a class="menu-txt iconfont icon-menu-um" href="my_info.html">用户资料</a>
						</li>
						<li class="last current">
							<a class="menu-txt iconfont icon-menu-pm" href="my_card_list.html">我的银行卡</a>
						</li>
					</ul>
				</div>
				<div class="col-main">
					<div class="main-hd">
						<h3 class="iconfont icon-menu-bm">我的银行卡</h3>
					</div>
					<div class="main-bd">
						<div class="content-hd">
							<p class="tips">
								您当前已申请<span class="em">2</span>张银行卡
								<a id="applyNewCard" href="javascript:;">+申请新银行卡</a>
							</p>
						</div>
						<table class="table">
							<caption>我的银行卡</caption>
							<tbody>
								<tr class="active">
								    <td>银行名称</td>
									<td>${requestScope.bank.name }</td>
								</tr>
								<tr class="success">
								    <td>银行卡号</td>
									<td>${requestScope.number }</td>
								</tr>
								<tr  class="warning">
								    <td>账户余额</td>
									<td>${requestScope.balance2 }</td>
								</tr>
								<tr  class="danger">
								    <td>更新日期</td>
									<td>${requestScope.bank.createTime }</td>
								</tr>
							</tbody>
						</table>
						<div class="content-bd">
							<ul class="card-items">
								<li class="df-show">
									<div class="card-layout card-top">
										<div class="card-col-l">
											<div class="bank " >${requestScope.bank.name}</div>
										</div>
										<p class="card-col-r card-no">${requestScope.number }</p>
									</div>
									<div class="card-layout card-mid">
										<p class="card-col-l card-time">更新日期：${requestScope.bank.createTime }</p>
										<div class="card-col-r">
											<a class="card-opt card-opt-hide" href="delete_card">删除</a>
											<a class="card-opt" href="${basepath}/views/user/user_myInfo.jsp">账户信息</a>
										</div>

									</div>
									<div class="card-layout card-btm clearfix">
										<div class="card-col-l">
											<p> </p>
										</div>
										<div class="card-col-r">
											<p class="card-txt">默认显示</p>
										</div>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="bottom" class="bottom">
		</div>
	</body>

</html>
