package org.lanqiao.bank.controller.user;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.CardExample;
import org.lanqiao.bank.base.entity.CardExample.Criteria;
import org.lanqiao.bank.base.entity.EnterpriseRegist;
import org.lanqiao.bank.base.entity.EnterpriseRegistExample;
import org.lanqiao.bank.base.entity.User;
import org.lanqiao.bank.service.admin.CardService;
import org.lanqiao.bank.service.user.EnterpriseRegistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/LUser/enterpriseRegist")
public class EnterpriseRegistController {
	
	@Autowired
	private EnterpriseRegistService enterpriseRegistService;
	@Autowired
	private CardService cardService;
	
	@RequestMapping(value="/", method=RequestMethod.POST)
	@ResponseBody
	public String regist(EnterpriseRegist regist, HttpSession session) {
		User user = (User) session.getAttribute("user");
		regist.setEmail(user.getEmail());
		regist.setPassword(user.getPassword());
		regist.setPersonName(user.getName());
		regist.setToken(DigestUtils.md5DigestAsHex((user.getEmail() + "hljljwelrj").getBytes()));
		regist.setCreateTime(new Date());
		enterpriseRegistService.regist(regist);
		return "ok";
	}
	
	@RequestMapping(value="/", method=RequestMethod.GET) 
	public String toRegist(HttpSession session, Map<String, Object> map) {
		User user = (User)session.getAttribute("user");
		EnterpriseRegistExample example1 = new EnterpriseRegistExample();
		EnterpriseRegistExample.Criteria criteria1 = example1.createCriteria();
		criteria1.andEmailEqualTo(user.getEmail());
		List<EnterpriseRegist> results = enterpriseRegistService.selectByExample(example1);
		if(results.size() > 0) {
			map.put("token", results.get(0).getToken());
		}else {
			CardExample example = new CardExample();
			Criteria criteria = example.createCriteria();
			criteria.andUserIdEqualTo(user.getId());
			List<Card> cards = cardService.selectCardsByPageAndCondiction(null, example);
			map.put("cards", cards);
		}
		return "/user/enterprise_regist";
	}
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String hello() {
		return "/user/index";
	}

}
