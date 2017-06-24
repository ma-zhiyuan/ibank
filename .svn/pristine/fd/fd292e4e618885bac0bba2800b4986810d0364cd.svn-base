package org.lanqiao.bank.service.impl.user;

import java.util.List;

import org.lanqiao.bank.base.dao.CreditSaveMoneyDao;
import org.lanqiao.bank.base.entity.CreditSaveMoney;
import org.lanqiao.bank.base.entity.CreditSaveMoneyExample;
import org.lanqiao.bank.base.util.PageUtil;
import org.lanqiao.bank.service.user.CreditSaveMoneyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName: CreditSaveMoneyServiceImpl
 * @Description: 信用卡
 * @author 西安工业大学蓝桥学员-魏航
 * @time 2017年5月21日 下午4:22:34
 */
@Service
public class CreditSaveMoneyServiceImpl implements CreditSaveMoneyService {

	@Autowired
	CreditSaveMoneyDao creditSaveMoneyDao;

	/**
	 * @Title: insertCreditSaveMoney
	 * @Description: 添加存取款记录
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月21日 下午4:32:45
	 * @param creditSaveMoney
	 * @return
	 */
	@Override
	public int insertCreditSaveMoney(CreditSaveMoney creditSaveMoney) {
		int insert = creditSaveMoneyDao.insert(creditSaveMoney);
		return insert;
	}

	/**
	 * @Title: selectCreditById
	 * @Description: 根据卡的id查询存取款记录
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月21日 下午4:36:27
	 * @return
	 */
	@Override
	public List<CreditSaveMoney> selectCreditByCardId(Integer cardId) {
		List<CreditSaveMoney> creditSaveMoney= creditSaveMoneyDao.selectCreditByCardId(cardId);
		return creditSaveMoney;
	}

	/**
	 * @Title: selectMoneyRecordPage
	 * @Description: 分页方法
	 * @author 西安工业大学蓝桥学员-刘晓莉
	 * @time 2017年5月24日 下午7:16:45 
	 * @param format
	 * @return
	 * List<CreditSaveMoney>
	 */
	public List<CreditSaveMoney> selectMoneyRecordPage(PageUtil format) {
		List<CreditSaveMoney> creditSaveMoney =creditSaveMoneyDao.selectMoneyRecordPage(format);
		return creditSaveMoney;
	}

}
