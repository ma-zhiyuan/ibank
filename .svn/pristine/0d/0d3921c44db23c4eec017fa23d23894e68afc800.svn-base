<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="top" class="glb-topbar">
    <div class="glb-layout">
        <ul class="glb-left">
            <li>
                <a href="#" target="_blank"><span class="item-ico iconfont icon-home"></span>主页</a>
            </li>
        </ul>
        <ul class="glb-right">
        	<c:if test="${empty customer}">
        		<li>
	                <a href="${basepath}/views/customer/customer_login.jsp">登录</a>
	            </li>
	            <li>
	                <a href="${basepath}/views/customer/cusSevice_register.jsp">注册</a>
	            </li>
        	</c:if>
        	<c:if test="${!empty customer}">
	            <li>
	            	<a href="${basepath}/LCustomer/CService/showMyInfo?no=${customer.no}">${customer.name}</a>
	            </li>
	            <li>
	                <a href="${basepath}/LCustomer/CService/customerExit" id="exit" >退出</a>
	            </li>
            </c:if>
            <li>
                <a href="#">我的蓝桥</a>
            </li>
            <li class="item-stripe">
                <a href="#">意见反馈</a>
            </li>
        </ul>
    </div>
</div>
<div id="header" class="glb-header">
    <div class="glb-layout">
        <div id="logo" class="glb-logo">
            <a href="#">
                <img src="${basepath}/resources/admin/images/logo_w.png" alt="LOGO" />
            </a>
        </div>
    </div>
</div>
