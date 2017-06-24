package org.lanqiao.bank.base.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.lanqiao.bank.base.entity.Loan;
import org.lanqiao.bank.base.entity.LoanExample;

public interface LoanDao {
    long countByExample(LoanExample example);

    int deleteByExample(LoanExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Loan record);

    int insertSelective(Loan record);

    List<Loan> selectByExample(LoanExample example);

    Loan selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Loan record, @Param("example") LoanExample example);

    int updateByExample(@Param("record") Loan record, @Param("example") LoanExample example);

    int updateByPrimaryKeySelective(Loan record);

    int updateByPrimaryKey(Loan record);
    
    List<Loan> getLoanByCardId(Integer cardId);
}