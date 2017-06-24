/**
 * 
 */
package org.lanqiao.bank.service.customer;

import java.util.List;

import org.lanqiao.bank.base.entity.Admin;
import org.lanqiao.bank.base.entity.CustomerService;

/**@ClassName: CustomerServiceService 
 * @Description: 客服服务层
 * @author 西安工业大学蓝桥学员-刘晓莉
 * @time 2017年4月24日 下午7:39:03  
 */

public interface CustomerServiceService {
	/**
	 * @Title: insertCustomerService
	 * @Description: 增加一个客服
	 * @author 西安工业大学蓝桥学员-刘晓莉
	 * @time 2017年4月24日 下午8:07:20 
	 * @param customerService
	 * @return
	 * int
	 */
	int insertCustomerService(CustomerService customerService);
	/**
	 * @Title: deleteCustomerServiceByNo
	 * @Description: 通过客服编号删除一个客服
	 * @author 西安工业大学蓝桥学员-刘晓莉
	 * @time 2017年4月25日 下午5:31:22 
	 * @param no
	 * @return
	 * int
	 */
	int deleteCustomerServiceByNo(int no);
	/**
	 * @Title: updateCusService
	 * @Description: 更新一个客服
	 * @author 西安工业大学蓝桥学员-刘晓莉
	 * @time 2017年4月25日 下午5:32:06 
	 * @param customerService
	 * @return
	 * int
	 */
	int updateCusService(CustomerService customerService);
	/**
	 * @Title: selCusServiceByNo
	 * @Description:通过客服编号查询一个客服
	 * @author 西安工业大学蓝桥学员-刘晓莉
	 * @time 2017年4月25日 下午5:32:34 
	 * @param no
	 * @return
	 * CustomerService
	 */
	CustomerService selCusServiceByNo(int no);
	/**
	 * @Title: selAllCusService
	 * @Description: 查询一波客服
	 * @author 西安工业大学蓝桥学员-刘晓莉
	 * @time 2017年4月25日 下午5:32:39 
	 * @return
	 * List<CustomerService>
	 */
	List<CustomerService> selAllCusService();
	/**
	 * @Title: selSusServiceByCode
	 * @Description: 通过激活码获取一个客服
	 * @author 西安工业大学蓝桥学员-孙新召
	 * @time 2017年5月6日 下午5:04:51 
	 * @param code
	 * @return
	 * CustomerService
	 */
	CustomerService selSusServiceByCode(String code);
}
