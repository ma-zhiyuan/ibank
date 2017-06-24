package org.lanqiao.bank.controller.user;

import javax.servlet.http.HttpSession;

import org.lanqiao.bank.base.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @ClassName: LoginController
 * @Description: 登录控制器层
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年4月27日 上午8:59:25
 */
@Controller
@RequestMapping("/LUser/Navigation")
public class NavigationController {

	/**
	 * @Title: userExit
	 * @Description: 退出当前用户
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年4月27日 上午9:56:22
	 * @return String
	 */
	@RequestMapping("/userExit")
	public String userExit(HttpSession session) {
		session.removeAttribute("user");
		return "redirect:/user_login.jsp";
	}

	/**
	 * @Title: checkLogin
	 * @Description: 验证用户是否登录并返回数据
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年4月27日 上午9:09:21
	 * @return String
	 */
	@RequestMapping("/checkLogin")
	@ResponseBody
	public User checkLogin(HttpSession session) {
		User user = (User) session.getAttribute("user");
		if (user != null) {
			return user;
		}
		return new User();
	}

}
