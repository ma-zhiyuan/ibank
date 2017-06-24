<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 
	客服登录界面：创建者：苏杰
			 创建时间：2017年5月4日
 -->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>企业注册</title>
        <link rel="stylesheet" type="text/css" href="${basepath}/resources/admin/css/global.css">
        <link rel="stylesheet" type="text/css" href="${basepath}/resources/admin/css/glw.css">
        <link rel="stylesheet" type="text/css" href="${basepath}/resources/admin/css/theme_blue.css">
        <link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
    </head>

    <body>
        <div id="top" class="glb-topbar">
		    <div class="glb-layout">
		        <ul class="glb-left">
		            <li>
		                <a href="#" target="_blank"><span class="item-ico iconfont icon-home"></span>主页</a>
		            </li>
		            <li>
		                <a href="#" target="_blank"><span class="item-ico iconfont icon-mblog"></span>官方微博</a>
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
		                <a href="#">帮助中心</a>
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

        <div class="glb-page glb-wrapper">
            <div class="glb-layout">
                <div class="glb-col-p60 glb-center">
                    <c:if test="${token == null }">
                    	<form class="form-body" action="${basepath}/LCustomer/CustomerLogin/login" id="form" method="post">
	                        <div class="form-item">
	                            <h5 class="form-label">企业名:</h5>
	                            <div class="form-entity">
	                                <div class="form-field">
	                                    <input class="form-ipt" type="text" name="name" value="" />&nbsp;&nbsp;
	                                    <span style="color: red;" id="error_name"></span>
	                                </div>
	                            </div>
	                        </div>
	                         <div class="form-item">
	                            <h5 class="form-label">地址:</h5>
	                            <div class="form-entity">
	                                <div class="form-field">
	                                    <input class="form-ipt" type="text" name="location" value="" />&nbsp;&nbsp;
	                                    <span style="color: red;" id="error_name"></span>
	                                </div>
	                            </div>
	                        </div>
	<!--                         <div class="form-item"> -->
	<!--                             <h5 class="form-label">登录密码:</h5> -->
	<!--                             <div class="form-entity"> -->
	<!--                                 <div class="form-field form-ipt-group"> -->
	<!--                                     <input id="passwordIpt" class="form-ipt" type="password" name="password" value="" placeholder="请输入登录密码" />&nbsp;&nbsp; -->
	<!--                                     <span style="color: red;" id="error_password">${errorInfo}</span> -->
	<!--                                     <a id="togglePwdType" class="ipt-addon ipt-icon iconfont icon-password" href="javascript:;"></a> -->
	<!--                                 </div> -->
	<!--                             </div> -->
	<!--                         </div> -->
	                        <div class="form-item">
	                            <h5 class="form-label">选择卡号:</h5>
	                            <div class="form-entity">
	                                <div class="form-field form-ipt-group">
	                                    <select class="form-inline form-sel" id="areaCode" name="areaCode">
											<c:forEach items='${cards }' var='card'>
												<option value='${card.id }'>${card.number }</option>
											</c:forEach>
										</select>
	                                </div>
	                            </div>
	                        </div>
	                        
								
						<div class="form-action">
	                        	<a class="glb-button glb-btn-primary" id='enterprise_regist'>注册</a>
	                        </div>
	                    </form>
                    </c:if>
                    <c:if test="${token != null }">
                    	<div class="form-item">
	                            <h5 class="form-label">令牌:</h5>
	                            <div class="form-entity">
	                                <div class="form-field">
	                                    <input class="form-ipt" type="text" name="name" value="${token }" readonly="readonly">&nbsp;&nbsp;
	                                    <span style="color: red;" id="error_name"></span>
	                                </div>
	                            </div>
	                        </div>
                    </c:if>
                </div>
            </div>
        </div>
        <div class="glb-bottom">
		    <div class="glb-layout">
		        <div class="glb-left">
		            <ul>
		                <li>
		                    <a href="#" target="_blank">关于我们</a>
		                </li>
		                <li>
		                    <a href="#" target="_blank">安全保障</a>
		                </li>
		                <li>
		                    <a href="#" target="_blank">诚聘英才</a>
		                </li>
		                <li>
		                    <a href="#" target="_blank">商户合作</a>
		                </li>
		                <li>
		                    <a href="#" target="_blank">新手指南</a>
		                </li>
		                <li>
		                    <a href="#" target="_blank">在线客服</a>
		                </li>
		                <li>
		                    <a href="#" target="_blank">帮助中心</a>
		                </li>
		                <li>
		                    <a href="#" target="_blank">站点地图</a>
		                </li>
		                <li class="last">
		                    <a href="#" target="_blank">联系我们</a>
		                </li>
		            </ul>
		            <p>蓝桥软件学院教研部</p>
		            <p>国信世纪人才服务（北京）有限公司</p>
		            <p>Copyright Reserved 2016©蓝桥
		                <a class="beian" href="http://www.miibeian.gov.cn" target="_blank">吉ICP备 2222233444号</a>
		            </p>
		        </div>
		        <div class="glb-right glb-tac">
		            <img class="weixin-code" src="${basepath}/resources/admin/images/weixin.jpg" alt="" />
		            <p class="weixin-text">扫码关注公众号</p>
		        </div>
		    </div>
		</div>
	    <script type="text/javascript" src="${basepath}/resources/admin/js/jquery.min.js"></script>
	    <script type="text/javascript" src="${basepath}/resources/admin/js/global.js"></script>
	    <script type="text/javascript" src="${basepath}/resources/admin/js/validate.js"></script>
	    <script type="text/javascript" src="${basepath}/resources/scripts/md5.js" charset="utf-8"></script>
	    <script type="text/javascript">
	    	$(function() {
	    		var basepath = '${basepath}'
	    		$('#enterprise_regist').click(function() {
	    			var inputs = $('input')
	    			for(var i = 0; i < inputs.length; i++) {
	    				if(inputs.eq(i).val().length == 0) {
	    					alert('输入不能为空')
	    					return 
	    				}
	    			}
	    			var name = $('input[name=name]').val()
	    			var location = $('input[name=location]').val()
	    			var index = $('select')[0].selectedIndex
	    			var cardId = $('select').find('option').eq(index).val()
	    			var url = basepath + '/LUser/enterpriseRegist/'
	    			var args = {
	    				'name': name,
	    				'location': location,
	    				'cardId': cardId
	    			}
	    			$.post(url, args, function(data) {
	    				if(data == 'ok') {
	    					alert('ok')
	    					window.location.href = "http://www.husuli.pw/ibank/LUser/enterpriseRegist/index"
	    				}else {
	    					alert(data)
	    				}
	    			})
	    			return false
	    		})
	    	})
	    </script>
    </body>
</html>
