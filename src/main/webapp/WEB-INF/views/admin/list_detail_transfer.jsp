<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

<head>
<meta charset="utf-8" />
<title>管理员查询用户转账明细</title>
<!-- 导入css库模板 -->
<%@include file="templates/base_css.jsp"%>
</head>

<body>
	<!-- 导入公用模板 -->
	<%@include file="templates/header.jsp"%>
	<div id="frameBody" class="frame-body">
		<!-- 导入左侧导航 -->
		<%@include file="templates/left_navigation.jsp"%>
		<div class="frame-wrapper">
			<div class="frame-page">
				<div class="frame-main">
					<div class="frame-main-bd">
						<h1 class="frame-title">单笔转账详细信息</h1>
						<table class="glb-tables">
							<thead>
								<tr>
									<th>
										<ul>
											<li><div align="center">
													转账卡号信息
													<div /></li>
											<ul>
												<li>卡号:${fromCard.number }</li>
											</ul>
											<ul>
												<li>所属银行:蓝桥银行</li>
											</ul>
											<ul>
												<li>持卡人姓名:${fromUser.name }</li>
											</ul>
											<ul>
												<li>持卡人联系方式:${fromUser.phone }</li>
											</ul>
									</th>
								</tr>
								<tr>
									<th>
										<ul>
											<li><div align="center">
													转入卡号信息
													<div /></li>
											<ul>
												<li>卡号:${toCard.number }</li>
											</ul>
											<ul>
												<li>所属银行:蓝桥银行</li>
											</ul>
											<ul>
												<li>持卡人姓名:${toUser.name }</li>
											</ul>
											<ul>
												<li>持卡人联系方式:${toUser.phone }</li>
											</ul>
									</th>
								</tr>
								<tr>
									<th>交易金额:${transfer.money }</th>
								</tr>
								<tr>
									<th>备注消息:${transfer.message }</th>
								</tr>
								<tr>
									<th>交易时间:<fmt:formatDate value="${transfer.createTime }"
											type="both" /></th>
								</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<!-- 导入js库模板 -->
<%@include file="templates/base_js.jsp"%>


</html>