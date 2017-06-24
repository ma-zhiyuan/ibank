<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>所有未回复的用户咨询</title>
        <link rel="stylesheet" type="text/css" href="${basepath}/resources/admin/css/global.css">
        <link rel="stylesheet" type="text/css" href="${basepath}/resources/admin/css/glw.css">
        <link rel="stylesheet" type="text/css" href="${basepath}/resources/admin/css/theme_blue.css">
	    <link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
	    <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"61919",secure:"61924"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

    <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-150" data-genuitec-path="/ibank/src/main/webapp/views/customer/userConSultation_notReplay.jsp">
        <%@include file="templates/header.jsp"%>
        <div class="glb-page" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-150" data-genuitec-path="/ibank/src/main/webapp/views/customer/userConSultation_notReplay.jsp">
            <div class="glb-layout">
            <%@include file="templates/lefter.jsp" %>
            
             <%-- <div class="glb-menu">
                    <ul class="glb-menu-items">
                        
                        <li>
                            <a href="${basepath }/LCustomer/CService/list">
                                <span class="menu-ico iconfont icon-advert"></span>
                                <span class="menu-txt">银行卡管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="${basepath }/LCustomer/customer/customerAnnouncement?pageNow=1">
                                <span class="menu-ico iconfont icon-3line-y"></span>
                                <span class="menu-txt">通知管理</span>
                            </a>
                        </li>
                        <li  class="menu-current">
                            <a href="${basepath }/LCustomer/CService/UserConsultation?pageNow=1">
                                <span class="menu-ico iconfont icon-coin"></span>
                                <span class="menu-txt">用户咨询</span>
                                <div class="notice">${sessionScope.notReplaySize }</div>
                            </a>
                        </li>
                        <li>
                            <a href="${basepath}/LCustomer/UrlToView/customerModule">
                                <span class="menu-ico iconfont icon-cmcc"></span>
                                <span class="menu-txt">用户服务</span>
                                <span class="badge badge--warning"></span> 
                            </a>
                        </li>
                    </ul>
                </div> --%>
            
            
            
            
            
            
            
            
            
            
            <%-- 	<%@include file="templates/lefter.jsp" %> --%>
<!--                 <div class="glb-menu"> -->
<!--                     <ul class="glb-menu-items"> -->
<!--                         <li> -->
<!--                             <a href="#"> -->
<!--                                 <span class="menu-ico iconfont icon-members"></span> -->
<!--                                 <span class="menu-txt">用户信息</span> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                         <li> -->
<!--                             <a href="#"> -->
<!--                                 <span class="menu-ico iconfont icon-advert"></span> -->
<!--                                 <span class="menu-txt">银行卡管理</span> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                         <li> -->
<!--                             <a href="${basepath }/LCustomer/CService/getQuestion?pageNow=1"> -->
<!--                                 <span class="menu-ico iconfont icon-3line-y"></span> -->
<!--                                 <span class="menu-txt">通知管理</span> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                         <li class="menu-current"> -->
<!--                             <a href="${basepath }/LCustomer/customer/UserConsultation?pageNow=1"> -->
<!--                                 <span class="menu-ico iconfont icon-coin"></span> -->
<!--                                 <span class="menu-txt">用户咨询</span> -->
<!--                                 <div class="notice">${requestScope.notReplaySize }</div> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                     </ul> -->
<!--                 </div> -->
                
                <div class="glb-main">
                    <div class="glb-main-hd">
                        <h3 class="main-title">咨询信息&nbsp;&gt;&nbsp;未回复咨询列表</h3>
                        <div class="main-toolbar">
                          <%--   <a href="${basepath}/LCustomer/CService/UserConsultation?pageNow=1" class="glb-button glb-btn-primary">刷新</a> --%>
                            <a href="javascript:location.reload();" class="glb-button glb-btn-primary">刷新</a>
                        </div>
                    </div>
                    <table class="glb-tables" style="font-size: 14px">
							<thead>
								<tr>
									
									<th>#</th>
									<th>用户</th>
									<th>咨询内容</th>
									<th>咨询时间</th>
									<th>操作</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${requestScope.userConSultation }" var="uc">
									<tr>
										
										<td>${uc.id}</td>
										<td>${uc.user.name}</td>
										<td>${uc.comment}</td>
										<td><fmt:formatDate value="${uc.consultationtime}"
													pattern="yyyy-MM-dd " /></td>
										<td width="200px"><a href="${basepath}/LCustomer/CService/replayConsultation?id=${uc.id}">回复</a></td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<td colspan="10">
									<div class="glb-left glb-col-left">
											<a href="${basepath}/LCustomer/CService/UserConsultation?pageNow=1" class="glb-button glb-btn-default">首页</a>
											<c:if test="${requestScope.cServicePage.hasPrePage }">
												<a href="${basepath}/LCustomer/CService/UserConsultation?pageNow=${requestScope.cServicePage.currentPage-1 }" class="glb-button glb-btn-default">上一页</a>
											</c:if>
										<span>当前第${requestScope.cServicePage.currentPage}页</span>
											<c:if test="${requestScope.cServicePage.hasNextPage }">
												<a href="${basepath}/LCustomer/CService/UserConsultation?pageNow=${requestScope.cServicePage.currentPage+1}" class="glb-button glb-btn-default">下一页</a>
											</c:if>
											<a href="${basepath}/LCustomer/CService/UserConsultation?pageNow=${requestScope.cServicePage.totalPages }" class="glb-button glb-btn-default">末页</a>
									</div>
								</td>
							</tfoot>
						</table>
                </div>
            </div>
        </div>
        <%@include file="templates/footer.jsp"%>
	    <script type="text/javascript" src="${basepath}/resources/admin/js/jquery.min.js"></script>
	    <script type="text/javascript" src="${basepath}/resources/admin/js/global.js"></script>
	    <script type="text/javascript" src="${basepath}/resources/admin/js/validate.js"></script>
	     <style>
			.notice {
			    width:20px;
			    height:20px;
			    line-height:20px;
			    font-size:10px;
			    color:#fff;
			    text-align:center;
			    background-color:#f00;
			    border-radius:50%;
			    position:absolute;
			    right:77%;
			    top:45%;
		}
    </body>
</html>
