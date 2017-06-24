<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

<head>
<meta charset="utf-8" />
<title>蓝桥银行-银行卡管理</title>
<%@include file="templates/base_css.jsp" %>
<%@include file="templates/base_js.jsp" %>
</head>
<body>
	<%@include file="templates/header.jsp" %>
	<%@include file="templates/left_navigation.jsp" %>
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
					<dd class="frame-menu-sub frame-menu-active">
						<a href="#">
							<div class="menu-icon iconfont icon-members"></div>
							<p class="menu-text">用户</p>
						</a>
					</dd>
					<dd class="frame-menu-sub">
						<a href="#">
							<div class="menu-icon iconfont icon-shop"></div>
							<p class="menu-text">企业</p>
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
			<div class="frame-page">
				<div class="frame-main">
					<div class="frame-main-hd">
						<h3 class="frame-title">银行卡列表</h3>
						<h6 class="frame-tips glb-text-success">
							<span class="iconfont icon-correct"></span>操作成功
						</h6>
					</div>
					<div class="frame-main-bd">
						 		 <form:form action="updateCard" modelAttribute="card" >
									 <input  type="hidden" value="${requestScope.card.id}" name="id"/> 
						 			卡号:<form:input path="number"/></br></br>
						 			余额:<form:input path="balance" /></br></br>
						 			银行id:<form:input path="bankId" /></br></br>
						 			用户id:<form:input path="userId" /></br></br>
						 <input type="submit" value="修改" style="font-size: 20px;"/>						 
						 		 </form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="${basepath}/resources/admin/js/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${basepath}/resources/admin/js/global.js" charset="utf-8"></script>
<script type="text/javascript" src="${basepath}/resources/admin/js/dialog.js" charset="utf-8"></script>
<script type="text/javascript" src="${basepath}/resources/admin/js/validate.js" charset="utf-8"></script>
<script type="text/javascript" src="${basepath}/resources/admin/js/gla.js" charset="utf-8"></script>
<script type="text/javascript">
	$(function() {

		$("#showDialogBtn").click(function() {

			Dialogx.show({
				_url : 'dialog.html',
				_title : '请输入充值金额'
			});

		});

		$("#alertBtn").click(function() {

			Dialogx.confirm('这是一个提示框', function() {
				console.log("woqu");
			});

		});

		// VALIDATE
		$("#demoForm").validate(rules);
	});

	// form validate rule
	var rules = {
		"name-a" : {
			tip : "name-a的提示信息",
			rule : {
				required : [ "请输入name-a!" ],
				length : [ "name-a长度为4-20位", "4-20" ]
			}
		},

		"name-b" : {
			tip : "请输入name-b!",
			rule : {
				required : [ "请输入name-b!" ],
				length : [ "name-b至少为两个汉字!", "2-20" ]
			}
		},

		"name-c" : {
			tip : "请输入name-c",
			rule : {
				required : [ "请输入name-c!" ],
				regex : [ "请输入正确的name-c!", "tel,mobile" ]
			}
		}
	};
</script>

</html>