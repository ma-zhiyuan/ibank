package org.lanqiao.bank.controller.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.CardExample;
import org.lanqiao.bank.base.entity.EnterpriseRegist;
import org.lanqiao.bank.base.entity.EnterpriseRegistExample;
import org.lanqiao.bank.base.entity.EnterpriseRegistExample.Criteria;
import org.lanqiao.bank.base.entity.StatusIdentify;
import org.lanqiao.bank.base.entity.StatusIdentifyExample;
import org.lanqiao.bank.base.entity.User;
import org.lanqiao.bank.service.admin.CardService;
import org.lanqiao.bank.service.user.EnterpriseRegistService;
import org.lanqiao.bank.service.user.StatusIdentifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/LUser/API")
public class APIController {
	@Autowired
	private EnterpriseRegistService enterpriseRegistService;
	@Autowired
	private StatusIdentifyService statusIdentifyService;
	@Autowired 
	private CardService cardService;
	
	@RequestMapping(value="/pay", method=RequestMethod.POST)
	@ResponseBody
	public String pay(String token, String identifyCode, double money) {
		if(money < 0) {
			return "金额不能小于0";
		}
		EnterpriseRegistExample enterpriseRegistExample = new EnterpriseRegistExample();
		Criteria criteria1 = enterpriseRegistExample.createCriteria();
		criteria1.andTokenEqualTo(token);
		List<EnterpriseRegist> enterpriseRegists = enterpriseRegistService.selectByExample(enterpriseRegistExample);
		if(enterpriseRegists.size() < 1) {
			return "企业用户不存在！";
		}
		StatusIdentifyExample statusIdentifyExample = new StatusIdentifyExample();
		org.lanqiao.bank.base.entity.StatusIdentifyExample.Criteria criteria2 = statusIdentifyExample.createCriteria();
		criteria2.andIdentifyCodeEqualTo(identifyCode);
		List<StatusIdentify> statusIdentifies = statusIdentifyService.selectByExample(statusIdentifyExample);
		if(statusIdentifies.size() < 1) {
			return "用户标识有误！";
		}
		EnterpriseRegist regist = enterpriseRegists.get(0);
		StatusIdentify identify = statusIdentifies.get(0);
		Card registCard = cardService.selectByPrimaryKey(regist.getCardId());
		String cardNumber = identify.getCardNumber();
		CardExample example = new CardExample();
		example.createCriteria().andNumberEqualTo(cardNumber);
		List<Card> cards = cardService.selectCardsByPageAndCondiction(null, example);
		Card userCard = cards.get(0);
		registCard.setBalance(registCard.getBalance() + money);
		userCard.setBalance(userCard.getBalance() - money);
		cardService.updateByPrimaryKey(registCard);
		cardService.updateByPrimaryKey(userCard);
		return "success";
	}
	
}
