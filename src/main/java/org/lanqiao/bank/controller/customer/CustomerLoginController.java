package org.lanqiao.bank.controller.customer;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.lanqiao.bank.base.entity.CustomerService;
import org.lanqiao.bank.base.entity.UserConsultation;
import org.lanqiao.bank.service.customer.CustomerServices;
import org.lanqiao.bank.service.impl.user.UserConsultationServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName: CustomerLoginController
 * @Description: 客服登录控制器接口
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年5月4日 下午5:51:38
 */
@Controller
@RequestMapping("/LCustomer/CustomerLogin")
public class CustomerLoginController {

	@Autowired
	private CustomerServices customerService;
	//注入用户咨询service实现类
	@Autowired
	private UserConsultationServiceImpl userConsultationServiceImpl;
	
	/**
	 * @Title: login
	 * @Description: 客服登录验证
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月4日 下午7:08:00
	 * @param customer
	 * @param model
	 * @param session
	 * @return String
	 */
	@RequestMapping("/login")
	public String login(CustomerService customer, Model model, HttpSession session) {
		System.out.println(customer.getPassword());
		//对密码进行二次加密
		customer.setPassword(DigestUtils.md5DigestAsHex(customer.getPassword().getBytes()));
		CustomerService checkLogin = customerService.checkLogin(customer);
		//获取到未回复的信息集合
		List<UserConsultation> allUserConSultationReplay = userConsultationServiceImpl.getAllUserConSultationReplaystate();
		//获取到为回复信息的条数
		int notReplaySize = allUserConSultationReplay.size();
		if (checkLogin == null) {
			model.addAttribute("errorInfo", "用户名或密码错误");
			//失败返回到登陆界面
			return "redirect:/customer_login";
		}
		session.setAttribute("customer", checkLogin);
		//将未回复的信息条数返回到页面
		session.setAttribute("notReplaySize",notReplaySize );
		//成功返回到主页
		return "customer/customer_index";
	}

}
