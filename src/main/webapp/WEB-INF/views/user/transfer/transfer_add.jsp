<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Web UI - 菜单+表单</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="${basepath }/resources/css/jquery-confirm.css" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="${basepath }/resources/user/css/global2.css"/>
        <link rel="stylesheet" type="text/css" href="${basepath }/resources/user/css/glw.css"/>
        <link rel="stylesheet" type="text/css" href="${basepath }/resources/user/css/theme_blue.css"/>
	    <link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
	    <script type="text/javascript" src="${basepath }/resources/scripts/jquery-1.9.1.min.js"></script>
	    <script type="text/javascript" src="${basepath }/resources/scripts/jquery-confirm.js"></script>
	    <script type="text/javascript" src="${basepath }/resources/scripts/common.js"></script>
	    <script type="text/javascript">
	        $(function() {
	        	var basepath = "${basepath }";
	        	var local = new Array();
	        	var userId = "${sessionScope.user.id }";
	        	if(userId.length == 0) {
	        		userId = 6;
	        	}
	        	var fromCards = $("select[name=fromCardId]");
	        	$.get(basepath + "/card/user/list", {"userId": userId}, function(data) {
	        		fromCards.empty();
	        		$("#from").html("");
	        		for(var i = 0; i < data.length; i++) {
	        			var cardDto = data[i];
	        			fromCards.append("<option value='" + cardDto.id + "''>" + cardDto.number + "</option>")
	        			local.push(cardDto.balance);
	        		}
	        		if(data.length != 0) {
	        			$("#from").html("余额：" + data[0].balance);
	        		}
	        	});
	        	var tag1 = 0;
	        	$("#cardNumber").blur(function(){
	        		var number = this.value;
	        		if(number.length != 0) {
	        			$("#to").html("");
	        			$.get(basepath + "/card/user", {"number": number}, function(data) {
	                		if(data.length != 0) {
	                			$("input[name=toCardId]").val(data.id);
	                			if(data.userName != undefined) {
	                				$("#to").html("收款人:" + data.userName);
	                    			tag1 = 1;
	                			}else{
	                				common.remind("该卡号的用户不存在！")
	                				tag1 = 0;
	                			}
	                		}else{
	                			tag1 = 0;
	                			common.remind("该卡号的不存在！")
	                		}
	                	});
	        		}else {
	        			tag1 = 0;
	        			common.remind("卡号不能为空！")
	        		}
	        	})
	        	
	        	$("select[name=fromCardId]").change(function(){
	        		var index = this.selectedIndex;
	        		$("#from").html("余额：" + local[index]);
	        	})
	        	
	        	$("#submit").click(function(){
	        		var index = $("select[name=fromCardId]")[0].selectedIndex;
	        		var remain = local[index];
	        		var money = $("input[name=money]").val();
	        		if(tag1 == 0) {
	        			common.remind("接收的账号不存在！");
	        			return false;
	        		}
	        		if(money.length == 0) {
	        			common.remind("转账金额不能为空！")
	        			return false;
	        		}
	        		if(money.length > 10) {
	        			common.remind("转账金额过大！");
	        			return false;
	        		}
	        		var reg = /^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$/; 
	        		if(!reg.test(money)) {
	        			common.remind("转账金额输入不合法!");
	        			return false;
	        		} 
	        		
	        		if(remain < money) {
	        			common.remind("账户余额不足， 请充值！");
	        			return false;
	        		}
	        	})
	        });
	    </script>
    </head>
		
    <body>
    	<%@include file="../template/header.jsp" %>
                <div class="glb-main">
                    <div class="glb-main-hd">
                        <h3 class="main-title">转账</h3>
                    </div>
                    <div class="glb-main-bd">
                        <div class="glb-main-content">
                            <form class="form-body" action="${basepath }/LUser/transfer_user/" method="post" style="float:left;">
                            	<input type="hidden" name="userId" value="6"/>
                                <div class="form-item">
                                	<h6 class="form-label">请选择银行卡:</h6>
                                	<div class="form-entity">
                                		<select name="fromCardId" class="form-sel glb-col-w200" id="card" style="width: 260px;">
										</select>
										<h6 class="form-label" style="margin-left: 250px; margin-top: -40px" id="from"></h6>
									</div>
                                </div>
                                
                                <div class="form-item">
                                	<h6 class="form-label">请输入收款人的卡号:</h6>
                                	<input type="hidden" name="toCardId"/>
                                	<div class="form-entity">
                                		<input type="text" class="form-ipt glb-col-w600" id='cardNumber'/>
									</div>
									<h6 class="form-label" style="margin-left: 400px; margin-top: -40px" id="to"></h6>
                                </div>
                                
                                <div class="form-item">
                                	<h6 class="form-label">请输入转账金额:</h6>
                                	<div class="form-entity">
                                		<input type="text" class="form-ipt glb-col-w600" name='money'/>
									</div>
                                </div>
                                
                                 <div class="form-item">
                                    <h6 class="form-label">备注 :</h6>
                                    <div class="form-entity">
                                        <div class="form-field">
                                            <textarea id="advertDesc" name="message" class="form-ta" style="width:260px;height:100px;"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-action">
                                    <button id="submit" class="glb-button glb-btn-primary" onclick="submit()">
                                        <span>确定</span>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="../template/footer.jsp" %>
    </body>

</html>