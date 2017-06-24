<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<title>管理员修改用户密码</title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/biz/uc.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="/ibank/resources/admin/js/jquery.min.js"></script>
	<script type="text/javascript" src="${basepath}/resources/scripts/md5.js" charset="utf-8"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/util.js"></script>
<link rel="stylesheet" type="text/css"
	href="/ibank/resources/admin/css/gla.css" />
<script>"undefined" == typeof CODE_LIVE && (!function(e) {
		var t = {
				nonSecure : "55229",
				secure : "55234"
			},
			c = {
				nonSecure : "http://",
				secure : "https://"
			},
			r = {
				nonSecure : "127.0.0.1",
				secure : "gapdebug.local.genuitec.com"
			},
			n = "https:" === window.location.protocol ? "secure" : "nonSecure";
		script = e.createElement("script"), script.type = "text/javascript", script.async = !0, script.src = c[n] + r[n] + ":" + t[n] + "/codelive-assets/bundle.js", e.getElementsByTagName("head")[0].appendChild(script)
	}(document), CODE_LIVE = !0);
</script>
<script type="text/javascript">
	$(function(){
	    $("#pwd1").blur(function(){
	    var pwd1 = $("#pwd1").val();
	    var md5p1 = hex_md5(pwd1);
	    $("#pwd1").val(md5p1);
	    }); 
	     $("#pwd2").blur(function(){
	     var pwd2 = $("#pwd2").val();
	    var md5p2 = hex_md5(pwd2);
	    $("#pwd2").val(md5p2);
	    });
		$("#subm").click(function(){
		var pwd1 = $("#pwd1").val();
		var pwd2 = $("#pwd2").val();
		if(pwd1==""||pwd1.length<5||pwd2==""||pwd2.length<5){
			$("#error1").text("密码必须大于5位");
			return false;
		}else if(pwd1!=pwd2){
			$("#error2").text("两次密码不一致")
			return false;
		}else{
		    $("#error1").text("");
			$("#error2").text("");
		}
	});
	
	/* 
		$("#pwd2").blur(function(){
		var pwd1 = $("#pwd1").val();
		var pwd2 = $("#pwd2").val();
		
		var md5p2 = hex_md5(pwd2);
		
		alert(pwd2)
		alert(pwd1==md5p2)
		alert(md5p2)
		if(pwd1=""||pwd1.length<5){
			$("#error1").text("密码必须大于5位");
		} else if(pwd1!=md5p2){
			$("#error2").text("两次密码不一致")
		}else{
			$("#error2").text("");
		}
		$("#pwd2").val(md5p2);

	});
	 */
	});
		 function check(){
              if(flag){
              	  /* $("#password").val(hex_md5($("#password").val())); */
                  return true;
            }else{
                  return false;
        	}	
		}	
