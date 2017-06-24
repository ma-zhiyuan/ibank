package org.lanqiao.bank.service.user;

import java.util.List;

import org.lanqiao.bank.base.dao.CreditrepaymentDao;
import org.lanqiao.bank.base.entity.Creditrepayment;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @ClassName: CreditrepaymentDaoService 
 * @Description: 还款信息的service
 * @author 西安工业大学蓝桥学员-孙新召
 * @time 2017年5月24日 下午8:33:06
 */
public interface CreditrepaymentDaoService {
	

	int insertCreditRepayment (Creditrepayment creditrepayment);//增加一条贷款记录
	int deleteCreditRepayment (int id);//删除一条贷款记录
	int updateCreditRepayment (Creditrepayment creditrepayment);//修改一条贷款记录
	Creditrepayment selectCreditRepayment (int id);//查找一条贷款记录
	List<Creditrepayment> selectAllCreditrepayment(int cardid);// 查找一个卡的所有的记录
	
}
