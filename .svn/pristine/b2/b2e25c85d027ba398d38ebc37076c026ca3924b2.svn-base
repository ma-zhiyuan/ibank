package org.lanqiao.bank.controller.customer;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.Deposit;
import org.lanqiao.bank.service.impl.admin.CardServiceImpl;
import org.lanqiao.bank.service.impl.user.DepositServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/LCustomer/CustomerAndUser")
public class DepositController {
	
	@Autowired
	DepositServiceImpl depositServiceImpl;
	@Autowired
	CardServiceImpl cardServiceImpl;
	
	/**
	 * 
	 * @Title: deposit
	 * @Description: 存款并记录
	 * @author 西安工业大学蓝桥学员-孙明明
	 * @time 2017年5月19日 下午8:01:10 
	 * @param rate
	 * @param duration
	 * @param money
	 * @param card1
	 * @return
	 * String
	 */
	@RequestMapping("/takeIn")
	@Transactional
	public String takeIn(@RequestParam("rateId") String rateId,@RequestParam("money") String money,HttpServletRequest request){
		Card  card=(Card)request.getSession().getAttribute("takeInCard");
		Deposit record=new Deposit(new Date(),new Date(),Double.parseDouble(money),0,120,card.getId(),Integer.parseInt(rateId));
		depositServiceImpl.insert(record);
		card.setBalance(card.getBalance()+Double.parseDouble(money));
		request.setAttribute("cardInfo", card);
		cardServiceImpl.updateByPrimaryKeySelective(card);
		return "customer/card_info";
	}
	
	@RequestMapping("/takeOut")
	public String takeOut( @RequestParam("depositid")String depositid ,HttpServletRequest request){
		Card card=(Card)request.getSession().getAttribute("takeInCard");
		Deposit deposit = depositServiceImpl.selectByPrimaryKey(Integer.parseInt(depositid));
		deposit.setIsTakeOut(1);
		depositServiceImpl.updateByPrimaryKey(deposit);
		card.setBalance(card.getBalance()-deposit.getMoney());
		cardServiceImpl.updateByPrimaryKeySelective(card);
		request.setAttribute("cardInfo", card);
		return "customer/card_info";
	}
}
