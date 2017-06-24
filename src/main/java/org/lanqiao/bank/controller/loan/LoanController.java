package org.lanqiao.bank.controller.loan;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.Creditrepayment;
import org.lanqiao.bank.base.entity.Interest;
import org.lanqiao.bank.base.entity.Loan;
import org.lanqiao.bank.service.impl.admin.CardServiceImpl;
import org.lanqiao.bank.service.impl.loan.CreditrepaymentServiceImpl;
import org.lanqiao.bank.service.impl.loan.LoanInterestServiceImpl;
import org.lanqiao.bank.service.impl.loan.LoanServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
/**
 * @ClassName: LoanController 
 * @Description: 信用卡贷款控制层
 * @author 西安工业大学蓝桥学员-查文彬
 * @time 2017年5月21日 上午10:31:35
 */
@Controller
@RequestMapping("/LLoan/Loan")
public class LoanController {
	@Autowired
	LoanServiceImpl loanServiceImp;
	@Autowired 
	CardServiceImpl cardServiceImpl;
	@Autowired
	LoanInterestServiceImpl loanInterestImpl;
	@Autowired
	CreditrepaymentServiceImpl creditrepaymentServiceImpl;
	/**
	 * @Title: userLoan
	 * @Description: 贷款
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月21日 上午10:41:04 
	 * @return
	 * String
	 */
	@Transactional
	@RequestMapping("/userLoan")
	public String userLoan(@RequestParam("cardNumber") String cardNumber, 
			@RequestParam("money") Double money,
			/*贷款的期限*/@RequestParam("duration") Integer duration,
			/*客服传入利率*/@RequestParam("rate") Double rate, Map<String, Object> map){
		String msg = "网络问题，请稍后再试！";
		//根据卡号获取卡的对象
		Card card = cardServiceImpl.selCardByCardNumber(cardNumber);
		if(card==null){
			msg = "该卡不存在，确认后再输";
			map.put("msg", msg);
			return "customer/customer_loan_warn";
		} else {
			//查询该卡的现有贷款记录
			List<Loan> loans = loanServiceImp.getLoanByCardId(card.getId());
			if(loans!=null){
				for (int i = 0; i < loans.size(); i++) {
					Loan loan = loans.get(i);
					Integer isPayBack = loan.getIsPayBack();
					if (isPayBack==0) {
						msg = "该卡处于贷款状态中，超过最大贷款次数，请确认还款后再进行贷款操作！";
						map.put("msg", msg);
						return "customer/customer_loan_warn";
					}
				}
			}
			//符合贷款条件，进行贷款操作
			Interest interest = new Interest();
			interest.setBankId(1);
			interest.setDuration(duration);
			//设置为不是存款利息
			interest.setIsDeposit(0);
			interest.setRate(rate);
			//创建利息数据记录
			int isSuccess = loanInterestImpl.insert(interest);
			if (isSuccess > 0) {
				//创建贷款记录
				Loan loan = new Loan();
				//设置loan的属性
				loan.setCardId(card.getId());
				loan.setCreate_time(new Date());
				loan.setUpdate_time(new Date());
				if (money>0) {
					loan.setMoney(money);
				}else {
					msg = "输入金额有误，请重新输入";
					map.put("msg", msg);
					return "customer/customer_loan_warn";
				}
				loan.setUserId(card.getUserId());
				loan.setIsPayBack(0);//设置为0  表示未还
				//设置贷款利率
				loan.setInterestId(interest.getId());
				int result = loanServiceImp.insert(loan);
//				System.out.println("========================================heheh "+loan.getId());
				//为分期还款创建数据列
				Double interestDouble = money*rate;//计算贷款产生的一年利息。贷款金额x利率
				Creditrepayment creditrepayment = new Creditrepayment();
				for (Integer i = 1; i <= duration; i++) {
//					System.out.println("111"+(i==duration));
//					System.out.println("222"+(i.equals(duration)));
					if (i==duration) {
						//最后一次还款为本金+最后一年的利息
						creditrepayment.setCardId(card.getId());
						creditrepayment.setIsRepay(0);//设置未还
						creditrepayment.setLoanId(loan.getId());
						creditrepayment.setRepayMoney((interestDouble+money));
//						System.out.println(i+"执行每期还款数据"+i);
//						System.out.println(creditrepayment.getCardId());
						int insert = creditrepaymentServiceImpl.insert(creditrepayment);
						if (insert==0) {
//							System.out.println("1.........................................");
							msg = "操作失败，请重新操作";
							map.put("msg", msg);
							return "customer/customer_loan_warn";
						}
					} else {
						//贷款超过一年，前面的只用还利息
						creditrepayment.setCardId(card.getId());
						creditrepayment.setIsRepay(0);//设置未还
						creditrepayment.setLoanId(loan.getId());
						creditrepayment.setRepayMoney(interestDouble);
						int insert = creditrepaymentServiceImpl.insert(creditrepayment);
//						System.out.println(i+"执行每期还款数据"+i);
						if (insert == 0) {
//							System.out.println("2.........................................");
								msg = "操作失败，请重新操作";
								map.put("msg", msg);
								return "customer/customer_loan_warn";
						}
					}
				}
				
				if (result > 0) {
					msg = "贷款成功，请提醒用户按时还款！";
					map.put("msg", msg);
					return "customer/customer_loan_warn";
				}else {
					msg = "操作失败，请重新操作";
					map.put("msg", msg);
					return "customer/customer_loan_warn";
				}
			} else {
				msg = "操作失败，请重新操作";
				map.put("msg", msg);
				return "customer/customer_loan_warn";
			}
		}
	}
	/**
	 * @Title: toLoan
	 * @Description: 去客服贷款操作表单
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月21日 下午4:17:07 
	 * @return
	 * String
	 */
	@RequestMapping("/toLoan")
	public String toLoan(){
		return "customer/customer_user_loan";
	}
}
