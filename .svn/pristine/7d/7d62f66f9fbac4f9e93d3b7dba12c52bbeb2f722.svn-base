package org.lanqiao.bank.service.impl.repayment;

import java.util.List;

import org.lanqiao.bank.base.dao.RepaymentDao;
import org.lanqiao.bank.base.entity.Repayment;
import org.lanqiao.bank.base.entity.RepaymentExample;
import org.lanqiao.bank.service.repayment.RepaymentSerevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * @ClassName: RepaymentServiceImpl 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-张文龙
 * @time 2017年5月26日 下午2:48:28
 */
@Service
public class RepaymentServiceImpl implements RepaymentSerevice{
	
	@Autowired
	RepaymentDao repaymentMapper;
	
	/**
	 * 插入一条还款记录
	 */
	@Override
	public int insert(Repayment repayment) {
		return repaymentMapper.insert(repayment);
	}

	public List<Repayment> selectByExample(RepaymentExample repaymentExample) {
		return repaymentMapper.selectByExample(repaymentExample);
	}
	
	
	public int insertRepayment(Repayment repayment){
		int i = repaymentMapper.insertRepayment(repayment);
		return i;
	}
}
