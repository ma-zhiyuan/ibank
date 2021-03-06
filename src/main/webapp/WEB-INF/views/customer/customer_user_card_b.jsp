<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 
	创建者：王泽华
		创建时间：2017年5月7日
	客服查询用户银行卡信息，查询用户所有的银行卡
	
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客服主页-用户填写用户名和密码用来查询用户的银行卡</title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/admin/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/validate.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/scripts/jquery-3.1.1.min.js"></script>


<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/list.css">


<script type="text/javascript">

	$(function() {});
</script>


</head>
<body>
	<%@include file="templates/header.jsp"%>
	<div class="glb-page">
		<div class="glb-layout">
			<div class="glb-menu">
				<ul class="glb-menu-items">
					<li><a href="#"> <span
							class="menu-ico iconfont icon-advert"></span> <span
							class="menu-txt">信息管理</span>
					</a></li>
					<li class="menu-current"><a href="#"> <span
							class="menu-ico iconfont icon-money"></span> <span
							class="menu-txt">交易管理</span>
					</a></li>
					<li><a href="#"> <span
							class="menu-ico iconfont icon-account"></span> <span
							class="menu-txt">会员资料</span>
					</a></li>
					<li><a href="#"> <span
							class="menu-ico iconfont icon-account"></span> <span
							class="menu-txt">会员资料</span>
					</a></li>
					<li><a href="#"> <span
							class="menu-ico iconfont icon-account"></span> <span
							class="menu-txt">会员资料</span>
					</a></li>
				</ul>
			</div>





			<div class="glb-main">

				<div class="glb-main-hd">
					<h3 class="main-title">用户所有银行卡如下信息</h3>
				</div>
				<div class="glb-main-bd">
					<div class="glb-main-content">
						<p class="glb-tips glb-tips-success">
							<span class="iconfont icon-info"></span>${sessionScope.user.name}有以下银行卡
						</p>
						<div class="glb-col-p60 glb-center">

							<c:if test="${empty sessionScope.cards}">
								<div>该用户没有任何银行卡</div>
							</c:if>
							<table>
								<c:forEach items="${sessionScope.cards}" var="card">
									<tr>
										<td>
											<div>卡号：${card.number}</div>
										</td>
										<td>
											<div>
												<a href="${basepath}/LCustomer/CustomerCar/cardDetail?id=${card.id}">
													<img src="${basepath}/resources/user/images/logo.png">
												</a>
											</div>
										</td>

									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="templates/footer.jsp"%>
</body>
</html>
