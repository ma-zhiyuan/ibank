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
<title>用户咨询列表</title>
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
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
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
<!-- <script type="text/javascript">
$(function(){
	$(".post").on("click",function(event){
    event.preventDefault();//使a自带的方法失效，即无法调整到href中的URL(http://www.baidu.com)
    $.ajax({
           type: "POST",
           url: "${basepath}/LUser/User/login",
           contentType:"application/json",
           data: JSON.stringify({phone:${user.phone},password:${user.password}}),//参数列表
           dataType:"json",
           success: function(result){
           alert(data);
              window.location.href = "${basepath}/LUser/User/login?phone=${user.phone}&password=${user.password}";
           },
           error: function(result){
           alert(data);
             return false;
           }
    });
});
});
</script>	 -->
</head>

<body>
	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<div id="logo">
				<a href="uc.html"> <img src="${basepath}/resources/user/images/logo.png"
					alt="蓝桥" />
				</a>
			</div>
			<div id="nav" class="glb-nav">
				<ul class="clearfix">
				<li class="glb-nav-uc current"><a href="uc.html"
						style="color: black;text-decoration: none;font-size: 16px;"> <span>我的主页</span>
					</a></li>
					<li class="glb-nav-trade"><a href="User/showAUserAllCard"
						style="color: black;text-decoration: none;font-size: 16px;"> <span>我的卡库</span>
					</a></li>
					<li class="glb-nav-setting"><a href="${basepath}/LUser/Announcement/getAllAnnouncement?pageNow=1"
						style="color: black;text-decoration: none;font-size: 16px;"> <span>蓝桥通知</span>
					</a></li>
					<li class="glb-nav-setting"><a
						href="${basepath}/LUser/User_Consultation/getConsultation?id=${user.id}&pageNow=1"
						style="color: black;text-decoration: none;font-size: 16px;"> <span>咨询</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="main uc-main">
		<div class="layout">
			<div class="uc-main-box clearfix">
				<div class="uc-trade-hd">
					<h3 class="title">
						<span></span>用户咨询列表
					</h3>
					<ul class="col-opts col-opts-main">
						<li><a href="JavaScript:history.back(-1)">返回上一页</a></li>
					</ul>
					<ul class="col-opts col-opts-main">
						<li><a href="${basepath}/LUser/User_Consultation/skipUserToConnment?id=${user.id}">新建咨询</a></li>
					</ul>
					<table class="uc-trade-list">
						<thead>
							<tr>
								</td>
								<th class="tac">序号</th>
								<th class="tac">用户名</th>
								<th class="tac">咨询内容</th>
								<th class="tac">咨询时间</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody id="tbody">
						<tbody>
							<c:forEach items="${requestScope.uc }" var="u">
								<tr>
									<td>${u.id}</td>
									<td>${u.user.name}</td>
									<td>${u.comment}</td>
									<td>${u.consultationtime}</td>
									<td width="200px"><a href="${basepath}/LUser/User_Consultation/getCustomerReplay?id=${u.user.id}">查看回复</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="uc-trade-bd clearfix">

				</div>
			</div>
			<div class="more2">
				<dl>
					<c:if test="${empty user.id }">
					<a href="${basepath}/LUser/User_Consultation/getConsultation?pageNow=1"><img
						src="${basepath}/resources/user/images/more1.jpg" /></a>
						</c:if>
					<c:if test="${requestScope.pager.hasPrePage }">
						<a
							href="${basepath}/LUser/User_Consultation/getConsultation?pageNow=
						${requestScope.pager.currentPage-1}&id=${user.id}"><img
							src="${basepath}/resources/user/images/more2.jpg" /></a>
					</c:if>
					

					<span>共${pager.totalPages }页</span>&nbsp;&nbsp;
					<span>第${pager.currentPage }页</span>

					<c:if test="${requestScope.pager.hasNextPage}">
						<a
							href="${basepath}/LUser/User_Consultation/getConsultation?pageNow=
						${pager.currentPage+1}&id=${user.id}"><img
							src="${basepath}/resources/user/images/more3.jpg" /></a>
					</c:if>
					<c:if test="${empty user.id }">
					<a
						href="${basepath}/LUser/User_Consultation/getConsultation?pageNow=${pager.totalPages}"><img
						src="${basepath}/resources/user/images/more4.jpg" /></a>
						</c:if>
				</dl>
			</div>
		</div>

		<div id="bottom" class="bottom"></div>
</body>

</html>