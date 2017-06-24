<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>客服-查看-用户贷款信息</title>
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
              $("#name").blur(function() {
				var f = document.form;
				var name = f.name.value;
				if (name == "") {
					document.getElementById("error1").innerHTML = "姓名不能为空！";
					f.name.focus();
					return false;
				}else {
					document.getElementById("error1").innerHTML = "";
				}
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
							<a class="menu-txt iconfont icon-menu-pm" href="my_card_list.html">用户贷款信息</a>
						</li>
					</ul>
				</div>
				<div class="col-main">
					<div class="main-hd">
						<h3 class="iconfont icon-menu-bm ">用户贷款信息</h3>
					</div>
						<form action="${basepath}/LCustomer/BCustomer/checkUser" method="post" id="form" name="form">
						 <div>
						  请输入用户名：<input type="text" name="name" id="name"> 
						  <input type="submit" id="submit" value="确认" class=" btn btn-info"><br>
						  <span id="error1" style="color: #F83232">${requestScope.error1 }</span>
						 </div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div id="bottom" class="bottom">
		</div>
	</body>

</html>
