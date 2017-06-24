package org.lanqiao.bank.service.impl.loan;

import java.util.List;

import org.lanqiao.bank.base.dao.LoanDao;
import org.lanqiao.bank.base.entity.Loan;
import org.lanqiao.bank.service.loan.LoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * @ClassName: LoanServiceImpl 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-查文彬
 * @time 2017年5月21日 下午5:38:29
 */
@Service
public class LoanServiceImpl implements LoanService {

	@Autowired
	LoanDao loanDao;

	/**
	 * @Title: insert
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月21日 下午5:39:08 
	 * @param loan
	 * @return
	 */
	@Override
	public int insert(Loan loan) {
		return loanDao.insert(loan);
	}

	/**
	 * @Title: getLoanByCardId
	 * @Description: 根据银行卡的id获取贷款记录
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月24日 下午7:18:02 
	 * @param cardId
	 * @return
	 */
	@Override
	public List<Loan> getLoanByCardId(int cardId) {
		return loanDao.getLoanByCardId(cardId);
	}
	
}
