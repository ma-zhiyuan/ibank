package org.lanqiao.bank.service.admin;


import java.util.List;
import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Bank;
import org.lanqiao.bank.base.entity.BankExample;

/**
 * @ClassName: BankService 
 * @Description: 银行逻辑处理层
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年4月24日 上午9:38:50
 */
@Deprecated
public interface BankService {
	/**
	 * @Title: insertBank
	 * @Description: 增加银行的接口方法
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年4月24日 下午7:21:39 
	 * @param bank
	 * @return
	 * int
	 */
	int insertBank(Bank bank);
	/**
	 * @Title: deleteBank
	 * @Description: 删除银行的接口方法
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年4月26日 下午5:19:04 
	 * @param id
	 * @return
	 * int
	 */
	int deleteBank(Integer id);
	/**
	 * @Title: getAllBank
	 * @Description: 分页查询所有银行的接口方法
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年4月26日 下午5:19:56 
	 * @return
	 * List<Bank>
	 */
	List<Bank> getAllBank(BankExample example);
	/**
	 * @Title: updateBank
	 * @Description: 根新一个银行的接口方法
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年4月26日 下午5:24:54 
	 * @param bank
	 * @return
	 * int
	 */
	int updateBank(Bank bank);
	
	/**@Title: selectBankByExampleAndPager
	 * @Description: 根据条件和分页查询银行
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月27日 下午12:25:36 
	 * @param bankExample
	 * @param pager
	 * @return
	 * List<Bank>
	 */
	List<Bank> selectBanksByPagerAndCondiction(Pager<Bank> pager, BankExample example);
	
	List<Bank> selectByExample(BankExample example);
	
}
