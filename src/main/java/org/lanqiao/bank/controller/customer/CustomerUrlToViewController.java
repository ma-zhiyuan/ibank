package org.lanqiao.bank.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName: CustomerUrlToViewController
 * @Description: 中间跳转控制类，前端直接跳转到jsp的页面可使用本类
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年5月20日 上午10:19:41
 */
@Controller
@RequestMapping("/LCustomer/UrlToView")
public class CustomerUrlToViewController {

	/**
	 * @Title: customerModule
	 * @Description: customer/customer_module.jsp
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月21日 下午4:41:54
	 * @return String
	 */
	@RequestMapping("/customerModule")
	public String customerModule() {
		return "customer/customer_module";
	}
	@RequestMapping("/customerTakeIn")
	public String customerTakeIn(){
		return "customer/interestAll";
		
	}
	
	@RequestMapping("/customerTakeOut")
	public String customerTakeOut(){
		return "customer/deposits";
		
	}
	@RequestMapping("/customerLookUserLoan")
	public String customerLookUserLoan(){
		return "customer/customer_look_user_loan";
	}
	
	@RequestMapping("/userlogin2")
	public String userlogin2(){
		return "customer/user_login2";
	}

}
