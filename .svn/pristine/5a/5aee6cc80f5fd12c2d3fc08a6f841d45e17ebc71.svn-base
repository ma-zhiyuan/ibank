package org.lanqiao.bank.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.CardExample;

/**@ClassName: CardDao 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月25日 下午4:19:00  
 */
public interface CardDao {
    long countByExample(CardExample example);

    int deleteByExample(CardExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Card card);

    int insertSelective(Card record);

    List<Card> selectByExample(@Param("example")CardExample example, @Param("pager") Pager<Card> pager);

    Card selectByPrimaryKey(Integer id);
    
    Card selectCardById(Integer id);

    int updateByExampleSelective(@Param("record") Card record, @Param("example") CardExample example);

    int updateByExample(@Param("record") Card record, @Param("example") CardExample example);

    int updateByPrimaryKeySelective(Card record);

    int updateByPrimaryKey(Card record);
    
    List<Card> getCardsByUserId(Integer id);

	List<Card> selectCard(int user_id);
	
	List<Card> selectCardByUserId(int user_id);
	
	Double getAllMoney();
	
	Integer passCard(Integer id);
	Card selCardById (Integer id);

	Card selCardByCardNumber(String cardId);//TODO
}