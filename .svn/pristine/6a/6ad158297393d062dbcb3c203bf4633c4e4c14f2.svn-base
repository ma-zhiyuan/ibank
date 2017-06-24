package org.lanqiao.bank.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @ClassName: UrlToView
 * @Description: 中间跳转控制类，前端直接跳转到jsp的页面可使用本类
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年5月20日 上午10:19:41
 */
@Controller
@RequestMapping("/LUser/UrlToView")
public class UserUrlToViewController {

	/**
	 * @Title: userAddCardFirst
	 * @Description: user/user_add_card_first.jsp
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月21日 下午2:15:42
	 * @return String
	 */
	@RequestMapping("/userAddCardFirst")
	public String userAddCardFirst() {
		return "user/user_add_card_first";
	}

	/**
	 * @Title: dialogBank
	 * @Description: user/dialogs/dialog_bank.jsp
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月21日 下午1:59:31
	 * @return String
	 */
	@RequestMapping("/dialogBank")
	public String dialogBank() {
		return "user/dialogs/dialog_bank";
	}

	/**
	 * @Title: dialogTransfer
	 * @Description: user/dialogs/dialog_transfer.jsp
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月21日 下午1:57:05
	 * @return String
	 */
	@RequestMapping("/dialogTransfer")
	public String dialogTransfer() {
		return "user/dialogs/dialog_transfer";
	}

	/**
	 * @Title: dialogAmount
	 * @Description: user/dialogs/dialog_amount.jsp
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月21日 下午1:53:41
	 * @return String
	 */
	@RequestMapping("/dialogAmount")
	public String dialogAmount() {
		return "user/dialogs/dialog_amount";
	}

	/**
	 * @Title: index
	 * @Description: user/index.jsp
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月20日 上午10:26:22
	 * @return String
	 */
	@RequestMapping("/index")
	public String index() {
		return "user/index";
	}

	/**
	 * @Title: userUpdate
	 * @Description: 跳转到user/user_update.jsp
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月20日 上午10:22:55
	 * @return String
	 */
	@RequestMapping("/userUpdate")
	public String userUpdate() {
		return "user/user_update";
	}
	@RequestMapping("/toview")
    public String toview(@RequestParam("view") String view){
		return view;
    }
	@RequestMapping("/updateUserPassword")
	public String updateUserPassword(){
		return "user/update_user_password";
	}
	@RequestMapping("/userRegisteD")
	public String userRegisteD() {
		return "user/user_registe_d";
	}
	
	
}
