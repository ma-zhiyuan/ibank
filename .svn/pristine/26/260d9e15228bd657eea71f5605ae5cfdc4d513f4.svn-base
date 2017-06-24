package org.lanqiao.bank.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/LAdmin/Admin1")
public class UserController1 {

	/**
	 * @Title: toupdatepassword
	 * @Description: 获取页面上单ID
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月6日 下午11:32:35 
	 * @param id
	 * @param request
	 * @return
	 * String
	 */
	@RequestMapping(value="/toupdatepassword",method=RequestMethod.GET)
	public String toupdatepassword(@RequestParam(value="id") Integer id,HttpServletRequest request){
		request.getSession().setAttribute("userid", id);
		return "admin/admin_user_password";
	}
}
