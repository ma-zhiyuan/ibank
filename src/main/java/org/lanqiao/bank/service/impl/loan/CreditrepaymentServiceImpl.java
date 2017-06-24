package org.lanqiao.bank.service.impl.loan;

import org.lanqiao.bank.base.dao.CreditrepaymentDao;
import org.lanqiao.bank.base.entity.Creditrepayment;
import org.lanqiao.bank.service.loan.CreditrepaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class CreditrepaymentServiceImpl implements CreditrepaymentService {

	@Autowired
	CreditrepaymentDao creditrepaymentDao;
	
	@Override
	public int insert(Creditrepayment creditrepayment) {
		System.out.println(creditrepaymentDao);
		return creditrepaymentDao.insert(creditrepayment);
	}

}
