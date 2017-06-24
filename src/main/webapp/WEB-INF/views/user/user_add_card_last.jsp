<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>蓝桥银行 - 我的银行卡</title>
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
		<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
		<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
							<a class="menu-txt iconfont icon-menu-um" href="${basepath }/LUser/User/myinfo?id=${sessionScope.user.id}">用户资料</a>
						</li>
						<li class="last current">
							<a class="menu-txt iconfont icon-menu-pm" href="my_card_list.html">我的银行卡</a>
						</li>
					</ul>
				</div>
				<div class="col-main">
					<div class="main-hd">
						<h3 class="iconfont icon-menu-bm ">我的银行卡</h3>
					</div>
						<table class="table">
							<tbody>
								<tr class="active" >
								    <td>银行名称</td>
									<td>蓝桥银行</td>
								</tr>
								<tr  class="success" >
								    <td>银行卡号</td>
									<td>${sessionScope.cardnumber }</td>
								</tr>
								<tr class="warning" >
								    <td>账户余额</td>
									<td>${sessionScope.balance2+0.0 }</td>
								</tr>
								<tr  class="danger" >
								    <td>注册日期</td>
									<td>${sessionScope.date }</td>
								</tr>
								<tr class="info" >
								    <td>用户邮箱</td>
									<td>${sessionScope.user.email }</td>
								</tr>
								
								
							</tbody>
							
						</table>
						
					<button type="button" class="center-block btn btn-success"
							style="width:150px"><a href="${basepath }/index.jsp">点击返回到主页</a></button>
						
					</div>
				</div>
			</div>
		</div>
		<div id="bottom" class="bottom">
		</div>
	</body>

</html>
