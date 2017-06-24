<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<form class="form-bd" action="${basepath}/" id="demoForm">
	<div class="form-item">
		<h6 class="form-label">银行卡:</h6>
		<div class="form-entity">
			<select name="fromCardId" class="form-sel glb-col-w200" id="card"
				style="width: 190px;">
			</select>
			<span id="from"></span>
		</div>
	</div>
	<div class="form-item">
		<h4 class="form-label">收款人卡号:</h4>
		<div class="form-entity">
			<div class="form-field">
				<input type="hidden" name="toCardId" />
				<input type="text" class="ipt" id='cardNumber' style="width: 180px;" placeholder="收款人卡号"/>
				<span id="to"></span>
			</div>
		</div>
	</div>
	<div class="form-item">
		<h4 class="form-label">金额:</h4>
		<div class="form-entity">
			<div class="form-field">
				<input class="ipt" type="text" name="money" value="" placeholder="转账金额金额" style="width: 180px;" />
			</div>
		</div>
	</div>
	<div class="form-item">
		<h4 class="form-label">备注:</h4>
		<div class="form-entity">
			<div class="form-field">
				<input class="ipt" type="text" name="message" value="" placeholder="备注" style="width: 180px;" />
			</div>
		</div>
	</div>
	<div class="form-action clearfix">
		<a class="reset-btn close-dlg" href="javascript:;">取消</a>
		<input id="dissmiss_dialog" class="glb-btn submit-btn" type="submit" value="提 交" style="display: none"/>
		<button type="button" class="glb-btn" id="submit">确定</button>
	</div>
</form>
<link href="${basepath }/resources/css/jquery-confirm.css" rel="stylesheet"/>
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
	        	$.get(basepath + "/LAdmin/card/user/list", {"userId": userId, "bankId": 1}, function(data) {
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
	        			$.get(basepath + "/LAdmin/card/user", {"number": number}, function(data) {
	                		if(data.length != 0) {
	                			$("input[name=toCardId]").val(data.id);
	                			if(data.userName != undefined) {
	                				$("#to").html("" + data.userName);
	                    			tag1 = 1;
	                			}else{
	                				alert("该卡号的用户不存在！")
	                				tag1 = 0;
	                			}
	                		}else{
	                			tag1 = 0;
	                			alert("该卡号的不存在！")
	                		}
	                	});
	        		}else {
	        			tag1 = 0;
	        			alert("卡号不能为空！")
	        		}
	        	})
	        	
	        	$("select[name=fromCardId]").change(function(){
	        		var index = this.selectedIndex;
	        		$("#from").html("余额：" + local[index]);
	        	})
	        	
	        	$("#submit").click(function(){
	        		var fromCarId = $("select[name=fromCardId]")[0];
	        		var index = fromCarId.selectedIndex;
	        		var remain = local[index];
	        		var money = $("input[name=money]").val();
	        		if(tag1 == 0) {
	        			alert("接收的账号不存在！");
	        			return false;
	        		}
	        		if(money.length == 0) {
	        			alert("转账金额不能为空！")
	        			return false;
	        		}
	        		if(money.length > 10) {
	        			alert("转账金额过大！");
	        			return false;
	        		}
	        		var reg = /^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$/; 
	        		if(!reg.test(money)) {
	        			alert("转账金额输入不合法!");
	        			return false;
	        		} 
	        		if(remain < money) {
	        			alert("账户余额不足， 请充值！");
	        			return false;
	        		}
	        		var toCardId = $("input[name=toCardId]").val();
	        		var fromCardId = $("select[name=fromCardId]")[0].options[index].value;
	        		var message = $("input[name=message]").val();
	        		var args = {
	        			"userId": userId,
	        			"fromCardId": fromCardId,
	        			"toCardId": toCardId,
	        			"money": money,
	        			"message": message
	        		};
	        		$.post(basepath + "/LUser/transfer_user", args, function(data){
	        			if(data == 1) {
	        				$("#dissmiss_dialog").click()
	        			}else {
	        				alert("转账失败！")
	        			}
	        		})
	        	})
	        });
	    </script>