
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

<head>
<meta charset="utf-8" />
<title>管理员查看所有咨询</title>
<!-- 导入css库模板 -->
<%@include file="templates/base_css.jsp"%>

<script type="text/javascript" src="${basepath }/resources/user/js/jquery.js"></script>
<script type="text/javascript">
	function check(){
		var re=/^[1-9]+[0-9]*]*$/;
		var num=$("#num").val();
		if(!re.test(num)){
			return false;
		}
		return true;
	}
	
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
 						<span class="iconfont icon-setting"></span>查询管理
 					</h4>
 				</div>
 				<div class="frame-msub-bd">
 					<ul class="frame-msub-items">
 						<li><a href="${basepath }/LAdmin/card/list"> <span class="iconfont icon-liuliang"></span>查看银行卡
 						</a></li>
 						<li><a href="${basepath}/LAdmin/Admin/selectAllLoanInfos?pageNow=1"> <span class="iconfont icon-liuliang"></span>查看贷款信息</a>
 						</li>
 						<li  class="msub-current"><a href="${basepath}/LAdmin/Admin/selectAllConsult?pageNow=1"> <span class="iconfont icon-liuliang"></span>查看咨询信息</a>
 						</li>
 					</ul>
 				</div>
 			</div>
			<div class="frame-page">
				<div class="frame-main">

					<div class="frame-main-bd">
						<h1 class="frame-title">咨询管理</h1>
						
						<h1>&nbsp;</h1>
						<table class="glb-tables" style="margin-top: 20px">
							
							<tbody style="margin-left: 20px">
								<c:forEach items="${page.data}" var="userConsultation">
									<tr>
										<td>咨询用户:${userConsultation.user.name }</td>
										<td>咨询内容:${userConsultation.comment}</td>
										<td>
											咨询时间:
											<fmt:formatDate value="${userConsultation. consultationtime}" pattern="yyyy-MM-dd HH:mm:ss"/>
										</td>
										<td>是否已经回复: <c:if
												test="${userConsultation.replaystate ==1 }">
											已经回复
										</c:if> <c:if test="${userConsultation.replaystate ==0 }">
											未回复
										</c:if>
										</td>
										<td width="200px"><a
											href="${basepath}/LAdmin/Admin/selectConsultCareful?id=${userConsultation.id}">详情</a>
											<span class="tbs-split"></span></td>
								</c:forEach>
							</tbody>
						</table>
						<h1>&nbsp;</h1>
						
						<tfoot>

							<td colspan="12">
								<ul class="glb-left glb-col-left">
									<li><a href="${basepath}/LAdmin/Admin/selectAllConsult?pageNow=1">首页</a></li>
									<c:if test="${page.hasPrePage }">
										<li><a
											href="${basepath}/LAdmin/Admin/selectAllConsult?pageNow=${page.currentPage-1 }">上一页</a>
										</li>
									</c:if>

									<li>第${page.currentPage}页</li>
									<li>共${page.totalPages}页</li>

									<c:if test="${page.hasNextPage }">
										<li><a
											href="${basepath}/LAdmin/Admin/selectAllConsult?pageNow=${page.currentPage+1}">下一页</a></li>
										<li><a
											href="${basepath}/LAdmin/Admin/selectAllConsult?pageNow=${page.totalPages }">末页</a></li>
									</c:if>
									<li>
										<form action="${basepath }/LAdmin/Admin/selectAllConsult" onsubmit="return check()">
											到第<input type="text" name="pageNow" id="num"
												style="max-width: 30px" value="${page.currentPage }" />页 <input
												type="submit" value="确定" />
										</form>
									</li>
								</ul>
							</td>
						</tfoot>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<!-- 导入js库模板 -->
<%@include file="templates/base_js.jsp"%>


</html>