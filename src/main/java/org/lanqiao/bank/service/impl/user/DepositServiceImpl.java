package org.lanqiao.bank.service.impl.user;

import java.util.List;

import org.lanqiao.bank.base.dao.DepositDao;
import org.lanqiao.bank.base.entity.Deposit;
import org.lanqiao.bank.base.entity.DepositExample;
import org.lanqiao.bank.base.entity.DepositExample.Criteria;
import org.lanqiao.bank.service.user.DepositService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DepositServiceImpl implements DepositService{
	@Autowired
	DepositDao depositDao;

	@Override
	public int insert(Deposit record) {
		return depositDao.insert(record);
	}

	@Override
	public int updateByPrimaryKey(Deposit record) {
		return depositDao.updateByPrimaryKey(record);
	}

	@Override
	public Deposit selectByPrimaryKey(Integer id) {
		return depositDao.selectByPrimaryKey(id);
	}

	public List<Deposit> showDeposits(String cardId) {
		DepositExample example = new DepositExample();
		Criteria criteria = example.createCriteria();
		criteria.andCardIdEqualTo(Integer.parseInt(cardId));
		criteria.andIsTakeOutEqualTo(0);
		List<Deposit> Deposits = depositDao.selectByExample(example);
		return Deposits;
	}
	/**
	 * @Title: showCreditNoOutDeposits
	 * @Description: 存取款记录
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月31日 下午7:16:05 
	 * @param cardId
	 * @return
	 * List<Deposit>
	 */
	public List<Deposit> showCarditDeposits(DepositExample example) {
		return depositDao.selectByExample(example);
	}
	/**
	 * @Title: countByExample
	 * @Description: 查询到的数据条数
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月31日 下午8:08:34 
	 * @param example
	 * @return
	 */
	public long countByExample(DepositExample example) {
		return depositDao.countByExample(example);
	}

}
