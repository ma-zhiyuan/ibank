
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<!-- 导入css库模板 -->
<%@include file="templates/base_css.jsp"%>

<head>
<meta charset="utf-8" />
<title>总额管理</title>
  	<link rel="stylesheet" type="text/css" href="${basepath}/resources/admin/css/global.css">
    <link rel="stylesheet" type="text/css" href="${basepath}/resources/admin/css/glw.css">
    <link rel="stylesheet" type="text/css" href="${basepath}/resources/admin/css/theme_blue.css">
	<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
</head>
<body>
	<!-- 导入公用模板 -->
	<%@include file="templates/header.jsp"%>
	<div id="frameBody" class="frame-body">
		<!-- 导入左侧导航 -->
		<%@include file="templates/left_navigation.jsp"%>
		<div class="frame-wrapper">
			<div class="frame-msub" id="frameMsub">

				<div class="frame-msub-hd">
					<h4 class="msub-title">
						<span class="iconfont icon-setting"></span>总额管理
					</h4>
				</div>
				<div class="frame-msub-bd">
					<ul class="frame-msub-items">
						<li><a href="#"><span class="iconfont icon-liuliang">余额列表</span></a>
						</li>
						<li class="msub-current"><a
							href="${basepath }/LAdmin/transfer/getPageTransfer?pageNow=1"><span
								class="iconfont icon-parameter"></span>余额管理</a></li>
						<li><a href="#"><span class="iconfont icon-payitem"></span>。。。</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="frame-page">
				<div class="frame-main">

					<div class="frame-main-bd">
						<h1 class="frame-title">余额管理</h1>
						<ul class="glb-tabs">
							<li class="glb-col-right"><a href="showAllMoney"
								class="glb-button glb-btn-default"> <span
									class="iconfont icon-shop"></span> 刷新
							</a>  </li>
						</ul>
						 
						 
						 
						  <div id="header" class="glb-header">
            <div class="glb-layout">
                <div id="logo" class="glb-logo">
                    <a href="#">
                        <img src="images/logo_w.png" alt="LOGO" />
                    </a>
                </div>
            </div>
        </div>
        <div class="glb-page">
            <div class="glb-layout">
                <div class="glb-section">
                    <div class="glb-col-main">
                        <div class="glb-col-p65">
                            <div class="glb-col-box glb-col-em">
                                <a href="#" class="glb-portrait glb-left">
                                    <img src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3791354460,1562873960&fm=58" alt="" />
                                </a>
                                <div class="glb-info glb-left">
                                    <div class="glb-info-hd">
                                        <h3 class="glb-info-title">下午好, <span class="glb-text">蓝桥公司</span></h3>
                                    </div>
                                    <div class="glb-info-bd">
                                        <ul class="glb-info-items">
                                            <li>
                                                <span class="info-label">会员等级:</span>
                                                <span class="info-text">
                                            		<em class="glb-badge-s">L3</em>
                                            	</span>
                                                <span class="info-text glb-text-info">可享受XXXX优惠</span>
                                                <span class="info-text"><a href="#">查看优惠</a></span>

                                            </li>
                                            <li>
                                                <span class="info-label">上次登录:</span>
                                                <span class="info-text">2016-10-23 13:56:39 吉林省长春市</span>
                                            </li>
                                            <li>
                                                <span class="info-label">可用金币:</span>
                                                <span class="info-text glb-text-em">3000</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="glb-col-p35">
                            <div class="glb-col-box">
                                <div class="glb-col-hd">
                                    <h3 class="col-title">全部金额</h3>
                                </div>
                                <div class="glb-col-bd">
                                    <ul class="glb-embed-left">
                                        <li>
                                            <h6 class="embed-hd">金额</h6>
                                            <h2 class="embed-bd">${requestScope.allMoney }<span class="glb-text-unit">元</span></h2>
                                        </li>
                                    </ul>
                                </div>
                                <ul class="glb-col-ft glb-col-left">
                                    <li>
                                        <a href="#" class="glb-button glb-btn-primary">立即修改</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="glb-section">
                    <div class="glb-col-main">
                    </div>
                    <div class="glb-col-side">
                        <a class="glb-advert" href="#">
                            <img src="https://img.alicdn.com/imgextra/i2/161610322361538397/TB2pJ9Jc9iJ.eBjSspoXXcpMFXa_!!0-saturn_solar.jpg_240x240.jpg_.webp" alt="" />
                        </a>
                    </div>
                </div>
            </div>
        </div>
						 
						 
						 
						 
						 
						 
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<!-- 导入js库模板 -->
<%@include file="templates/base_js.jsp"%>
 <script type="text/javascript" src="${basepath}/resources/admin/js/jquery.min.js"></script>
    <script type="text/javascript" src="${basepath}/resources/admin/js/global.js"></script>
    <script type="text/javascript" src="${basepath}/resources/admin/js/validate.js"></script>

</html>