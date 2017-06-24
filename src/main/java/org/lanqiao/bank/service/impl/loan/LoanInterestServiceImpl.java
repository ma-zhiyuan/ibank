package org.lanqiao.bank.service.impl.loan;

import org.lanqiao.bank.base.dao.InterestDao;
import org.lanqiao.bank.base.entity.Interest;
import org.lanqiao.bank.service.loan.LoanInterestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * @ClassName: LoanInterestServiceImpl 
 * @Description: 贷款利息业务逻辑层
 * @author 西安工业大学蓝桥学员-查文彬
 * @time 2017年5月21日 上午11:43:10
 */
@Service
public class LoanInterestServiceImpl implements LoanInterestService {

	@Autowired
	InterestDao interestDao;
	@Override
	public int insert(Interest interest) {
		return interestDao.insert(interest);
	}

}
