<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>添加银行卡</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link rel="stylesheet" type="text/css" href="${basepath }/resources/user/css/global2.css"/>
        <link rel="stylesheet" type="text/css" href="${basepath }/resources/user/css/glw.css"/>
        <link rel="stylesheet" type="text/css" href="${basepath }/resources/user/css/theme_blue.css"/>
        <link rel="shortcut icon" type="image/x-icon" href="${basepath}/resources/imgs/logo.png" />
        <script type="text/javascript" src="${basepath }/resources/user/js/jquery.js"></script>
	    <script type="text/javascript">
	        $(function() {
				$("#bank").change(function() {
					var index = this.selectedIndex;
					var bankId = this.options[index].value;
					var url = "${basepath}" + "/LUser/card_user/list";
					$.get(url, {"bankId": bankId}, function(data) {
						console.log(data.length)
						var card = $("#card");
						console.log(data.length);
						card.empty();
						for(var i = 0; i < data.length; i++) {
							var c = data[i];
							console.log(c);
							card.append("<option value='" + c.id + "'>" + c.number + "</option>")
						}
					})
				})
		
				 //验证表单（高彩丽）
	
		        $("#submit").click(function (){
				       var balance=document.getElementById("balance").value;
				       var reg = /([1-9]\d*(\.\d*[1-9])?)|(0\.\d*[1-9])/;
				      if(!reg.test(balance)){
				       alert("只能输入数字");
				       		return false;
				       }
			        })
	        });
	    </script>
    </head>

    <body>
        <%@include file="template/header.jsp" %>
                <div class="glb-main">
                    <div class="glb-main-hd">
                        <h3 class="main-title">添加银行卡</h3>
                    </div>
                    <div class="glb-main-bd">
                        <div class="glb-main-content">
                            <form class="form-body" action="${basepath }/LUser/card_user/update" id="form" method="post">
                                <div class="form-item">
                                	<h6 class="form-label">请选择银行:</h6>
                                	<div class="form-entity" >
                                		<select class="form-sel glb-col-w200" id="bank" name="bankid">
												<option value="0">请选择</option>
												<c:forEach items="${banks }" var="bank" >
													<option  value="${bank.id }"  >${bank.name }</option>
												</c:forEach>
										</select>
									</div>
                                </div>
                                <div class="form-item">
                                
                                	<h6 class="form-label">请选择银行卡:</h6>
                                	<div class="form-entity">
                                		<select  class="form-sel glb-col-w200" id="card" name="cardid">
											<option value="0">请选择</option>
										</select>
									</div>
                                </div>
                                <div class="form-item">
                                	<h6 class="form-label">请选择充值金额:</h6>
                                	<div class="form-entity">
                                		<input type="text" class="form-ipt glb-col-w190" name="balance" id="balance"/>
									</div>
                                </div>
                                <div class="form-action">
                                    <button id="submit" class="glb-button glb-btn-primary" onclick="submit()">
                                        <span>确定添加</span>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="template/footer.jsp" %>
    </body>


</html>