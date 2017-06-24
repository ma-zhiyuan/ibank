/**@ClassName: TransferDaoTest.java 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月30日 下午4:44:05  
 */
package org.lanqiao.bank.dao;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.lanqiao.bank.base.dao.TransferDao;
import org.lanqiao.bank.base.dto.TransferDto;
import org.lanqiao.bank.base.entity.Transfer;
import org.lanqiao.bank.base.entity.TransferExample;
import org.lanqiao.bank.base.entity.TransferExample.Criteria;
import org.lanqiao.bank.service.impl.user.TransferServiceImpl;
import org.lanqiao.bank.service.user.TransferService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**@ClassName: TransferDaoTest 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月30日 下午4:44:05  
 */
public class TransferDaoTest extends BasicDaoTest {
	private Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private TransferDao tranferDao;
	
	/**
	 * Test method for {@link org.lanqiao.bank.base.dao.TransferDao#countByExample(org.lanqiao.bank.base.entity.TransferExample)}.
	 */
	@Test
	public void testCountByExample() {
		fail("Not yet implemented");
	}

	/**
	 * Test method for {@link org.lanqiao.bank.base.dao.TransferDao#deleteByExample(org.lanqiao.bank.base.entity.TransferExample)}.
	 */
	@Test
	public void testDeleteByExample() {
		fail("Not yet implemented");
	}

	/**
	 * Test method for {@link org.lanqiao.bank.base.dao.TransferDao#deleteByPrimaryKey(java.lang.Integer)}.
	 */
	@Test
	public void testDeleteByPrimaryKey() {
		fail("Not yet implemented");
	}

	/**
	 * Test method for {@link org.lanqiao.bank.base.dao.TransferDao#insert(org.lanqiao.bank.base.entity.Transfer)}.
	 */
	@Test
	public void testInsert() {
		Transfer transfer = new Transfer();
		transfer.setUserId(6);
		transfer.setFromCardId(9);
		transfer.setToCardId(10);
		transfer.setMessage("hello");
		transfer.setMoney(3d);
		transfer.setCreateTime(new Date());
		tranferDao.insert(transfer);
	}

	/**
	 * Test method for {@link org.lanqiao.bank.base.dao.TransferDao#insertSelective(org.lanqiao.bank.base.entity.Transfer)}.
	 */
	@Test
	public void testInsertSelective() {
		fail("Not yet implemented");
	}

	/**
	 * Test method for {@link org.lanqiao.bank.base.dao.TransferDao#selectByExample(org.lanqiao.bank.base.entity.TransferExample)}.
	 */
	@Test
	public void testSelectByExample() {
		TransferExample example = new TransferExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserIdEqualTo(6);
		criteria.andCreateTimeLessThan(new Date());
		example.setOrderByClause(" money limit 0, 6");
		List<Transfer> transfers = tranferDao.selectByExample(example);
		for(int i = 0; i < transfers.size(); i++) {
			logger.info("transfer = {}", transfers.get(i));
		}
		
	}
	
	@Test
	public void testSelectTransferByCardId(){
		TransferExample example = new TransferExample();
		Criteria criteria = example.createCriteria();
		criteria.andToCardIdEqualTo(25);
		List<Transfer> selectByExample = tranferDao.selectByExample(example);
		System.out.println(selectByExample);
		
	}

	/**
	 * Test method for {@link org.lanqiao.bank.base.dao.TransferDao#selectByPrimaryKey(java.lang.Integer)}.
	 */
	@Test
	public void testSelectByPrimaryKey() {
		
		Transfer key = tranferDao.selectByPrimaryKey(25);
		
		System.out.println(key);
		
		
	}

	/**
	 * Test method for {@link org.lanqiao.bank.base.dao.TransferDao#updateByExampleSelective(org.lanqiao.bank.base.entity.Transfer, org.lanqiao.bank.base.entity.TransferExample)}.
	 */
	@Test
	public void testUpdateByExampleSelective() {
		fail("Not yet implemented");
	}

	/**
	 * Test method for {@link org.lanqiao.bank.base.dao.TransferDao#updateByExample(org.lanqiao.bank.base.entity.Transfer, org.lanqiao.bank.base.entity.TransferExample)}.
	 */
	@Test
	public void testUpdateByExample() {
		fail("Not yet implemented");
	}

	/**
	 * Test method for {@link org.lanqiao.bank.base.dao.TransferDao#updateByPrimaryKeySelective(org.lanqiao.bank.base.entity.Transfer)}.
	 */
	@Test
	public void testUpdateByPrimaryKeySelective() {
		fail("Not yet implemented");
	}

	/**
	 * Test method for {@link org.lanqiao.bank.base.dao.TransferDao#updateByPrimaryKey(org.lanqiao.bank.base.entity.Transfer)}.
	 */
	@Test
	public void testUpdateByPrimaryKey() {
		fail("Not yet implemented");
	}

}
