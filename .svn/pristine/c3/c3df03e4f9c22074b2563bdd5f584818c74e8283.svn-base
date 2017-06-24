/**@ClassName: CardService.java 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月25日 上午9:26:13  
 */
package org.lanqiao.bank.service.admin;

import java.util.List;

import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Bank;
import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.CardExample;

/**
 * @ClassName: CardService
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月25日 上午9:26:13
 */
public interface CardService {
	
	public Integer passCard(Integer id);
	

	/**
	 * @Title: selectByPrimaryKey
	 * @Description: 功能
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017.4.28
	 * @param id
	 * @return Card
	 * 
	 */

	public Card selectByPrimaryKey(Integer id);

	/**
	 * 
	 * @Title: getCardsByUserId
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-张蒙轲
	 * @time 2017年5月3日 下午9:03:12
	 * @param id
	 * @return Card
	 */
	public List<Card> getCardsByUserId(Integer id);

	/**
	 * @Title: selectCardsByPageAndCondiction
	 * @Description: 根据分页和条件查询符合结果的银行卡
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月25日 上午10:40:47
	 * @param page
	 * @param example
	 * @return List<Card>
	 */
	public List<Card> selectCardsByPageAndCondiction(Pager<Card> pager, CardExample example);

	/**
	 * @Title: countByExample
	 * @Description: 获取符合条件的记录的总条数
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月25日 下午5:19:09
	 * @param example
	 * @return long
	 */
	public long countByExample(CardExample example);
	
	
	/**
	 * 
	 * @Title: updateByPrimaryKeySelective
	 * @Description: 修改card
	 * @author 西安工业大学蓝桥学员-孙明明
	 * @time 2017年5月19日 下午7:03:11 
	 * @param record
	 * @return
	 * int
	 */
	
	public int updateByPrimaryKeySelective(Card record);

	/**
	 * @Title: updateCard
	 * @Description: 修改card
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017.4.28
	 * @param card
	 * @return int
	 */
	public int updateByPrimaryKey(Card card);

	/**
	 * @Title: updateCard
	 * @Description:更新银行卡信息
	 * @author 西安工业大学蓝桥学员-闫宇
	 * @time 2017年4月28日 下午7:03:41
	 * @param card
	 * @return int
	 */
	public int updateCard(Card card);

	/**
	 * @Title: deleteUserCardByCardId
	 * @Description: 删除某一个用户的某一张卡
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年4月28日 下午7:04:48
	 * @param id
	 * @return int
	 */
	public int deleteUserCardByCardId(int id);

	/**
	 * @Title: getAllMoney
	 * @Description: 获取全部银行卡的全部金额
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月12日 下午8:20:09
	 * @param void
	 * @return double
	 */
	public Double getAllMoney();
	
	public int insert(Card card);
}
