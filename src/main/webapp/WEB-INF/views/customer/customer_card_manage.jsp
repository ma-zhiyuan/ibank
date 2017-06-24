<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客服主页-银行卡管理</title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
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
					<h3 class="main-title">发布信息</h3>
					<div class="main-toolbar">
						<a href="#" class="glb-button glb-btn-primary">发布通知</a>
					</div>
				</div>
				<div class="glb-main-bd">
					<div class="glb-main-content">

						<div class="frame-page">
							<div class="frame-main">
								<div class="frame-main-hd">
									<h3 class="frame-title">银行信息</h3>
									<h6 class="frame-tips glb-text-success">
										<span class="iconfont icon-correct"></span>操作成功
									</h6>
								<div id="container">
								  <div id="top"></div>
								  <div id="leftnav"></div>
								  <div id="content"></div>
								  <div id="footer"></div>
								
								</div>
								<table>
									
									<c:forEach items="${requestScope.banks}" var="b">
										<tr>
											<div class="frame-main-bd">
												<ul class="glb-steps glb-stepbar glb-steps-col4">
													<div class="form-body">
														<div class="glb-col-p50">

															<div class="form-item">
																<h6 class="form-label">:</h6>
																<div class="form-entity">
																	<div class="form-field">
																		<img src="${b.pic }"></img>
																	</div>
																</div>
															</div>

															<div class="form-item">
																<h6 class="form-label">:</h6>
																<div class="form-entity">
																	<div class="form-field">
																		<h4>${b.name }</h4>
																	</div>
																</div>

															</div>
														</div>

														
										</tr>

									</c:forEach>
								</table>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="templates/footer.jsp"%>

</body>
</html>
