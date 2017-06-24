package org.lanqiao.bank.controller.interest;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.lanqiao.bank.base.dto.DepositDto;
import org.lanqiao.bank.base.dto.InterestDto;
import org.lanqiao.bank.base.entity.Bank;
import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.Deposit;
import org.lanqiao.bank.base.entity.Interest;
import org.lanqiao.bank.base.entity.User;
import org.lanqiao.bank.base.util.DateFormatUtil;
import org.lanqiao.bank.service.admin.CardService;
import org.lanqiao.bank.service.impl.admin.BankServiceImpl;
import org.lanqiao.bank.service.impl.admin.CardServiceImpl;
import org.lanqiao.bank.service.impl.interest.InterestServiceImpl;
import org.lanqiao.bank.service.impl.user.DepositServiceImpl;
import org.lanqiao.bank.service.impl.user.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/interest")
public class InterestController {
	@Autowired
	InterestServiceImpl interestServiceImpl;
	@Autowired
	DepositServiceImpl depositServiceImpl;
	@Autowired
	UserServiceImpl userServiceImpl;
	@Autowired
	CardServiceImpl cardServiceImpl;
	@Autowired
	BankServiceImpl bankserviceImpl;
	@Autowired
	CardService cardService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String getInterestList() {
		return "user/interest/interestAll";
	}

	@RequestMapping(value="/depositList",method=RequestMethod.GET)
	public String getDepositList(){
		return "user/interest/deposits";
	}
	
	@RequestMapping(value = "goamount", method = RequestMethod.GET)
	public String goamount(@RequestParam("id") String id,HttpServletRequest request) {
		request.setAttribute("rate",id);
		return "customer/customer_user_take_in";
	}
	

	@RequestMapping(value = "interestAll", method = RequestMethod.GET)
	@ResponseBody
	public List<InterestDto> getInterestAll(String page) {
		List<Interest> interest = interestServiceImpl.showAllInterest();
		List<InterestDto> dtos = new ArrayList<InterestDto>();
		for (int i = 0; i < interest.size(); i++) {
			InterestDto dto = new InterestDto();
			dto.setId(interest.get(i).getId().toString());
			dto.setRate(interest.get(i).getRate().toString());
			dto.setDuration(interest.get(i).getDuration().toString());
			Bank bank = bankserviceImpl.selectByPrimaryKey(interest.get(i).getBankId());
			dto.setBankName(bank.getName());
			if (interest.get(i).getIsDeposit() == 1) {
				dto.setIs_deposit("是");
			} else {
				dto.setIs_deposit("否");
			}
			dtos.add(dto);
		}
		List<InterestDto> result = new ArrayList<InterestDto>();
		if (interest != null && interest.size() > 0) {
			int allCount = interest.size();
			int pageNo = Integer.parseInt(page);
			int pageSize = 8;
			int pageCount = (allCount + pageSize - 1) / pageSize;
			if (pageNo >= pageCount) {
				pageNo = pageCount;
			}
			int start = (pageNo - 1) * pageSize;
			int end = pageNo * pageSize;
			if (end >= allCount) {
				end = allCount;
			}
			InterestDto dto = new InterestDto();
			dto.setId(String.valueOf(allCount));
			for (int i = start; i < end; i++) {
				result.add(dtos.get(i));
			}
			result.add(dto);
		}
		return (result != null && result.size() > 0) ? result : null;
	}

	@RequestMapping(value = "deposits", method = RequestMethod.GET)
	@ResponseBody
	public List<DepositDto> getDepositAll(@RequestParam("page")String page,HttpServletRequest request) {
		Card card=(Card)request.getSession().getAttribute("takeInCard");
		List<Deposit> deposit = depositServiceImpl.showDeposits(card.getId().toString());
		List<DepositDto> dtos = new ArrayList<DepositDto>();
		for (int i = 0; i < deposit.size(); i++) {
			DepositDto dto = new DepositDto();
			dto.setId(deposit.get(i).getId().toString());
			dto.setCreate_time(DateFormatUtil.DateToStr(deposit.get(i).getCreate_time()));
			dto.setMoney(deposit.get(i).getMoney().toString());
			User user =userServiceImpl.selectUserById(deposit.get(i).getUserId());
			dto.setUserName(user.getName());
			Card card1=cardServiceImpl.selectByPrimaryKey(deposit.get(i).getCardId());
			dto.setCardNum(card1.getNumber());
			Interest inter=interestServiceImpl.selectByPrimaryKey(deposit.get(i).getInterestId());
			System.out.println(inter);
			dto.setRate(inter.getRate().toString());
			dto.setDuration(inter.getDuration().toString());
			dtos.add(dto);
		}
		List<DepositDto> result = new ArrayList<DepositDto>();
		if (deposit != null && deposit.size() > 0) {
			int allCount = deposit.size();
			int pageNo = Integer.parseInt(page);
			int pageSize = 8;
			int pageCount = (allCount + pageSize - 1) / pageSize;
			if (pageNo >= pageCount) {
				pageNo = pageCount;
			}
			int start = (pageNo - 1) * pageSize;
			int end = pageNo * pageSize;
			if (end >= allCount) {
				end = allCount;
			}
			DepositDto dto = new DepositDto();
			dto.setId(String.valueOf(allCount));
			for (int i = start; i < end; i++) {
				result.add(dtos.get(i));
			}
			result.add(dto);
		}
		return (result != null && result.size() > 0) ? result : null;
	}

}
