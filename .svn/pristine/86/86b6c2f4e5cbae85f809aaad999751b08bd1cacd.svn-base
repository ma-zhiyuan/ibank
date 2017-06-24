package org.lanqiao.bank.dao;

import static org.junit.Assert.fail;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.lanqiao.bank.base.dao.BankDao;
import org.lanqiao.bank.base.entity.Bank;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @ClassName: BankDaoTest 
 * @Description: 银行测试类
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年4月24日 上午10:47:50
 */
@Deprecated
public class BankDaoTest extends BasicDaoTest{

	@Autowired 
	private BankDao bankDao;
	private Logger logger=LoggerFactory.getLogger(getClass());
	
	@Test
	public void testDeleteByPrimaryKey() {
		int deleteByPrimaryKey = bankDao.deleteByPrimaryKey(3);
		logger.info("testDeleteByPrimaryKey={}",deleteByPrimaryKey);
	}

	@Test
	public void testInsert() {
		int insert = bankDao.insert(new Bank());
		System.out.println(insert);
	}

	@Test
	public void testInsertSelective() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectByPrimaryKey() {
		Bank selectByPrimaryKey = bankDao.selectByPrimaryKey(1);
		logger.info("bank = {}", selectByPrimaryKey);
	}

	@Test
	public void testUpdateByPrimaryKeySelective() {
		Bank bank = new Bank();
		bank.setId(2);
		int updateByPrimaryKey = bankDao.updateByPrimaryKeySelective(bank);
		logger.info("updateByPrimaryKey={}",updateByPrimaryKey);
	}

	@Test
	public void testUpdateByPrimaryKey() {
		fail("Not yet implemented");
	}
	
	/**@Title: testSelectByExample
	 * @Description: 测试条件分页查询银行
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月27日 下午12:36:30 
	 * void
	 */
	@Test
	public void testSelectByExample() {
		List<Bank> banks = bankDao.selectByExample(null);
		for(int i = 0; i < banks.size(); i++) {
			logger.info("bank = {}", banks.get(i));
		}
	}

}
