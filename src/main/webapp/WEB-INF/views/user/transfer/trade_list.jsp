<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html >
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>蓝桥银行 - 交易记录</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/global.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/list.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/laydate.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath }/resources/user/css/biz/trade.css" />
<link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
<script type="text/javascript"
	src="${basepath }/resources/user/js/jquery.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/global.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/util.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/list.js"></script>
<script type="text/javascript"
	src="${basepath }/resources/user/js/laydate.js"></script>
<script type="text/javascript">
		function getJSONData(pn) {
// 			alert(pn);  
			$.getJSON("/ibank/LUser/transfer_user/gettransferSelect",
					function(data) {
						var totalCount = data.length; 
						var pageSize = 6;
						var pageTotal = Math.ceil(totalCount / pageSize);
						var startPage = pageSize * (pn - 1);
						var endPage = startPage + pageSize - 1;
						var $ul = $("#json-list");
						$ul.empty();
						for (var i = 0; i < pageSize; i++) {
							$ul.append('<tr class="li-tag"></tr>');
						}
						if (pageTotal == 1) { // 当只有一页时  
							for (var j = 0; j < totalCount; j++) {
								$(".li-tag").eq(j).append("<td class="+"td-col-date"+">"+data[j].createTime+"</td>"
								+"<td class="+"td-col-type tac"+">转账</td>"
								+"<td class="+"tac"+">"+data[j].fromname+"</td>"
								+"<td class="+"tac"+">"+data[j].toname+"</td>"
								+"<td class="+"td-col-money tar"+"><span class="+"em st"+">"+data[j].money+"</span>"
								+"</td>"
								+"<td class="+"td-col-status"+">交易成功</td>") 
							}
						} else {
							for (var j = startPage, k = 0; j < endPage,
									k < pageSize; j++, k++) {
								if (j == totalCount) {
									break; 
								}
								 $(".li-tag").eq(k).append("<td class="+"td-col-date"+">"+data[j].createTime+"</td>"
								+"<td class="+"td-col-type tac"+">转账</td>"
								+"<td class="+"tac"+">"+data[j].fromname+"</td>"
								+"<td class="+"tac"+">"+data[j].toname+"</td>"
								+"<td class="+"td-col-money tar"+"><span class="+"em st"+">"+data[j].money+"</span>"
								+"</td>"
								+"<td class="+"td-col-status"+">交易成功</td>") 
							}
						}
						$(".page-count").text("共"+pageTotal+"页");
					})
		}
		function getPage() {
			$.getJSON("/ibank/LUser/transfer_user/gettransferSelect", function(
					data) {
				pn = 1;
				var totalCount = data.length; // 总记录数  
				var pageSize = 6; // 每页显示几条记录  
				var pageTotal = Math.ceil(totalCount / pageSize); // 总页数  
				$("#next").click(function() {
					if (pn == pageTotal) {
						alert("后面没有了");
						pn = pageTotal;
					} else {
						pn++;
						gotoPage(pn);
					}
				});
				$("#prev").click(function() {
					if (pn == 1) {
						alert("前面没有了");
						pn = 1;
					} else {
						pn--;
						gotoPage(pn);
					}
				})
				$("#firstPage").click(function() {
					pn = 1;
					gotoPage(pn);
				});
				$("#lastPage").click(function() {
					pn = pageTotal;
					gotoPage(pn);
				});
				$("#page-jump").click(
						function() {
							if ($(".page-num").val() <= pageTotal&& $(".page-num").val() != '') {
								pn = $(".page-num").val();
								gotoPage(pn);
							} else {
								alert("您输入的页码有误！");
								$(".page-num").val('').focus();
							}
						})
				$("#firstPage").trigger("click");

			})
		}
		function gotoPage(pn) {
			// alert(pn);  
			$(".current-page").text(pn);
			getJSONData(pn)
		}
     function submit(){
     $("#submit_list").click(function(){
	        var date1=$("#date1").val();
	        var date2=$("#date2").val();
	        var balance1=$("#balance1").val();
	        var balance2=$("#balance2").val();
	           var data = "";
	           var falg=false;
				$.ajax({
					url: "/ibank/LUser/transfer_user/transferSelect",
					data: {date1:date1,date2:date2,balance1:balance1,balance2:balance2},
					type: "GET",
					async: false,
					success: function(myData){
						data = myData;
						falg=true;
					}
	           })
	           if(falg==true){
				 getPage();
	           }
     });
     }
			
		$(function() {
		     getPage();
		     submit();
		})
