<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>蓝桥通知</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/dialog.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/biz/uc.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/user/css/style.css" />
<link rel="shortcut icon" type="image/x-icon"
	href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/user/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/animation.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/dialog.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/putaojiayuan.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/user/js/tab.js"></script>
<SCRIPT src="${basepath}/resources/user/js/jquery.min.js"
	type=text/javascript></SCRIPT>
<SCRIPT type=text/javascript>
	var _c = _h = 0;
	$(document).ready(function() {
		$('#play  li').click(function() {
			var i = $(this).attr('alt') - 1;
			clearInterval(_h);
			_c = i;
			//play();
			change(i);
		})
		$("#pic img").hover(function() {
			clearInterval(_h)
		}, function() {
			play()
		});
		play();
	})
	function play() {
		_h = setInterval("auto()", 8000);

	}
	function change(i) {
		$('#play li').css('background-color', '#000000').eq(i).css('background-color', '#FF3000').blur();
		$("#pic img").fadeOut('slow').eq(i).fadeIn('slow');
	}
	function auto() {
		_c = _c > 6 ? 0 : _c + 1;

		change(_c);
	}
</SCRIPT>
<style type="text/css">
.img_switch {
	margin: 0 auto;
	WIDTH: 1000px;
	HEIGHT: 261px;
	overflow: hidden
}

.img_switch_content {
	HEIGHT: 261px;
	position: relative;
}

.img_switch_text {
	width: 262px;
	position: absolute;
	z-index: 10;
	bottom: 5px;
	left: 10px;
	HEIGHT: 15px;
	z-index: 10000 !important
}

.number_nav {
	DISPLAY: inline;
	FLOAT: left;
}

.number_nav UL {
	font: 12px Arial, Helvetica, sans-serif;
	padding: 0px;
	MARGIN: 0px;
	LIST-STYLE-TYPE: none;
	color: #fff;
}

.number_nav UL LI {
	float: left;
	font-weight: bold;
	background: #000;
	float: left;
	margin-right: 8px;
	width: 23px;
	cursor: pointer;
	line-height: 17px;
	height: 17px;
	text-align: center;
	filter: alpha(opacity = 75);
	-moz-opacity: 0.75;
	opacity: 0.75;
}

#pic {
	OVERFLOW: hidden
}
</style>
</head>

<body>
	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<div id="logo">
				<a href="uc.html"> <img
					src="${basepath}/resources/admin/images/logo_w.png" alt="蓝桥" />
				</a>
			</div>
			<div id="nav" class="glb-nav">
				<ul class="clearfix">
					<li class="glb-nav-uc current"><a
						href="${basepath }/LCustomer/customer/customerAnnouncement?pageNow=1"
						style="color: black;text-decoration: none;font-size: 16px;"> <span>最新通知</span>
					</a></li>
					<li class="glb-nav-trade"><a
						href="${basepath }/LCustomer/customer/toInsertForm"
						style="color: black;text-decoration: none;font-size: 16px;"> <span>新增通知</span>
					</a></li>
					<li class="glb-nav-setting"><a href=""
						style="color: black;text-decoration: none;font-size: 16px;"> <span>业务通知</span>
					</a></li>
					<li class="glb-nav-setting"><a href=""
						style="color: black;text-decoration: none;font-size: 16px;"> <span>紧急通知</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="content">
		<div class="main">

			<DIV class="img_switch">
				<DIV class="img_switch_content" id="pic">
					<c:if test="${not empty list}">
						<c:forEach items="${sessionScope.list}" var="announcement">
							<c:set var="index" value="${index}" />
							<a href=""><IMG width="1000px" height="261px"
								src="${basepath }/upload/announcement/${announcement.picture}"></a>
						</c:forEach>
					</c:if>
					<%-- <a href=""><IMG
						src="${basepath}/resources/user/images/banner3.jpg"></a> <a
						href=""><IMG
						src="${basepath}/resources/user/images/banner4.jpg"></a> <a
						href=""><IMG
						src="${basepath}/resources/user/images/banner3.jpg"></a> <a
						href=""><IMG
						src="${basepath}/resources/user/images/banner4.jpg"></a> <a
						href=""><IMG
						src="${basepath}/resources/user/images/banner3.jpg"></a> <a
						href=""><IMG
						src="${basepath}/resources/user/images/banner4.jpg"></a> <a
						href=""><IMG
						src="${basepath}/resources/user/images/banner3.jpg"></a> <a
						href=""><IMG
						src="${basepath}/resources/user/images/banner4.jpg"></a> --%>
					<DIV class="img_switch_text">
						<DIV class="number_nav">
							<UL id="play">
								<LI alt="1" style="background:#f00;">1</LI>
								<LI alt="2">2</LI>
								<LI alt="3">3</LI>
								<LI alt="4">4</LI>
								<LI alt="5">5</LI>
								<LI alt="6">6</LI>
								<LI alt="7">7</LI>
								<LI alt="8">8</LI>
							</UL>
						</DIV>
					</DIV>
				</DIV>
			</DIV>
			<dl class="list">
			</dl>
			<div class="more2">
				<dl>${announcement.title }
				</dl>
				<dl>${announcement.content }
				</dl>
				<dl>
					<img alt=""
						src="${basepath }/upload/announcement/${announcement.picture }"
						class="img-responsive" height="500px">
				</dl>
				<dl>
					<%-- ${announcement.createTime } --%>
					${date }
				</dl>
			</div>
		</div>
	</div>
	<div id="bottom" class="bottom"></div>
</body>
</html>