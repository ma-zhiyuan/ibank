package org.lanqiao.bank.service.impl.user;

import java.util.List;

import org.lanqiao.bank.base.dao.CreditrepaymentDao;
import org.lanqiao.bank.base.entity.Creditrepayment;
import org.lanqiao.bank.base.entity.CreditrepaymentExample;
import org.lanqiao.bank.service.user.CreditrepaymentDaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * @ClassName: CreditrepaymentDaoServiceImpl 
 * @Description: 还款记录的service实现类
 * @author 西安工业大学蓝桥学员-孙新召
 * @time 2017年5月24日 下午8:39:17
 */
@Service
public class CreditrepaymentDaoServiceImpl implements CreditrepaymentDaoService{

	@Autowired
	CreditrepaymentDao creditrpaymentDao;
	
	@Override
	public int insertCreditRepayment(Creditrepayment creditrepayment) {
		return creditrpaymentDao.insert(creditrepayment);
	}

	@Override
	public int deleteCreditRepayment(int id) {
		return creditrpaymentDao.deleteByPrimaryKey(id);
	}

	@Override
	public int updateCreditRepayment(Creditrepayment creditrepayment) {
		return creditrpaymentDao.updateByPrimaryKey(creditrepayment);
	}

	@Override
	public Creditrepayment selectCreditRepayment(int id) {
		return creditrpaymentDao.selectByPrimaryKey(id);
	}

	@Override
	public List<Creditrepayment> selectAllCreditrepayment(int cardid) {
		return creditrpaymentDao.selectByCardID(cardid);
	}
	
}
