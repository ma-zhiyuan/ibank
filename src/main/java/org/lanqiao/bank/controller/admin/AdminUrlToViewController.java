package org.lanqiao.bank.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName: AdminUrlToViewController
 * @Description: 中间跳转控制类，前端直接跳转到jsp的页面可使用本类
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年5月20日 上午10:19:41
 */
@Controller
@RequestMapping("/LAdmin/UrlToView")
public class AdminUrlToViewController {
	
	/**
	 * @Title: cusSevice_register
	 * @Description: 客服注册界面跳转链接
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年6月18日 上午9:39:51 
	 * @return
	 * String
	 */
	@RequestMapping("/cusSevice_register")
	public String cusSevice_register(){
		return "admin/cusSevice_register";
	}

	/**
	 * @Title: fupdatePassword
	 * @Description: admin/update_password.jsp
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月21日 下午3:53:27
	 * @return String
	 */
	@RequestMapping("/updatePassword")
	public String updatePassword() {
		return "admin/update_password";
	}

	/**
	 * @Title: updateAdmin
	 * @Description: admin/update_admin.jsp
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月21日 下午3:51:49
	 * @return String
	 */
	@RequestMapping("/updateAdmin")
	public String updateAdmin() {
		return "admin/update_admin";
	}

	/**
	 * @Title: welcome
	 * @Description: admin/welcome.jsp
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月21日 上午10:57:34
	 * @return String
	 */
	@RequestMapping("/welcome")
	public String welcome() {
		return "admin/welcome";
	}

}
