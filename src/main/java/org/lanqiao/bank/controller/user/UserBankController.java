package org.lanqiao.bank.controller.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.User;
import org.lanqiao.bank.service.admin.BankService;
import org.lanqiao.bank.service.impl.user.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/LUser/User")
@ContextConfiguration("classpath:spring/spring-*.xml")
public class UserBankController {

	@Autowired
	private UserServiceImpl userServiceImpl;
	@Autowired
	private BankService bankService;

	/**
	 * @Title: getUserBanks
	 * @Description: 获取用户所有的银行卡
	 * @author 西安工业大学蓝桥学员-孙明明
	 * @time 2017年5月6日 上午10:44:44 void
	 */
	@RequestMapping("/getUserBanks")
	@ResponseBody
	public List<Card> getUserBanks(HttpSession session) {
		User user = (User) session.getAttribute("user");
		List<Card> cards = userServiceImpl.getAUserAllCard(user);
		return cards;

	}

}
