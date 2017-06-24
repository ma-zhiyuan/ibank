package org.lanqiao.bank.service.impl.admin;

/**@ClassName: CardServiceImple.java 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月25日 上午9:26:39  
 */

import java.util.List;

import org.lanqiao.bank.base.dao.CardDao;
import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.CardExample;
import org.lanqiao.bank.service.admin.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName: CardServiceImple
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月25日 上午9:26:39
 */
@Service
public class CardServiceImpl implements CardService {
	@Autowired
	private CardDao cardDao;

	@Override
	public List<Card> selectCardsByPageAndCondiction(Pager<Card> pager, CardExample example) {
		// TODO Auto-generated method stub
		return cardDao.selectByExample(example, pager);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.lanqiao.bank.service.admin.CardService#countByExample(org.lanqiao.
	 * bank.base.entity.CardExample)
	 */
	@Override
	public long countByExample(CardExample example) {
		// TODO Auto-generated method stub
		return cardDao.countByExample(example);
	}

	@Override
	public Card selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		Card card = cardDao.selectByPrimaryKey(id);
		return card;
	}

	@Override
	public int updateByPrimaryKey(Card card) {
		// TODO Auto-generated method stub
		int i = cardDao.updateByPrimaryKey(card);
		return i;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.lanqiao.bank.service.admin.CardService#updateCard(org.lanqiao.bank.
	 * base.entity.Card)
	 */
	@Override
	public int updateCard(Card card) {
		int i = cardDao.updateByPrimaryKey(card);
		return i;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.lanqiao.bank.service.admin.CardService#deleteUserCardByCardId(int)
	 */
	@Override
	public int deleteUserCardByCardId(int id) {
		// TODO Auto-generated method stub
		return cardDao.deleteByPrimaryKey(id);
	}

	@Override
	public List<Card> getCardsByUserId(Integer id) {
		return cardDao.getCardsByUserId(id);
	}

	public List<Card> selectCard(int user_id) {
		// TODO Auto-generated method stub
		return cardDao.selectCard(user_id);
	}

	public List<Card> selectCardByUserId(int user_id) {
		// TODO Auto-generated method stub
		return cardDao.selectCardByUserId(user_id);
	}

	@Override
	public Double getAllMoney() {
		// TODO Auto-generated method stub
		Double allMoney = cardDao.getAllMoney();
		return allMoney;
	}

	@Override
	public int insert(Card card) {
		// TODO Auto-generated method stub
		int i = cardDao.insert(card);
		return i;
	}

	@Override
	public Integer passCard(Integer id) {
		// TODO Auto-generated method stub
		Integer i = cardDao.passCard(id);
		return null;
	}

	/**
	 * @Title: selectByUserId
	 * @Description: 根据卡号查询卡的信息
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月14日 下午3:05:14
	 * @param cardId
	 * @return Card
	 */
	public Card selCardByCardNumber(String cardId) {
		Card card = cardDao.selCardByCardNumber(cardId);
		return card;
	}

	
	
	@Override
	public int updateByPrimaryKeySelective(Card record) {
		int i=cardDao.updateByPrimaryKeySelective(record);
		return i;
	}

}