</script>
</head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-91"
	data-genuitec-path="/ibank/src/main/webapp/views/admin/admin_user_password.jsp">
	<div id="frameHeader" class="frame-head"
		data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-91"
		data-genuitec-path="/ibank/src/main/webapp/views/admin/admin_user_password.jsp">
		<div class="frame-logo">
			<a class="frame-logo-main" href="#"> <img
				src="${basepath }/resources/user/images/logo_s.png" alt="蓝桥" />
			</a>
			<p class="frame-logo-sub">蓝桥</p>
		</div>
		<div class="frame-topbar glb-topbar"></div>
	</div>
	<div id="frameBody" class="frame-body">
		<div class="frame-menu">
			<a id="toggleMenuBtn"
				class="frame-menu-console iconfont icon-3line-x" href="javascript:;"></a>
			<div class="frame-menu-wrapper">
				<dl class="frame-menu-item">
					<dt class="frame-menu-mod">
						<a href="javascript:;">
							<div class="menu-icon iconfont icon-caret"></div>
							<p class="menu-text">通用设置</p>
						</a>
					</dt>
					<dd class="frame-menu-sub">
						<a href="#">
							<div class="menu-icon iconfont icon-members"></div>
							<p class="menu-text">用户</p>
						</a>
					</dd>
					<dd class="frame-menu-sub frame-menu-active">
						<a href="#">
							<div class="menu-icon iconfont icon-shop"></div>
							<p class="menu-text">蓝桥银行</p>
						</a>
					</dd>
					<dd class="frame-menu-sub">
						<a href="#">
							<div class="menu-icon iconfont icon-reviewing"></div>
							<p class="menu-text">商家</p>
						</a>
					</dd>
					<dd class="frame-menu-sub">
						<a href="#">
							<div class="menu-icon iconfont icon-members"></div>
							<p class="menu-text">信息</p>
						</a>
					</dd>
					<dd class="frame-menu-sub">
						<a href="#">
							<div class="menu-icon iconfont icon-3line-x"></div>
							<p class="menu-text">用户组</p>
						</a>
					</dd>
					<dd class="frame-menu-sub">
						<a href="#">
							<div class="menu-icon iconfont icon-3line-x"></div>
							<p class="menu-text">财务</p>
						</a>
					</dd>
				</dl>
				<dl class="frame-menu-item">
					<dt class="frame-menu-mod">
						<a href="javascript:;">
							<div class="menu-icon iconfont icon-caret"></div>
							<p class="menu-text">信用卡</p>
						</a>
					</dt>
					<dd class="frame-menu-sub">
						<a href="#">
							<div class="menu-icon iconfont icon-members"></div>
							<p class="menu-text">分期</p>
						</a>
					</dd>
					<dd class="frame-menu-sub">
						<a href="#">
							<div class="menu-icon iconfont icon-reviewing"></div>
							<p class="menu-text">账单</p>
						</a>
					</dd>
					<dd class="frame-menu-sub">
						<a href="#">
							<div class="menu-icon iconfont icon-3line-x"></div>
							<p class="menu-text">授权</p>
						</a>
					</dd>
				</dl>
			</div>
		</div>
		<div class="frame-wrapper">
			<div class="frame-msub" id="frameMsub">
				<div class="frame-msub-hd">
					<h4 class="msub-title">
						<span class="iconfont icon-setting"></span>商户管理
					</h4>
				</div>
				<div class="frame-msub-bd">
					<ul class="frame-msub-items">
						<li><a href="#"><span class="iconfont icon-parameter"></span>商家列表</a>
						</li>
						<li class="msub-current"><a href="#"><span
								class="iconfont icon-liuliang"></span>商家表</a></li>
						<li><a href="#"><span class="iconfont icon-payitem"></span>商家列表列表列表</a>
						</li>
						<li><a href="#"><span class="iconfont icon-account"></span>商家列表(11)</a>
						</li>
						<li><a href="#"><span class="iconfont icon-advert"></span>水电费是否收到</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="frame-page">
				<div class="frame-main">
					<div class="frame-main-hd">
						<h3 class="frame-title">管理员修改用户密码</h3>
					</div>
					<div class="frame-main-bd">
						<ul class="glb-steps glb-stepbar glb-steps-col4">
							<div class="col-main">
								<div class="main-bd">
									<div class="content-bd">
										<form class="form-bd"
											action="${basepath }/LAdmin/Admin/updateUserPassword"
											id="demoForm" method="post" onsubmit="return check()">
											<div class="form-item">
												<h4 class="form-label">新密码:</h4>
												<div class="form-entity">
													<div class="form-field">
														<input class="ipt" type="password" id="pwd1"
															name="pwd1" value="" placeholder="请输入新密码" /> <label
															id="error1"></label>
													</div>
												</div>
											</div>
											<div class="form-item">
												<h4 class="form-label">确认新密码:</h4>
												<div class="form-entity">
													<div class="form-field">
														<input class="ipt" type="password" id="pwd2"
															name="pwd2" value="" placeholder="请输入确认密码" /> <label
															id="error2"></label>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="form-action clearfix">

									<a id="submitBtn" class="glb-button glb-btn-primary"
										href="${basepath }/views/admin/userlist.jsp">
										<span>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;取消&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
										<a href="javascript:document:demoForm.submit();" id="subm" class="glb-btn login-btn">
							<span>确认</span>
						</a>
								</div>
							</div>
						</ul>
					</div>
				</div>
			</div>
</body>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/global.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/dialog.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/validate.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/gla.js"
	charset="utf-8"></script>

</html>