package org.lanqiao.bank.controller.customer;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.CardExample;
import org.lanqiao.bank.base.entity.CardExample.Criteria;
import org.lanqiao.bank.base.entity.User;
import org.lanqiao.bank.service.impl.admin.CardServiceImpl;
import org.lanqiao.bank.service.impl.user.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName: CustomerCarController
 * @Description: 客服查询用户的银行卡信息
 * @author 西安工业大学蓝桥学员-王泽华
 * @time 2017年5月6日 上午9:43:52
 */
@Controller
@RequestMapping("/LCustomer/CustomerCar")
public class CustomerCarController {

	@Autowired
	private UserServiceImpl userServiceImpl;
	@Autowired
	private CardServiceImpl cardServiceImpl;

	/**
	 * @Title: selectUser
	 * @Description: 查询用户信息是否正确
	 * @author 西安工业大学蓝桥学员-王泽华
	 * @time 2017年5月6日 上午10:24:45
	 * @param user
	 * @param session
	 * @return String
	 */
	@RequestMapping("/selectUser")
	public String selectUser(User user, HttpSession session) {
		System.out.println("提交过来了");
		User u = userServiceImpl.selectUserByPhone(user.getPhone());
		System.out.println(u);
		System.out.println(user.getPassword());
		if (u != null) {
			if (u.getPassword().equals(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()))) {
				session.setAttribute("user", u);
				System.out.println(u);
				// 查询银行卡
				CardExample example = new CardExample();
				Criteria criteria = example.createCriteria();
				criteria.andUserIdEqualTo(u.getId());
				List<Card> cards = cardServiceImpl.selectCardsByPageAndCondiction(null, example);
				System.out.println("cards:"+cards);
				session.setAttribute("cards", cards);
				return "customer/customer_user_card_b";
			}
		} 
			
			session.setAttribute("errorU", "error");
			return "customer/customer_user_card_a";
	}
	
	/**
	 * @Title: cardDetail
	 * @Description: 查询用户的某一张银行卡
	 * @author 西安工业大学蓝桥学员-王泽华
	 * @time 2017年5月7日 上午11:32:33
	 * @param card
	 * @return ModelAndView
	 */
	@RequestMapping("cardDetail")
	public ModelAndView cardDetail(String id) {
		Card card = cardServiceImpl.selectByPrimaryKey((Integer.valueOf(id)));
		System.out.println(card);
		ModelAndView mv = new ModelAndView("customer/customer_user_card_c");
		mv.addObject("card", card);
		return mv;
	}
}