</script>
</head>

<body>
	<div id="top"></div>
	<div id="header">
		<div class="layout">
			<div id="logo">
				<a href="uc.html"> <img
					src="${basepath }/resources/user/images/logo.png" alt="蓝桥" />
				</a>
			</div>
		 
		</div>
	</div>
	<div id="page">
		<div class="main layout">
			<div class="glb-list-box">
				<div class="glb-list-hd clearfix">
					<h3 class="list-hd-title">
						<span class="iconfont icon-trade-list"></span> <span
							class="subject">交易记录</span>
					</h3>
					
				</div>
				<div class="glb-list-bd">
					<div class="list-cond-box">
						<div class="list-cond-hd clearfix">
							
							
							<a id="moreCondBtn" class="more-cond-btn cond-tbs-down"
								href="javascript:;"> 更多条件 <span
								class="iconfont icon-arrow-up"></span>
							</a>
						</div>
						<div id="listCondBd" class="list-cond-bd clearfix">
							<table class="list-cond-tbs">
								
									<th>日期区间:</th>
									<td>
										<div class="list-cond-between">
											<input type="text" id="date1" class="ipt ipt-date twin-item"onclick="laydate()" /> 
											<span class="twin-ft">-</span> 
											<input type="text" id="date2" class="ipt ipt-date twin-item"onclick="laydate()" />
										</div>
									</td>
								
									<th>金额区间:</th>
									<td>
										<div class="list-cond-between">
											<input type="text" id="balance1" class="ipt twin-item" /> 
											<span class="twin-ft">-</span> 
											<input type="text" id="balance2" class="ipt twin-item" />
										</div>
									</td>
								
							</table>
							<a href="#" class="cmn-btn cmn-btn-blue submit-cond-btn" id="submit_list">提交表单</a>
						</div>
					</div>
					<table class="list-main-tbs trade-list-tbs">
						<thead>
							<tr>
								<th>交易日期</th>
								<th class="tac">类型</th>
								<th class="tac">发起方</th>
								<th class="tac">交易方</th>
								<th class="tar"><a href="javascript:;" class="col-order-by">
										金额(元)
										<div class="order-arr order-desc">
											<span class="arr arr-up"></span> <span class="arr arr-down"></span>
										</div>
								</a></th>
								<th>状态</th>
							</tr>
						</thead>
						<tbody id="json-list">
							
						</tbody>
					</table>
					
					<div class="list-page-box">
						<ul id="listCondBd"class="list-page-item" >
							<!-- <li><a href="" id="start">1</a></li>
							<li><span>...</span></li>
							<li><a href="" id="jiansi">5</a></li>
							<li><a href="" id="jiansan">6</a></li>
							<li><a href="" id="jianer">7</a></li>
							<li><a href="" id="jianyi">8</a></li>
							<li class="current"><span>9</span></li>
							<li><a href="" id="jiayi">10</a></li>
							<li><a href="" id="jiaer">11</a></li>
							<li><a href="" id="jiasan">12</a></li>
							<li><a href="" id="jiasi">13</a></li>
							<li><span>...</span></li>
							<li><a href="" id="end">24</a></li> -->
							<li><a href="#" id="firstPage">首页</a></li>
							<li style="width:60px"><a href="#"style="width:55px"  id="prev" >上一页</a></li>
							<li class="current"><span class="current-page"></span></li>
							<li style="width:60px"><a href="#"style="width:55px"  id="next">下一页</a></li>
							<li><a href="#" id="lastPage">尾页</a></li>
							<li style="width:60px" class="current"><span style="width:55px" class="page-count"></span></li>
							<li><input style="width:40px;height:20px" type="number" class="page-num"></li>
							<li><a href="#" id="page-jump">跳至</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="bottom" class="bottom"></div>
	</div>
</body>

</html>