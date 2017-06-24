<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客服主页-回复结果</title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script>"undefined" == typeof CODE_LIVE && (!function(e) {
		var t = {
				nonSecure : "61919",
				secure : "61924"
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
</head>

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-142"
	data-genuitec-path="/ibank/src/main/webapp/views/customer/replayResult.jsp">
	<%@include file="templates/header.jsp"%>
	<div class="glb-page" data-genuitec-lp-enabled="false"
		data-genuitec-file-id="wc1-142"
		data-genuitec-path="/ibank/src/main/webapp/views/customer/replayResult.jsp">
		<div class="glb-layout">
		<%@include file="templates/lefter.jsp" %>
			<%-- <div class="glb-menu">
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
					<li class="menu-current"><a
						href="${basepath }/LCustomer/customer/UserConsultation?pageNow=1">
							<span class="menu-ico iconfont icon-coin"></span> <span
							class="menu-txt">用户咨询</span>
					</a></li>
				</ul>
			</div> --%>

			<div class="glb-main">
				<div class="glb-main-hd">
					<h3 class="main-title">回复咨询</h3>
					<div class="main-toolbar">
						<a
							href="${basepath}/LCustomer/CService/UserConsultation?pageNow=1"
							class="glb-button glb-btn-primary">返回</a>
					</div>
				</div>

				<div class="glb-main-bd">
					<div class="glb-main-content">

						<div id="frameBody" class="frame-body">
							<div class="frame-wrapper">
								<div id="page">
									<div class="glb-alert-box glb-alert-succ">
										<p class="iconfont icon-glb-right"></p>
										<div class="glb-alert-msg">
											<p class="hd">
												${requestScope.msg } <br> <a
													href="${basepath}/LCustomer/CService/UserConsultation?pageNow=1"
													class="glb-button glb-btn-primary">返回</a>
											</p>
										</div>
									</div>
									<div id="bottom" class="bottom"></div>
								</div>
							</div>


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
			    width:20px;
			    height:20px;
			    line-height:20px;
			    font-size:10px;
			    color:#fff;
			    text-align:center;
			    background-color:#f00;
			    border-radius:50%;
			    position:absolute;
			    right:77%;
			    top:45%;
		}
</style>
</body>
</html>
