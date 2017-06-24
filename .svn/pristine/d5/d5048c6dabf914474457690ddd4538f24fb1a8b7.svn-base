/**@ClassName: CardDaoTest.java 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月24日 下午6:38:58  
 */
package org.lanqiao.bank.dao;

import static org.junit.Assert.*;

import java.util.List;
import java.util.Random;

import org.junit.Test;
import org.lanqiao.bank.base.dao.CardDao;
import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.CardExample;
import org.lanqiao.bank.base.entity.CardExample.Criteria;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @ClassName: CardDaoTest
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月24日 下午6:38:58
 */
public class CardDaoTest extends BankDaoTest {
	@Autowired
	private CardDao cardDao;

	private Logger logger = LoggerFactory.getLogger(getClass());

	@Test
	public void testCountByExample() {
		long number = cardDao.countByExample(null);
		logger.info("number = {}", number);
	}

	/**
	 * Test method for
	 * {@link org.lanqiao.bank.base.dao.CardDao#deleteByExample(org.lanqiao.bank.base.entity.example.CardExample)}.
	 */
	@Test
	public void getAllMoney() {
		Double money = cardDao.getAllMoney();
		System.out.println(money);
	}

	@Test
	public void testDeleteByExample() {
		fail("Not yet implemented");
	}

	/**
	 * Test method for
	 * {@link org.lanqiao.bank.base.dao.CardDao#deleteByPrimaryKey(java.lang.Integer)}.
	 */
	@Test
	public void testDeleteByPrimaryKey() {
		fail("Not yet implemented");
	}

	/**
	 * Test method for
	 * {@link org.lanqiao.bank.base.dao.CardDao#insert(org.lanqiao.bank.base.entity.Card)}.
	 */
	@Test
	public void testInsert() {
		Card card = new Card();
		for (int i = 0; i < 50; i++) {
			card.setBalance(new Random().nextInt(2000) + 0.7);
			card.setNumber("222222222222222222" + i);
			card.setBankId(1);
			card.setUserId(6);
			cardDao.insert(card);
		}
	}

	/**
	 * Test method for
	 * {@link org.lanqiao.bank.base.dao.CardDao#insertSelective(org.lanqiao.bank.base.entity.Card)}.
	 */
	@Test
	public void testInsertSelective() {
		fail("Not yet implemented");
	}

	/**
	 * Test method for
	 * {@link org.lanqiao.bank.base.dao.CardDao#selectByExample(org.lanqiao.bank.base.entity.example.CardExample)}.
	 */
	@Test
	public void testSelectByExample() {
		Pager<Card> pager = new Pager<Card>();
		pager.setCurrentPage(1);
		pager.setRowPerPage(5);
		CardExample cardExample = new CardExample();
		Criteria criteria = cardExample.createCriteria();
		criteria.andIdGreaterThanOrEqualTo(30);
		List<Card> cards = cardDao.selectByExample(cardExample, pager);
		for (int i = 0; i < cards.size(); i++) {
			logger.info("card = {}", cards.get(i));
		}
	}

	/**
	 * Test method for
	 * {@link org.lanqiao.bank.base.dao.CardDao#selectByPrimaryKey(java.lang.Integer)}.
	 */
	@Test
	public void testSelectByPrimaryKey() {
		fail("Not yet implemented");
	}

	/**
	 * Test method for
	 * {@link org.lanqiao.bank.base.dao.CardDao#updateByExampleSelective(org.lanqiao.bank.base.entity.Card, org.lanqiao.bank.base.entity.example.CardExample)}.
	 */
	@Test
	public void testUpdateByExampleSelective() {

	}

	/**
	 * Test method for
	 * {@link org.lanqiao.bank.base.dao.CardDao#updateByExample(org.lanqiao.bank.base.entity.Card, org.lanqiao.bank.base.entity.example.CardExample)}.
	 */
	@Test
	public void testUpdateByExample() {
		fail("Not yet implemented");
	}

	/**
	 * Test method for
	 * {@link org.lanqiao.bank.base.dao.CardDao#updateByPrimaryKeySelective(org.lanqiao.bank.base.entity.Card)}.
	 */
	@Test
	public void testUpdateByPrimaryKeySelective() {
		fail("Not yet implemented");
	}

	/**
	 * Test method for
	 * {@link org.lanqiao.bank.base.dao.CardDao#updateByPrimaryKey(org.lanqiao.bank.base.entity.Card)}.
	 */
	@Test
	public void testUpdateByPrimaryKey() {
		CardExample example = new CardExample();
		Criteria criteria = example.createCriteria();
		criteria.andBankIdEqualTo(1);
		criteria.andUserIdIsNull();
		List<Card> cards = cardDao.selectByExample(example, null);
		for (int i = 0; i < cards.size(); i++) {
			Card card = cards.get(i);
			card.setBalance(new Random().nextInt(2000) + 1.0);
			cardDao.updateByPrimaryKey(card);
		}
	}

}
