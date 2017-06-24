package org.lanqiao.bank.controller.user;

import java.util.Date;
import java.util.List;

import org.lanqiao.bank.base.dto.StatusIdentifyDto;
import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.CardExample;
import org.lanqiao.bank.base.entity.CardExample.Criteria;
import org.lanqiao.bank.base.entity.StatusIdentify;
import org.lanqiao.bank.service.admin.CardService;
import org.lanqiao.bank.service.user.StatusIdentifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/LUser/statusIdentify")
public class StatusIdentifyController {
	
	@Autowired
	private StatusIdentifyService statusIdentifyService;
	@Autowired
	private CardService cardService;
	
	@RequestMapping(value="/", method=RequestMethod.POST)
	@ResponseBody
	public StatusIdentifyDto createIdentify(StatusIdentify identify, String password) {
		StatusIdentifyDto dto = new StatusIdentifyDto();
		CardExample example = new CardExample();
		Criteria criteria = example.createCriteria();
		criteria.andNumberEqualTo(identify.getCardNumber());
		criteria.andPasswordEqualTo(password);
		List<Card> cards = cardService.selectCardsByPageAndCondiction(null, example);
		if(cards == null || cards.size() == 0) {
			dto.setStatus("fail");
		}else {
			dto.setStatus("ok");
			String identifyCode = DigestUtils.md5DigestAsHex((identify.getCardNumber() + password).getBytes());
			identify.setIdentifyCode(identifyCode);
			statusIdentifyService.createIdentify(identify);
			dto.setIdentifyCode(identifyCode);
		}
		return dto;
	}
}
