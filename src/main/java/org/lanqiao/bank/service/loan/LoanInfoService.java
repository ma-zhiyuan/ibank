package org.lanqiao.bank.service.loan;


import java.util.List;

import org.lanqiao.bank.base.entity.LoanInfo;
import org.lanqiao.bank.base.entity.LoanInfoExample;
import org.springframework.stereotype.Service;
@Service
public interface LoanInfoService {

    int insert(LoanInfo record);

    int insertSelective(LoanInfo record);

    List<LoanInfo> selectByExample(LoanInfoExample example);

    long countByExample(LoanInfoExample example);
}
