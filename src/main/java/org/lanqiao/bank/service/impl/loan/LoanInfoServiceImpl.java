package org.lanqiao.bank.service.impl.loan;

import java.util.List;

import org.lanqiao.bank.base.dao.LoanInfoDao;
import org.lanqiao.bank.base.entity.LoanInfo;
import org.lanqiao.bank.base.entity.LoanInfoExample;
import org.lanqiao.bank.base.util.PageUtil;
import org.lanqiao.bank.service.loan.LoanInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * @ClassName: LoanInterestServiceImpl 
 * @Description: 贷款业务逻辑层
 * @author 西安工业大学蓝桥学员-姚亚萍
 * @time 2017年5月21日 上午11:43:10
 */
@Service
public class LoanInfoServiceImpl implements LoanInfoService {

	@Autowired
    LoanInfoDao loanInfoDao;
	
	@Override
	public int insert(LoanInfo record) {
		
		return loanInfoDao.insert(record);
	}

	@Override
	public int insertSelective(LoanInfo record) {
		return loanInfoDao.insertSelective(record);
	}

	@Override
	public List<LoanInfo> selectByExample(LoanInfoExample example) {
	
		return loanInfoDao.selectByExample(example);
	}

	public List<LoanInfo> selectByUserId(Integer user_id){
		List<LoanInfo> list = loanInfoDao.selectByUserId( user_id);
		return list;
	}
	/**
	 * @Title: selectByPrimaryKey
	 * @Description: 根据主键查询贷款信息
	 * @author 西安工业大学蓝桥学员-张文龙 
	 * @time 2017年5月26日 下午2:27:08 
	 * @param id
	 * @return
	 * LoanInfo
	 */
	public LoanInfo selectByPrimaryKey(Integer id){
		return loanInfoDao.selectByPrimaryKey(id);
	}
	
	/**
	 * @Title: deleteByPrimaryKey
	 * @Description: 根据主键删除贷款信息
	 * @author 西安工业大学蓝桥学员-张文龙 
	 * @time 2017年5月26日 下午3:18:32 
	 * @param id
	 * @return
	 * int
	 */
	public int deleteByPrimaryKey(Integer id){
		return loanInfoDao.deleteByPrimaryKey(id);
	}
	
	public  int updateByPrimaryKey(LoanInfo record){
		return  loanInfoDao.updateByPrimaryKey(record);
	}

	public List getLoanInfos() {
		return loanInfoDao.getLoanInfos();
	}

	public List getAllLoanInfos(PageUtil format) {
		return loanInfoDao.getAllLoanInfos(format);
	}

	@Override
	public long countByExample(LoanInfoExample example) {
		// TODO Auto-generated method stub
		return loanInfoDao.countByExample(example);
	}


}
