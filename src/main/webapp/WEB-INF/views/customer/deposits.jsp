<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客服主页-用户存款</title>
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/global.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/glw.css">
<link rel="stylesheet" type="text/css"
	href="${basepath}/resources/admin/css/theme_blue.css">
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/list.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/laydate.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/biz/trade.css" />
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath}/resources/admin/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/global.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/admin/js/validate.js"></script>
<script type="text/javascript"
	src="${basepath}/resources/scripts/md5.js" charset="utf-8"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/list.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/laydate.js"></script>
<script type="text/javascript">
	$(function() {
		var page = 1; //当前页
		var pageAll = 1; //总页数
		var pageSize = 8; //每页显示条数
		var tag = 0;
		loadData(); //初始加载数据

		function loadData() {
			$.ajax({
				url : "/ibank/interest/deposits",
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
					+ "<td class=" + "td-col-type tac" + ">" + rows[j].create_time + "</td>"
					+ "<td class=" + "tac" + ">" + rows[j].money + "</td>"
					+ "<td class=" + "tac" + ">" + rows[j].userName + "</td>"
					+ "<td class=" + "tac" + ">" + rows[j].cardNum + "</td>"
					+ "<td class=" + "tac" + ">" + rows[j].rate + "</td>"
					+ "<td class=" + "tac" + ">" + rows[j].duration + "</td>"
					+ "<td class=" + "tac" + "><a href=/ibank/LCustomer/CustomerAndUser/takeOut?depositid=" + rows[j].id + ">取出</a></td>")
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
	<%@include file="templates/header.jsp"%>
	<div class="glb-page">
		<div class="glb-layout">
			<%@include file="templates/lefter.jsp"%>


			<div class="glb-main">
				<div class="glb-main-hd">
					<h3 class="main-title">用户服务&nbsp;&gt;&nbsp;用户取款&nbsp;&gt;&nbsp;存款记录</h3>
					
				</div>

				<div id="top"></div>
				<div id="header">
					<div class="layout"></div>
				</div>
				<div id="page">
					<div class="main layout">
						<div class="glb-list-box">
							<div class="glb-list-bd">

								<table class="list-main-tbs trade-list-tbs">
									<thead>
										<tr>
											<td class="tac">ID</td>
											<td class="tac">日期</td>
											<td class="tac">金额</td>
											<td class="tac">用户</td>
											<td class="tac">卡号</td>
											<td class="tac">利率(%)</td>
											<td class="tac">时长(天)</td>
											<td class="tac">操作</td>
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
						<div id="bottom" class="bottom"></div>
					</div>
				</div>
			</div>
		</div>
		<%@include file="templates/footer.jsp"%>
</body>
</html>
