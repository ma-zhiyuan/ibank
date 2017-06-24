package org.lanqiao.bank.base.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.lanqiao.bank.base.entity.Repayment;
import org.lanqiao.bank.base.entity.RepaymentExample;

public interface RepaymentDao {
    long countByExample(RepaymentExample example);

    int deleteByExample(RepaymentExample example);

    int deleteByPrimaryKey(Integer id);
    
    int insertRepayment(Repayment repayment);
    
    int insert(Repayment record);

    int insertSelective(Repayment record);

    List<Repayment> selectByExample(RepaymentExample example);

    Repayment selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Repayment record, @Param("example") RepaymentExample example);

    int updateByExample(@Param("record") Repayment record, @Param("example") RepaymentExample example);

    int updateByPrimaryKeySelective(Repayment record);

    int updateByPrimaryKey(Repayment record);
}