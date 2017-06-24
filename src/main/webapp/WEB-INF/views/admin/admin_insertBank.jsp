<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>管理员增加银行卡</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta charset="utf-8" />
<title></title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/gla.css" />
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/admin/js/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/global.js" charset="utf-8"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/dialog.js" charset="utf-8"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/validate.js" charset="utf-8"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/gla.js" charset="utf-8"></script>
<script type="text/javascript">
	function isEmpty() {
		//form1是form中的name属性   
		var name = document.getElementById("name").value;
		if (name.trim() == "") {
			alert("银行名称不能为空!");
			return false;
		}
		return false;
	}
</script>

</head>

<body>
	<%@include file="templates/header.jsp" %>
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
							<p class="menu-text">银行</p>
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
								class="iconfont icon-liuliang"></span>增加银行卡</a></li>
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
						<h3 class="frame-title">增加银行卡</h3>
						<h6 class="frame-tips glb-text-success">
							<span class="iconfont icon-correct"></span>操作成功
						</h6>
					</div>
					<div class="frame-main-bd">
						<div class="form-body">
							<form name="insertBank" id="demoForm"
								action="${basepath}/LAdmin/Bank/addBank" method="post"
								enctype='multipart/form-data'>
								<div class="glb-col-p50">
									<div class="form-item">
										<h6 class="form-label">请输入银行名称:</h6>
										<div class="form-entity">
											<div class="form-field">
												<input class="form-ipt" id="name" type="text" name="name"
													placeholder="请输入银行卡名称" />
											</div>
											<br>
										</div>
									</div>
									<div class="form-item">
										<h6 class="form-label">请输入银行logo:</h6>
										<div class="form-entity">
											<div class="form-field">
												<input id="name" type="file" name="logo" />
											</div>
											<br>
										</div>
									</div>
									<div class="form-action clearfix">
										<input onclick="isEmpty()" type="submit"
											class="glb-button glb-btn-primary" value="提交" />
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
