<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
<head>


<title>管理员更新利率</title>
<%@include file="templates/base_css.jsp"%>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->




<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/list.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/laydate.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/biz/trade.css" />
<script type="text/javascript"
	src="${basepath }/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/list.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/laydate.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		var page = 1; //当前页
		var pageAll = 1; //总页数
		var pageSize = 8; //每页显示条数
		var tag = 0;
		loadData(); //初始加载数据

		function loadData() {
			$.ajax({
				url : "/ibank/LAdmin/Bank/toRenewDepositIntereTtrate",
				type : "get",
				data : {
					"page" : page
				},
				async : false,
				success : function(data) {
					showList(data); //显示数据表格
					showPage(data[data.length - 1].id, page); //显示分页
				}
			});
			tag = 1;
		}
		function showList(rows) {
			var $ul = $("#json-list");
			$ul.empty();
			for (var i = 0; i < pageSize; i++) {
				$ul.append('<tr class="li-tag"></tr>');
			}
			for (var j = 0; j < pageSize; j++) {
				if (j == rows.length - 1) {
					break;
				}
				$(".li-tag").eq(j).append("<td class=" + "td-col-date" + ">" + rows[j].id + "</td>"
					+ "<td class=" + "td-col-type tac" + ">" + rows[j].rate + "</td>"
					+ "<td class=" + "tac" + ">" + rows[j].duration + "</td>"
					+ "<td class=" + "tac" + ">" + rows[j].bankName + "</td>"
					+ "<td class=" + "tac" + "><a href=/ibank/LAdmin/Bank/queryID?id=" + rows[j].id + ">更新</a></td>")
			}
		}
		//分页方法
		function showPage(total, now) {
			var _LENGTH = 5; //最大页数5
			var pageArr = []; //
			//整页
			if (total % pageSize == 0) {
				pageAll = total / pageSize;
			} else { //非整页
				pageAll = (total - total % pageSize) / pageSize + 1;
			}

			//总页数小于5页
			if (pageAll <= _LENGTH) {
				for (var i = 0; i < pageAll; i++) {
					pageArr[i] = i + 1;
				}

			} else { //总页数大于5页
				if (now + 2 <= pageAll && now - 2 > 0) { //当前页没有超过总页数
					for (var i = 0; i < _LENGTH; i++) {
						pageArr[i] = now - 2 + i;
					}
				} else if (now <= 2) {
					pageArr = [ 1, 2, 3, 4, 5 ];
				} else {
					for (var i = 0; i < _LENGTH; i++) {
						pageArr[i] = pageAll - 4 + i;
					}
				}
			}
			//绘制页面
			drawPage(pageArr, now, pageAll);
		}
		//绘制分页dom方法
		function drawPage(pageArr, now, pageAll) {
			var _html = "";
			for (var i = 0; i < pageArr.length; i++) {
				_html += "<li class='zs-page'><a href='javascript:void(0)'>" + pageArr[i] + "</a></li>";
			}
			$(".pagelist").html(_html);

			var index = getIndex(pageArr, now);
			$(".pagelist > a").eq(index).css({
				"background" : "#CCC"
			});

			$(".pagenow").text(now + "/" + pageAll);

		}

		//获取点击当前页坐标
		function getIndex(pageArr, now) {
			var index = 0;
			for (var i = 0; i < pageArr.length; i++) {
				if (pageArr[i] == now) {
					index = i;
				}
			}
			return index;
		}
		//点击分页
		$(".zs-page a").on("click", function() {
			var text = $(this).text(); //获取当前点击页数
			if (text == "上一页") { //如果是点击的上一页
				if (page > 1) {
					page--;
				} else {
					alert("已经是第一页");
				}
			} else if (text == "下一页") { //如果是点击的下一页
				if (page < pageAll) {
					page++;
				} else {
					alert("已经是最后一页");
				}
			} else {
				page = parseInt(text); //将获取的页数转化成数字    
			}
			loadData();
		});
	});
</script>
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
						<span class="iconfont icon-setting"><a
							href="javascript:void(0)" onclick="location.reload()">更新存款利率</a></span>
					</h4>
				</div>
				<div class="frame-msub-hd">
					<h4 class="msub-title">
						<span class="iconfont icon-setting"><a
							href="${basepath }/LAdmin/Bank/toDepositInterestRate">添加存款利率</a></span>
					</h4>
				</div>
				<!-- <div class="frame-msub-bd">
					<ul class="frame-msub-items">
						<li class="msub-current"><span
							class="iconfont icon-parameter"></span>存款利率</a></li>
					</ul>
				</div> -->
			</div>
			<div class="frame-page">
				<div class="frame-main">
					<div class="frame-main-bd">
						<h1 class="frame-title">更新存款利率</h1>
						<ul class="glb-tabs">
							<li class="glb-col-right"><a href="javascript:void(0)"
								onclick="location.reload()" class="glb-button glb-btn-primary">
									<span class="iconfont icon-reviewing"></span> 刷新
							</a></li>
						</ul>
						<table class="glb-tables">
							<thead>
								<tr>
									<th class="tac">序号</th>
									<th class="tac">利率</th>
									<th class="tac">时间</th>
									<th class="tac">银行</th>
									<th class="tac">操作</th>
								</tr>
							</thead>
							<tbody id="json-list">
							</tbody>
						</table>
						<div class="list-page-box">
							<ul id="listCondBd" class="list-page-item">
								<li><span class="pagenow"></span></li>
								<li style="width:60px" class="zs-page"><a
									href="javascript:void(0)" style="width:55px">上一页</a></li>
								<li class="pagelist"></li>
								<li style="width:60px" class="zs-page"><a
									href="javascript:void(0)" style="width:55px">下一页</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<!-- 导入js库模板 -->
<%@include file="templates/base_js.jsp"%>
</html>
