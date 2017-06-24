package org.lanqiao.bank.controller.customer;

import java.io.File;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.lanqiao.bank.base.entity.LoanInfo;
import org.lanqiao.bank.base.util.FileConstants;
import org.lanqiao.bank.service.loan.LoanInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
/**
 * @ClassName: CustomerUserLoanController 
 * @Description: 客服给用户贷款
 * @author 西安工业大学蓝桥学员-姚亚萍
 * @time 2017年5月26日 下午7:44:11
 */
@Controller
@RequestMapping("/LCustomer/UCustomer")
public class CustomerUserLoanController {

	@ModelAttribute
	public void getModel( Map<String, Object> map) {
		 LoanInfo loanInfo = new LoanInfo();
			map.put("loanInfo", loanInfo);
	}
	
	
	@Autowired
	LoanInfoService loanInfoService;
	/**
	 * @Title: loan
	 * @Description: 客服给用户贷款
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年5月26日 下午7:42:11 
	 * @param userId    贷款用户
	 * @param loanMoney  贷款金额
	 * @param cardId    贷款银行卡
	 * @param loanTime  贷款年限
	 * @param rateId    贷款利率
	 * @param repaymentMode 还款方式
	 * @param createTime   贷款时的时间
	 * @param proppingMaterial  贷款材料
	 * @return
	 * String
	 */
	@RequestMapping("/loan")
	public String loan(@RequestParam("userId") Integer userId,
			@RequestParam("loanMoney") Integer loanMoney,
			@RequestParam("cardId") String cardId,
			@RequestParam("loan_year") String loan_year,
			@RequestParam("repaymentMode") String repaymentMode,
			@RequestParam("proppingMaterial") MultipartFile file,HttpServletRequest request){
		
		LoanInfo l = new LoanInfo();
		if (file != null) {
			// 文件保存路径
			String filePath = request.getSession().getServletContext().getRealPath("/") + FileConstants.CUSTOMER_UPLOAD_PATH
					+ file.getOriginalFilename();
			// 转存文件
			try {
				file.transferTo(new File(filePath));
				l.setProppingMaterial(file.getOriginalFilename());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}    
		    l.setCardId(Integer.valueOf(cardId));
		    l.setCreateTime(new Date());
		    l.setLoanTime(loan_year);
		    l.setLoanMoney(loanMoney);
		    l.setRepaymentMode(Integer.valueOf(repaymentMode));
		    l.setUserId(userId);
		    double loanyear = Double.parseDouble(loan_year);
		    if(loanyear<=1){
		    	l.setRateId(1);
		    }else if(1<loanyear&&loanyear<=5){
		    	l.setRateId(2);
		    }else{
		    	l.setRateId(3);
		    }
		    loanInfoService.insertSelective(l);
		    return "customer/user_loan_success";
	}
}
