package org.lanqiao.bank.service.impl.admin;

import java.util.List;

import org.lanqiao.bank.base.dao.BankDao;
import org.lanqiao.bank.base.dao.InterestDao;
import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Bank;
import org.lanqiao.bank.base.entity.BankExample;
import org.lanqiao.bank.base.entity.Interest;
import org.lanqiao.bank.base.entity.InterestExample;
import org.lanqiao.bank.service.admin.BankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName: BankServiceImpl
 * @Description: BankService实现类
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年4月24日 上午9:40:12
 */
@Service
@Deprecated
public class BankServiceImpl implements BankService {

	/**
	 * 注入银行服务
	 */
	@Autowired
	private BankDao bankDao;
	//修改银行存取款利率  吴安安
	@Autowired
	private InterestDao interestDao;
	/**
	 * @Title: insertBank
	 * @Description: 管理员增加银行的业务逻辑层
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年4月24日 下午7:19:56 
	 * @param bank
	 * @return
	 * int
	 */
	@Override
	public int insertBank(Bank bank){
		return bankDao.insert(bank);
	}
	/**
	 * @Title: deleteBank
	 * @Description: 管理员删除一个银行的业务逻辑
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年4月26日 下午5:17:55 
	 * @param id
	 * @return
	 * int
	 */
	@Override
	public int deleteBank(Integer id){
		return bankDao.deleteByPrimaryKey(id);
	}
	/**
	 * @Title: deleteBank
	 * @Description: 管理员分页查询银行的业务逻辑
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年4月26日 下午5:18:55 
	 * @param id
	 * @return
	 * List<Bank>
	 */
	@Override
	public List<Bank> getAllBank(BankExample example) {
		return bankDao.selectByExample(example);
	}
	/**
	 * @Title: updateBank
	 * @Description: 管理员更新银行信息的业务逻辑
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年4月26日 下午5:33:17 
	 * @param bank
	 * @return 
	 */
	public int updateBank(Bank bank){
		return bankDao.updateByPrimaryKey(bank);
	}
	
	
	/* (non-Javadoc)
	 * @see org.lanqiao.bank.service.admin.BankService#selectBanksByPagerAndCondiction(org.lanqiao.bank.base.dto.Pager, org.lanqiao.bank.base.entity.BankExample)
	 */
	@Override
	public List<Bank> selectBanksByPagerAndCondiction(Pager<Bank> pager, BankExample example) {
		// TODO Auto-generated method stub
		return bankDao.selectByExample(example);
	}
	/* (non-Javadoc) 
	 * @see org.lanqiao.bank.service.admin.BankService#selectByExample(org.lanqiao.bank.base.entity.BankExample)
	 */
	@Override
	public List<Bank> selectByExample(BankExample example) {
		// TODO Auto-generated method stub
		return bankDao.selectByExample(example);
	}
	
	public Bank selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return bankDao.selectByPrimaryKey(id);
	}
	
	
	
	/**
	 * @Title: selectByPrimaryKey
	 * @Description: 查找利率，修改利率
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月20日 上午9:08:56 
	 * @param id
	 * @return
	 * Interest
	 */
	public Interest updateBankInterest(Integer id){
		return interestDao.selectByPrimaryKey(id);
	}
	
	/**
	 * @Title: selectByExample
	 * @Description: 根据条件获取interest
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月21日 下午2:17:29 
	 * @return
	 * List<Interest>
	 */
	public List<Interest> selectByExample(InterestExample example){
		return interestDao.selectByExample(example);
	}
	
	/**
	 * @Title: updateByPrimaryKey
	 * @Description:更新利率
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月21日 下午5:09:25 
	 * @param interest
	 * @return
	 * int
	 */
	public int updateByPrimaryKey(Interest interest){
		return interestDao.updateByPrimaryKey(interest);
	}
	/**
	 * @Title: insertInterest
	 * @Description: 添加银行利率
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月24日 下午7:32:53 
	 * @param interest
	 * @return
	 * int
	 */
	public int insertInterest(Interest interest){
		return interestDao.insert(interest);
	}
}

	

