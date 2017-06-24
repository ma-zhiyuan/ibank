<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>蓝桥银行 - 账户设置</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/biz/uc.css">
<script type="text/javascript"
	src="${basepath}/resources/user/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/util.js"></script>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/scripts/md5.js"></script>
<script type="text/javascript">
	     
		/* function check() {
		var password = $(":input[name=password]").val(); 
		var password1 = $(":input[name=password1]").val();
		var password2 = $(":input[name=password2]").val();
		var error1 = $("#error1");
		var error2 = $("#error2");
		var error3 = $("#error3");
		if (password.length == "") {
			error1.text("原密码不能为空！");
		} else if (password1.length == "") {
			error1.text(""); 
			error2.text("新密码不能为空！");
		} else if (password2.length== "") {
			error1.text("");
			error2.text("");
			error3.text("确认密码不能为空！");
		} else if(password1!=password2){
		    error1.text("");
			error2.text("");
			error3.text("两次密码输入不一致！请重新输入！");
		}
		else{
		    error3.text("");
			$("#form").submit();
		} 
		
		} */
		$(function(){
		    $("#password").blur(function(){
		   var password = $(":input[name=password]").val();
		   var error1 = $("#error1"); 
		  if(password.length==""){
		     error1.text("原密码不能为空！");
		  }else{
		     error1.text("");
		     var md5pwd = hex_md5(password);
		     $("#password").val(md5pwd);
		   			 }  
		  });
		    $("#password1").blur(function(){
		   var password1 = $(":input[name=password1]").val();
		   var error2 = $("#error2");
		  if(password1.length==""){
		     error2.text("新密码不能为空！");
		  }else{
		     error2.text("");
		     var md5pwd2 = hex_md5(password1);
		     $("#password1").val(md5pwd2);
		       }
					 });
		  $("#password2").blur(function(){
		  var password1= $(":input[name=password1]").val();
		   var password2 = $(":input[name=password2]").val();
		   var error3 = $("#error3");
		  if(password2.length==""){
		     error3.text("确认密码不能为空！");
		  }else{
		     error3.text("");
		      var md5pwd3 = hex_md5(password2);
		     $("#password2").val(md5pwd3);
		     if(password1!=md5pwd3){
		      error3.text("两次密码不一致！重新输入！");
		     }else{
		     error3.text("");
		     $("#form").submit();
		     }
		       }
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
			<div id="nav" class="glb-nav">
				<ul class="clearfix">
					<li class="glb-nav-uc"><a href="uc.html"> <span></span>
					</a></li>
					<li class="glb-nav-trade"><a href="trade_list.html"> <span></span>
					</a></li>
					<li class="glb-nav-setting current"><a href="my_info.html">
							<span></span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="page">
		<div class="main layout">
			<div class="col-menu">
				<ul class="menu-items">
					<li class="current"><a class="menu-txt iconfont icon-menu-um"
						href="my_info.html">用户资料</a></li>
					<li><a class="menu-txt iconfont icon-menu-pm">密码管理</a></li>
					<li><a class="menu-txt iconfont icon-menu-pm"
						href="my_bank_list.html">银行管理</a></li>
					<li class="last"><a class="menu-txt iconfont icon-menu-pm"
						href="${basepath}/views/user/user_all_bank_card.jsp">我的银行卡</a></li>
				</ul>
			</div>
			<div class="col-main">
				<div class="main-hd">
					<h3 class="iconfont icon-menu-bm">修改用户密码</h3>
				</div>
				<form class="form-inline" action="${basepath}/LUser/User/updatePassword"
					method="post" id="form" name="form">
					<input type="hidden" id="id" name="id"
						value="${sessionScope.user.id }">
					<div style="padding-left: 50px;">
						<div class="form-item col-sm-offset-2 col-sm-10">
							<h5>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;原&nbsp;密&nbsp;码: <input
									class="form-control" type="password" id="password"
									name="password" value="" placeholder="请输入原密码" /> <span id="error1"
										style="color: #F83232">${requestScope.error }</span>
							</h5>
						</div>
						<div class="form-item col-sm-offset-2 col-sm-8">
							<h5>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新&nbsp;密&nbsp;码: <input
									class="form-control" type="password" id="password1"
									name="password1" value="" placeholder="请输入新密码" />
									<span id="error2" style="color: #F83232"></span>
							</h5>
						</div>
						<div class="form-item col-sm-offset-2 col-sm-10">
							<h5>
								确认新密码: <input class="form-control" type="password"
									id="password2" name="password2" value=""
									placeholder="请输入确认密码" /> <span id="error3"
										style="color: #F83232"></span>
							</h5>
						</div>
						<div class="form-item col-sm-offset-3 col-sm-3">
							<h5>
								 <!-- <a id="submit" class="center-block btn btn-info"
												href="javascript:check();">提交</a> -->
												<input type="submit" id="submit"  class="center-block btn btn-info" value="提交">
							</h5>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="bottom" class="bottom"></div>
</body>

</html>
