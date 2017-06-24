package org.lanqiao.bank.service.customer;

import org.lanqiao.bank.base.entity.CustomerService;

/**
 * @ClassName: CustomerService
 * @Description: 客服业务逻辑接口
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年5月4日 下午6:35:01
 */
public interface CustomerServices {

	/**
	 * @Title: checkLogin
	 * @Description: 验证客服存在性
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月4日 下午6:40:45
	 * @param customer
	 * @return CustomerService
	 */
	CustomerService checkLogin(CustomerService customer);

}
