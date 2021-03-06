<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>帮助中心</title>
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

</head>

<body>
	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<div id="logo">
				<img src="${basepath}/resources/user/images/logo.png" alt="蓝桥" />

			</div>
			</div>
		</div>
	<div class="main uc-main">
		<div class="layout">
			<dd>您已进入蓝桥帮助中心</dd>
			
			<dd><hr>蓝桥银行 核心业务
吸引公众存款；发放短期、中期和长期贷款；办理国内结算；办理票据贴现；发行金融
债券；代理发行、代理兑付、承销政府债券；买卖政府债券；从事同业拆借；提供担保；代
理收付款项及代理保险业务；提供保管箱业务；办理地方财政信用周转使用资金的委托存贷
款业务。外汇存款；外汇贷款；外汇汇款；外币兑换；同业外汇拆借；国际结算；结汇、售
汇；外汇票据的承兑和贴现；外汇担保；资信调查、咨询、见证业务；买卖和代理买卖股票
以外的外币有价证券；自营和代客外汇买卖（即期项下）；经中国银行业监督管理委员会批
准的其他业务。吸引公众存款；发放短期、中期和长期贷款；办理国内结算；办理票据贴现；
发行金融债券；代理发行、代理兑付、承销政府债券；买卖政府债券；从事同业拆借；提供
担保；代理收付款项及代理保险业务；提供保管箱业务；办理地方财政信用周转使用资金的
委托存贷款业务。外汇存款；外汇贷款；外汇汇款；外币兑换；同业外汇拆借；国际结算；
结汇、售汇；外汇票据的承兑和贴现；外汇担保；资信调查、咨询、见证业务；买卖和代理
买卖股票以外的外币有价证券；自营和代客外汇买卖（即期项下）；经中国银行业监督管理
委员会批准的其他业务。
  </hr>
  <hr> 文化与价值观
以客户需求为导向，为客户提供更加专业、精心、超值的金融服务，与客户共同成长。
北京银行将继续秉承“为客户创造价值，为股东创造收益，为员工创造未来，为社会创
造财富”的神圣使命，加快实施品牌化经营、区域化布局、综合化发展战略，全力打造信誉
卓著、管理先进、服务领先的具有国际竞争力的现代化商业银行，塑造一流现代商业银行的
优质品牌。</hr></dd>
			<dd>
				<br>温馨提示: <span class="glb-text-em">用户名和密码</span>是您登录系统的唯一凭证,请您牢记!
			</dd>
		</div>
	</div>
	<div id="bottom" class="bottom"></div>
</body>