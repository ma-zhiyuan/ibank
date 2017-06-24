
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<title>咨询细节</title>
<!-- 导入css库模板 -->
<%@include file="templates/base_css.jsp"%>
</head>

<body>
	<!-- 导入公用模板 -->
	<%@include file="templates/header.jsp"%>
	<div id="frameBody" class="frame-body">
		<!-- 导入左侧导航 -->
		<%@include file="templates/left_navigation.jsp"%>
		<div class="frame-wrapper">
                <div class="frame-page">
                    <div class="frame-main">
                        
                        <div class="frame-main-bd">
                            <h1 class="frame-title">回复内容</h1>
						<table class="glb-tables">
							<thead>
								<tr>
									 
									 
								</tr>
							</thead>
							<tbody>
							 
									<tr>
										<td> 咨询用户:${requestScope.careful.user.name }</td>
										<td>咨询内容:${requestScope.careful.comment}</td>
										<td>咨询时间:
											<fmt:formatDate value="${requestScope.careful. consultationtime}" pattern="yyyy-MM-dd HH:mm:ss" />
										</td>
										<td><c:if
												test="${requestScope.careful.replaystate ==1 }">
											已经回复
										</c:if> <c:if test="${requestScope.careful.replaystate ==0 }">
											未回复
										</c:if>
										</td>
									</tr>
								 <c:forEach items="${requestScope.careful.customerReplays}" var="careful">
								 		<tr>
 													<td>回复客服:${careful.customerService.name }</td>
													<td>回复内容:${careful.content }</td>
													<td>回复时间:
														<fmt:formatDate value="${careful.replaytime }" pattern="yyyy-MM-dd HH:mm:ss"/>
													</td>
															<td width="200px"><a
																href="${basepath}/LAdmin/Admin/deleteReply?id=${careful.id}&userConsultId=${requestScope.careful.id}">删除</a> <span
																class="tbs-split">|</span>
																  <span
																class="tbs-split"></span>
															</td>
								 		</tr>
								 </c:forEach>
							</tbody>
						</table>
							 
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<!-- 导入js库模板 -->
<%@include file="templates/base_js.jsp"%>


</html>