package org.lanqiao.bank.controller.customer;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.CreditSaveMoney;
import org.lanqiao.bank.base.entity.Interest;
import org.lanqiao.bank.base.entity.Loan;
import org.lanqiao.bank.base.entity.LoanInfo;
import org.lanqiao.bank.base.entity.LoanInfoExample;
import org.lanqiao.bank.base.entity.Repayment;
import org.lanqiao.bank.base.entity.RepaymentExample;
import org.lanqiao.bank.base.entity.RepaymentExample.Criteria;
import org.lanqiao.bank.base.entity.User;
import org.lanqiao.bank.base.util.PageUtil;
import org.lanqiao.bank.service.impl.admin.CardServiceImpl;
import org.lanqiao.bank.service.impl.interest.InterestServiceImpl;
import org.lanqiao.bank.service.impl.loan.LoanInfoServiceImpl;
import org.lanqiao.bank.service.impl.repayment.RepaymentServiceImpl;
import org.lanqiao.bank.service.impl.user.CreditSaveMoneyServiceImpl;
import org.lanqiao.bank.service.impl.user.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @ClassName: CustomerAndUserContronller
 * @Description: 客户服务用户控制层
 * @author 西安工业大学蓝桥学员-魏航
 * @time 2017年5月14日 下午2:24:47
 */
@Controller
@RequestMapping("/LCustomer/CustomerAndUser")
public class CustomerAndUserContronller {
	@Autowired
	CardServiceImpl cardServiceImpl;
	@Autowired
	UserServiceImpl userServiceImpl;
	@Autowired
	LoanInfoServiceImpl loanInfoServiceImpl;
	@Autowired
	InterestServiceImpl interestServiceImpl;
	@Autowired
	RepaymentServiceImpl repaymentServiceImpl;
	
	@Autowired
	CreditSaveMoneyServiceImpl creditSaveMoneyServiceImpl;

	
	/**
	 * @Title: userWithdrawals2
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年6月18日 上午10:09:55 
	 * @param cardnum
	 * @param balance1
	 * @param map
	 * @return
	 * String
	 */
	@RequestMapping("/userWithdrawals2")
	public String userWithdrawals2(@RequestParam("cardnum") String cardnum, @RequestParam("balance1") Double balance1,
			Map<String, Object> map) {

		Card card = cardServiceImpl.selCardByCardNumber(cardnum);
		Double balance = card.getBalance();
		if (balance > balance1) {
			balance -= balance1;
			card.setBalance(balance);
			int i = cardServiceImpl.updateCard(card);
			map.put("card", card);
			return "customer/customer_userwit_success";
		}
		return "customer/customer_user_faile";
	}

	/**
	 * @Title: UserWithdrawals
	 * @Description: 客服操作用户提现
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月14日 下午4:34:19
	 * @param id
	 * @param map
	 * @return String
	 */

@RequestMapping("/userWithdrawals")
	public String userWithdrawals(@RequestParam("cardnum") String cardnum, @RequestParam("password") String password,Map<String, Object> map,HttpServletRequest request){
		Card card=cardServiceImpl.selCardByCardNumber(cardnum);
		String password2 = card.getPassword();
		if(password.equalsIgnoreCase(password2)){
			map.put("cardInfo",card );
			request.getSession().setAttribute("takeInCard", card);
			return "customer/card_info";
		}
		return "customer/customer_user_faile";
	}

	/**
	 * @Title: userWithdrawals
	 * @Description: 去客服操作用户提现页面
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月14日 下午4:25:30
	 * @return String
	 */
	@RequestMapping("/toUserWithdrawals")
	public String toUserWithdrawals(@RequestParam("id") Integer id, Map<String, Object> map) {
		Card card = cardServiceImpl.selectByPrimaryKey(id);
		map.put("card", card);
		return "customer/cus_user_withdrawals_a";
	}

