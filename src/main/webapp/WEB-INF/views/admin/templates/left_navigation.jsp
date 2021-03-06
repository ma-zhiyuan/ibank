<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="frame-menu">
	<a id="toggleMenuBtn" class="frame-menu-console iconfont icon-3line-x"
		href="javascript:;"></a>
	<div class="frame-menu-wrapper">
		<dl class="frame-menu-item">
			<dt class="frame-menu-mod">
				<a href="javascript:;">
					<div class="menu-icon iconfont icon-caret"></div>
					<p class="menu-text">信息管理</p>
				</a>
			</dt>
			<dd class="frame-menu-sub">
				<a href="${basepath}/LUser/User/returnMain" target="_bank">
					<div class="menu-icon iconfont icon-home"></div>
					<p class="menu-text">首页</p>
				</a>
			</dd>
			<dd class="frame-menu-sub">
				<a href="${basepath}/LAdmin/Admin/showAdmin?id=${sessionScope.admin.id }">
					<div class="menu-icon iconfont icon-account"></div>
					<p class="menu-text">信息</p>
				</a>
			</dd>
			<dd class="frame-menu-sub">
				<a href="${basepath}/LAdmin/Admin/signOut">
					<div class="menu-icon iconfont icon-form-await"></div>
					<p class="menu-text">退出</p>
				</a>
			</dd>
		</dl>
		<dl class="frame-menu-item">
			<dt class="frame-menu-mod">
				<a href="javascript:;">
					<div class="menu-icon iconfont icon-caret"></div>
					<p class="menu-text">外部管理</p>
				</a>
			</dt>
			<dd class="frame-menu-sub">
				<a href="${basepath}/LAdmin/Admin/selectAll?pageNow=1">
					<div class="menu-icon iconfont icon-members"></div>
					<p class="menu-text">用户</p>
				</a>
			</dd>
			<dd class="frame-menu-sub">
				<a href="${basepath}/LCustomer/CService/selectAllCusService?pageNow=1">
					<div class="menu-icon iconfont icon-data"></div>
					<p class="menu-text">客服</p>
				</a>
			</dd>
			<dd class="frame-menu-sub">
				<a  href="${basepath }/LAdmin/transfer/getPageTransfer?pageNow=1">
					<div class="menu-icon iconfont icon-reviewing"></div>
					<p class="menu-text">转账管理</p>
				</a>
			</dd>
			<dd class="frame-menu-sub">
				<a  href="${basepath }/LAdmin/card/list">
					<div class="menu-icon iconfont icon-3line-y"></div>
					<p class="menu-text">查询管理</p>
				</a>
			</dd>
			
			<dd class="frame-menu-sub">
				<a
					href="${basepath}/LAdmin/AdminAnnounController/showPageAnnouncement?pageNow=1">
					<div class="menu-icon iconfont icon-3line-y"></div>
					<p class="menu-text">通知</p>
				</a>
			</dd>
		</dl>
		<dl class="frame-menu-item">
			<dt class="frame-menu-mod">
				<a href="javascript:;">
					<div class="menu-icon iconfont icon-caret"></div>
					<p class="menu-text">内部管理</p>
				</a>
			</dt>
			
			<dd class="frame-menu-sub">
				<a href="${basepath }/LAdmin/rate/selectByRateId?id=1">
					<div class="menu-icon iconfont icon-setting"></div>
					<p class="menu-text">贷款利率</p>
				</a>
			</dd>
			
			
			<dd class="frame-menu-sub">
				<a href="${basepath }/LAdmin/Bank/toBankInterestRate">
					<div class="menu-icon iconfont icon-setting"></div>
					<p class="menu-text">存款利率</p>
				</a>
			</dd>
<!-- 			<dd class="frame-menu-sub"> -->
<!-- 				<a href="#"> -->
<!-- 					<div class="menu-icon iconfont icon-reviewing"></div> -->
<!-- 					<p class="menu-text">财务</p> -->
<!-- 				</a> -->
<!-- 			</dd> -->
<!-- 			<dd class="frame-menu-sub"> -->
<!-- 				<a href="${basepath}/LAdmin/Admin/showAllMoney"> -->
<!-- 					<div class="menu-icon iconfont icon-3line-x"></div> -->
<!-- 					<p class="menu-text">数据</p> -->
<!-- 				</a> -->
<!-- 			</dd> -->
		</dl>
	</div>
</div>
