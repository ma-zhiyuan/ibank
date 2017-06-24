package org.lanqiao.bank.base.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.lanqiao.bank.base.entity.Creditrepayment;
import org.lanqiao.bank.base.entity.CreditrepaymentExample;

public interface CreditrepaymentDao {
    long countByExample(CreditrepaymentExample example);

    int deleteByExample(CreditrepaymentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Creditrepayment record);

    int insertSelective(Creditrepayment record);

    List<Creditrepayment> selectByExample(CreditrepaymentExample example);

    Creditrepayment selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Creditrepayment record, @Param("example") CreditrepaymentExample example);

    int updateByExample(@Param("record") Creditrepayment record, @Param("example") CreditrepaymentExample example);

    int updateByPrimaryKeySelective(Creditrepayment record);

    int updateByPrimaryKey(Creditrepayment record);

	List<Creditrepayment> selectByCardID(int cardid);//通过卡的ID获取需要还款的信息
}