	/**
	 * @Title: CusVerifyUser
	 * @Description: 和服验证用户名和卡号是否对应
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月14日 下午3:02:04
	 * @param name
	 * @param cardId
	 * @param map
	 * @return String
	 */
	@RequestMapping("/cusVerifyUser")
	public String CusVerifyUser(@RequestParam("name") String name, @RequestParam("cardnum") String cardnum,
			Map<String, Object> map) {
		if (cardnum != null) {
			Card card = cardServiceImpl.selCardByCardNumber(cardnum);
			Integer userid = card.getUserId();
			User user = userServiceImpl.selectUserById(userid);
			String name2 = user.getName();
			if (name.equalsIgnoreCase(name2)) {
				map.put("cardInfo", card);
				return "customer/card_info";
			} else {
				return "customer/customer_user_faile";
			}

		}
		return "customer/customer_user_faile";
	}

	@RequestMapping("toCusVerifyUser")
	public String toGetUserByName() {
		return "customer/cus_user_withdrawals_a";
	}
	

	/**
	 * @Title: userRepay
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-闫宇
	 * @time 2017年6月4日 下午4:55:40 
	 * @param name
	 * @param password
	 * @param session
	 * @param request
	 * @param map
	 * @return
	 * String
	 */
	@RequestMapping("/userRepay")
	public String userRepay(String name, String password, HttpSession session, HttpServletRequest request,
			Map<String, Object> map) {
		User user = userServiceImpl.seletUserByName(name);
		if (user != null) {
			Integer id = user.getId();
			List<Card> card = cardServiceImpl.getCardsByUserId(id);
			String pwd = DigestUtils.md5DigestAsHex(password.getBytes());
			String password2 = user.getPassword();
			List<LoanInfo> list = loanInfoServiceImpl.selectByUserId(id);
			request.removeAttribute("error1");
			if (pwd.equals(password2)) {
				session.setAttribute("card", card);
				//获取利率对象
				map.put("list", list);
				request.removeAttribute("error");
				return "customer/customer_user_repayment";
			} else {
				request.setAttribute("error", "密码错误，请重新填写!");
				return "customer/user_login2";
			}
		} else {
			request.setAttribute("error1", "用户不存在，请重新填写！");
			return "customer/user_login2";
		}
	}
	/**
	 * @Title: selUserCreditMoneyRecord
	 * @Description:客服 查询用户的存取款记录
	 * @author 西安工业大学蓝桥学员-刘晓莉
	 * @time 2017年5月21日 下午4:11:15
	 * @return String
	 */
	@RequestMapping("/showUserCreditMoneyRecord")
	public String selUserCreditMoneyRecord(@RequestParam("cardnum") String cardnum,
			@RequestParam("pageNow") Integer pageNow, Map<String, Object> map) {
		Card card = cardServiceImpl.selCardByCardNumber(cardnum);
		if (card!=null) {
		Integer isCreditCard = card.getIsCreditCard();
		if (isCreditCard==1) {
			Integer cardid = card.getId();
			PageUtil format = PageUtil.format(pageNow, 5);
			List<CreditSaveMoney> records = creditSaveMoneyServiceImpl.selectCreditByCardId(cardid);
			Pager<CreditSaveMoney> pager = new Pager<CreditSaveMoney>(pageNow, format.getOffset(), records.size(),
					records);
			map.put("card", card);
			map.put("records", pager);
			return "customer/credit_money_record";
		}else{
			map.put("msg", 1);
			return "customer/carnumwrong";
		}
		}else{
			map.put("msg", 2);
			return "customer/carnumwrong";
		}
	}

	/**
	 * @Title: toShowRecords
	 * @Description: 页面跳转
	 * @author 西安工业大学蓝桥学员-刘晓莉
	 * @time 2017年5月24日 下午6:29:17
	 * @return String
	 */
	@RequestMapping("/toShowRecords")
	public String toShowRecords() {
		return "customer/customer_cardnumber";

	}

