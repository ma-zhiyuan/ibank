package org.lanqiao.bank.base.dao;

import java.util.List;

import org.lanqiao.bank.base.entity.CustomerService;
import org.lanqiao.bank.base.util.PageUtil;

/**
 * @ClassName: CustomerServiceDao
 * @Description: 客服持久层接口
 * @author 西安工业大学蓝桥学员-魏航
 * @time 2017年4月24日 下午7:59:09
 */
public interface CustomerServiceDao {

	/**
	 * @Title: insertCustomerService
	 * @Description: 增加客服
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年4月24日 下午8:05:16
	 * @param customerService
	 * @return int
	 */
	int insertCusService(CustomerService customerService);

	/**
	 * @Title: deleteCustomerService
	 * @Description: 根据编号删除客服
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年4月24日 下午9:55:09
	 * @param no
	 * @return int
	 */
	int deleteCusServiceByNo(int no);

	/**
	 * @Title: updateCustomerService
	 * @Description: 修改客服信息
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年4月24日 下午9:56:24
	 * @param customerService
	 * @return int
	 */
	int updateCusService(CustomerService customerService);

	/**
	 * @Title: selectCustomerServiceByNo
	 * @Description: 根据编号（no）查找客服
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年4月24日 下午9:51:27
	 * @param no
	 * @return CustomerService
	 */
	CustomerService selCusServiceByNo(int no);

	/**
	 * @Title: getAllCustomerService
	 * @Description: 查询所有客服
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年4月24日 下午9:53:59
	 * @return List<CustomerService>
	 */
	List<CustomerService> selAllCusService();

	/**
	 * @Title: getPageCusService
	 * @Description: 展示一页客服信息
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年4月25日 下午6:03:11
	 * @param pageUtil
	 * @return List
	 */
	List getPageCusService(PageUtil pageUtil);

	/**
	 * @Title: selectCustomerServiceByName
	 * @Description: 根据用户名查询
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月4日 下午6:52:40
	 * @param customerService
	 * @return List<CustomerService>
	 */
	CustomerService selectCustomerServiceByName(CustomerService customer);

	/**@Title: selCusServiceByCode
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-孙新召
	 * @time 2017年5月6日 下午5:08:26 
	 * @param code
	 * @return
	 * CustomerService
	 */
	CustomerService selCusServiceByCode(String code);

}
