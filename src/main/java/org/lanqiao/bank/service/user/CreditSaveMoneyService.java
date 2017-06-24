package org.lanqiao.bank.service.user;

import java.util.List;

import org.lanqiao.bank.base.entity.CreditSaveMoney;

public interface CreditSaveMoneyService {

	

	/**
	 * @Title: insertCreditSaveMoney
	 * @Description: 添加信用卡存取款记录
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月21日 下午4:19:10
	 * @param creditSaveMoney
	 * @return int
	 */
	int insertCreditSaveMoney(CreditSaveMoney creditSaveMoney);

	/**
	 * @Title: selectCreditById
	 * @Description: 查询所有的信用卡存取款记录
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月21日 下午4:20:08
	 * @return List<CreditSaveMoney>
	 */
	List<CreditSaveMoney> selectCreditByCardId(Integer cardId);

}