	@RequestMapping("test")
	public String test() {
		return "customer/user_loan";
	}
	
	
	/**
	 * @Title: toSelect
	 * @Description: 根据贷款的银行卡号查询还款信息
	 * @author 西安工业大学蓝桥学员-张文龙 
	 * @time 2017年5月26日 下午2:14:15 
	 * @param cardNumber
	 * @return
	 * String
	 */
	@RequestMapping("/toSelectRepayment")
	public String toSelect(String cardNumber,Map<String, Object> map){
		//根据还款的银行卡号查询该卡贷款记录
		Card card = cardServiceImpl.selCardByCardNumber(cardNumber);
		Integer id = card.getId();
		LoanInfoExample example = new LoanInfoExample();
		org.lanqiao.bank.base.entity.LoanInfoExample.Criteria criteria = example.createCriteria();
		criteria.andCardIdEqualTo(id);
		
		List<LoanInfo> list = loanInfoServiceImpl.selectByExample(example);
		map.put("list", list);
		return "customer/customer_user_listLoanInfo";
	}
	
	
	/**
	 * @Title: repaymentPage
	 * @Description: 计算本金加利息总共应该还的money
	 * @author 西安工业大学蓝桥学员-张文龙 
	 * @time 2017年5月26日 下午3:43:06 
	 * @param loan
	 * @param request
	 * @return
	 * String
	 */
	@RequestMapping("/toRepaymentPage")
	public String repaymentPage(Integer id,HttpSession session){
		LoanInfo loan = loanInfoServiceImpl.selectByPrimaryKey(id);
		Integer loanMoney = loan.getLoanMoney();
		if(loanMoney!=0){
		String loanTime = loan.getLoanTime();
		double time = Double.parseDouble(loanTime);
		//根据还款方式，计算每期应还的金额，已还款期数，剩余还款期数，以及计算剩余还款的金额
		//等额本息的还款方式
		if(loan.getRepaymentMode()==1){
			Double rate = loan.getInterest().getRate();
			//根据贷款的id去还款表里查询所有的还款记录
			RepaymentExample repaymentExample = new RepaymentExample();
			Criteria criteria = repaymentExample.createCriteria();
			criteria.andLoanIdEqualTo(id);
			List<Repayment> list = repaymentServiceImpl.selectByExample(repaymentExample);
			double totalMonth = 0;//已还的期数
			//根据请求的贷款记录中的还款金额和利率，计算需要还款的金额
			double totalRepaymentMoney = loan.getLoanMoney()*(1+(rate*0.01));//总共需要还的金额
			double repaymentMoney =loan.getLoanMoney()*(1+(rate*0.01));//还需要还的金额
			if(list.size()!=0){
				//遍历集合内的对象的money值，并在总需要还款数 中减去
				for(int i = 0;i<list.size();i++){
					repaymentMoney = repaymentMoney-(list.get(i).getMoney());
					//计算已经还款期数
					double perRepayment = (loan.getLoanMoney()*(1+(rate*0.01)))/(time*12);
					double totalMonth1 = list.get(i).getMoney()/perRepayment;
					BigDecimal b = new BigDecimal(totalMonth1);  
					double totalMonth2 =   b.setScale(0,   BigDecimal.ROUND_HALF_UP).doubleValue();
					totalMonth = totalMonth+totalMonth2;
					  }
			}else {
				 repaymentMoney = loan.getLoanMoney()*(1+(rate*0.01));
			}
			//剩余需要还的期数
			int  surplusMonth = (int)((time*12)-totalMonth);//剩余还款期数
			Integer mode = loan.getRepaymentMode();
			session.setAttribute("totalRepaymentMoney", totalRepaymentMoney);
			session.setAttribute("mode", mode);
			session.setAttribute("surplusMonth", surplusMonth);
			session.setAttribute("totalMonth", (int)totalMonth);
			session.setAttribute("repaymentMoney",repaymentMoney);
			session.setAttribute("loan", loan);
			return "customer/customer_user_repaymentPage";
		}else{
			//等额本金的还款方式
				//计算所有应还的本金加利息
					//计算平均每期的本金
				double alreadyRepayment = 0;//已经还了的金额
				double totalRepaymentMoneyDecimal = 0;//总共需要还的金额
				double totalRepaymentMoney = 0;
				double principal = loan.getLoanMoney();//总的本金
				double perprincipal =principal/(time*12);//每期需要还的本金
				Map<Integer, Double> m = new HashMap<Integer, Double>();
			for(int i=0;i<(time*12);i++){
				double interest = principal*loan.getInterest().getRate();//每期需要还的利息
				double totalRepaymentDecimal = interest + perprincipal;//每期需要还的本息和
				//将每期需要还的本息和保留一位小数
				BigDecimal b = new BigDecimal(totalRepaymentDecimal);  
				double totalRepayment = b.setScale(1,BigDecimal.ROUND_HALF_UP).doubleValue();
				System.out.println(i+":"+totalRepayment);
				totalRepaymentMoneyDecimal = totalRepaymentMoneyDecimal + totalRepayment;
				BigDecimal c = new BigDecimal(totalRepaymentMoneyDecimal);  
				totalRepaymentMoney = c.setScale(1,BigDecimal.ROUND_HALF_UP).doubleValue();
				System.out.println("totalRepaymentMoney:"+totalRepaymentMoney);
				m.put(i, totalRepayment);
				principal = principal - perprincipal;
			}
			//查询已还的金额
			//根据贷款的id去还款表里查询所有的还款记录
			RepaymentExample repaymentExample = new RepaymentExample();
			Criteria criteria = repaymentExample.createCriteria();
			criteria.andLoanIdEqualTo(id);
			List<Repayment> list = repaymentServiceImpl.selectByExample(repaymentExample);
			int surplusMonth = (int)time*12;//剩余还的期数
			int totalMonth = 0;
			if(list.size()!=0){
				//遍历集合内的对象的money值，求和
				for(int i = 0;i<list.size();i++){
					alreadyRepayment = alreadyRepayment+(list.get(i).getMoney());
					//计算已经还款期数
				}
				double mapMoney = 0;
				for (Map.Entry<Integer, Double> entry : m.entrySet()) {
						int key = entry.getKey();
						System.out.println("key"+key);
					   double value = entry.getValue();
					   System.out.println("value"+value);
					   mapMoney = mapMoney + value;
					   System.out.println("mapMoney"+mapMoney);
					   System.out.println("alreadyRepayment"+alreadyRepayment);
					   if(alreadyRepayment == mapMoney ){
						   //已还款期数
						    totalMonth = key+1;
						    System.out.println("totalMonth"+totalMonth);
					   }
				}
				//剩余还款期数
				surplusMonth = surplusMonth - totalMonth;
				}
			double repaymentMoneyDecimal =  totalRepaymentMoney - alreadyRepayment;
			BigDecimal b = new BigDecimal(repaymentMoneyDecimal);  
			double repaymentMoney = b.setScale(1,BigDecimal.ROUND_HALF_UP).doubleValue();
			Integer mode = loan.getRepaymentMode();
			if(mode==1){
				String str1="等额本息还款";
				session.setAttribute("str1", str1);
			}else{
				String str1="等额本金还款";
				session.setAttribute("str1", str1);
			}
			session.setAttribute("totalRepaymentMoney", totalRepaymentMoney);
			session.setAttribute("alreadyRepayment", alreadyRepayment);
			session.setAttribute("mode", mode);
			session.setAttribute("surplusMonth", surplusMonth);
			session.setAttribute("totalMonth", (int)totalMonth);
			session.setAttribute("repaymentMoney",repaymentMoney);
			session.setAttribute("loan", loan);
			return "customer/customer_user_repaymentPage";
			}	
		}else{
			return "customer/customer_user_repayment_success";
		}
	}
	/**
	 * @Title: userRepayment
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-张文龙 
	 * @time 2017年5月26日 下午11:46:12 
	 * @param month
	 * @param loan
	 * @param request
	 * @return
	 * String
	 */
	@RequestMapping("/userRepayment")
	public String userRepayment(Integer month,Integer  id,HttpServletRequest request,HttpSession session){
		LoanInfo loan = (LoanInfo)session.getAttribute("loan");
		int surplusMonth = (int)session.getAttribute("surplusMonth");
		double repaymentMoney = (double)session.getAttribute("repaymentMoney");
		int mode = (int)session.getAttribute("mode");
		int totalMonth = (int)session.getAttribute("totalMonth");
		System.out.println("repaymentMoney"+repaymentMoney);
		if(mode==1){
		//计算需要还款金额
		if(surplusMonth-month!=0){
		//若果剩余还款期数不为1，则还款金额按贷款等额本息的还款方式，计算用户选择还款期数的金额
		Double rate = loan.getInterest().getRate();
		String loanTime = loan.getLoanTime();
		double time = Double.parseDouble(loanTime);
		double perRepayment = (loan.getLoanMoney()*(1+(rate*0.01)))/(time*12);
		double totalRepayment1 = perRepayment*month;
		BigDecimal b = new BigDecimal(totalRepayment1);  
		double totalRepayment =   b.setScale(1,   BigDecimal.ROUND_HALF_UP).doubleValue();  
		request.setAttribute("totalRepayment", totalRepayment);}else{
			//若还剩余所有期数，则还款金额为：总的本息减去已还的本息和
		double	totalRepayment = repaymentMoney;
		request.setAttribute("totalRepayment", totalRepayment);
		}
		}else{
			String loanTime = loan.getLoanTime();
			double time = Double.parseDouble(loanTime);
			if(surplusMonth-month!=0){
				double principal = loan.getLoanMoney();
				double perprincipal =principal/(time*12);
				Map<Integer, Double> m = new HashMap<Integer, Double>();
			for(int i=0;i<(time*12);i++){
				double interest = principal*loan.getInterest().getRate();
				double totalRepaymentDecimal = interest + perprincipal;
				BigDecimal b = new BigDecimal(totalRepaymentDecimal);  
				double totalRepaymentMap =   b.setScale(1,   BigDecimal.ROUND_HALF_UP).doubleValue();
				System.out.println("+++++++++++++++++++++++");
				System.out.println(i+":"+totalRepaymentMap);
				m.put(i, totalRepaymentMap);
				principal = principal - perprincipal;
			}
			//计算用户选择还的期数的金额
			double totalRepayment = 0;
			for(int i=totalMonth;i<totalMonth+month;i++){
				Double double1 = m.get(i);
				totalRepayment = totalRepayment + double1;
				System.out.println("totalRepayment:"+totalRepayment);
			}
			request.setAttribute("totalRepayment", totalRepayment);
			}else{
				double totalRepayment = repaymentMoney;
				request.setAttribute("totalRepayment", totalRepayment);
			}
		}
		return "customer/customer_user_repayment_money";
	}
	
