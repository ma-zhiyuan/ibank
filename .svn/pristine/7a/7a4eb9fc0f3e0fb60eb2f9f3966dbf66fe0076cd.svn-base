package org.lanqiao.bank.base.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.lanqiao.bank.base.entity.CreditSaveMoney;
import org.lanqiao.bank.base.entity.CreditSaveMoneyExample;
import org.lanqiao.bank.base.util.PageUtil;

public interface CreditSaveMoneyDao {
	
	//自动生成存取款类
    long countByExample(CreditSaveMoneyExample example);

    int deleteByExample(CreditSaveMoneyExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CreditSaveMoney record);

    int insertSelective(CreditSaveMoney record);

    List<CreditSaveMoney> selectByExample(CreditSaveMoneyExample example);

    CreditSaveMoney selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CreditSaveMoney record, @Param("example") CreditSaveMoneyExample example);

    int updateByExample(@Param("record") CreditSaveMoney record, @Param("example") CreditSaveMoneyExample example);

    int updateByPrimaryKeySelective(CreditSaveMoney record);

    int updateByPrimaryKey(CreditSaveMoney record);

	List<CreditSaveMoney> selectMoneyRecordPage(PageUtil format);

	List<CreditSaveMoney> selectCreditByCardId(Integer cardId);
}