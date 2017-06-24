package org.lanqiao.bank.service.loan;

import java.util.List;

import org.lanqiao.bank.base.entity.Loan;
/**
 * @ClassName: LoanService 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-查文彬
 * @time 2017年5月21日 下午5:38:52
 */
public interface LoanService {
	/**
	 * @Title: insert
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月21日 下午5:38:59 
	 * @param loan
	 * @return
	 * int
	 */
	int insert(Loan loan);
	/**
	 * @Title: getLoanByCardId
	 * @Description: 根据卡的id查询Loan对象，原则上每张卡只能有一次贷款记录。
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月24日 下午7:14:42 
	 * @param cardId
	 * @return
	 * Loan
	 */
	List<Loan> getLoanByCardId(int cardId);
}