	/**
	 * @Title: repayment
	 * @Description: 还款
	 * @author 西安工业大学蓝桥学员-张文龙 
	 * @time 2017年5月26日 下午2:21:42 
	 * @param id
	 * @param money
	 * @param map
	 * @return
	 * String
	 */
	@RequestMapping("/repayment")
	public String repayment(double money,double totalRepayment,HttpSession session){
		//通过贷款id查询贷款信息
		LoanInfo loanInfo = (LoanInfo)session.getAttribute("loan");
		Repayment repayment = new Repayment();
		Date time= new java.sql.Date(new java.util.Date().getTime());
		//给repayment赋值
		System.out.println("money"+money);
		repayment.setMoney(money);
		repayment.setCardId(loanInfo.getCardId());
		repayment.setCreateTime(time);
		repayment.setLoanId(loanInfo.getId());
		repayment.setUserId(loanInfo.getUserId());
		//插入一条还款信息
		repaymentServiceImpl.insertRepayment(repayment);
		double repaymentMoney = (double)session.getAttribute("repaymentMoney");
		//判断是否还清，如果还清，则更新贷款表的贷款金额
		if((repaymentMoney-money)==0){
			loanInfo.setLoanMoney(0);
			loanInfoServiceImpl.updateByPrimaryKey(loanInfo);
		}
		return "customer/user_repay_success";
	}
}
