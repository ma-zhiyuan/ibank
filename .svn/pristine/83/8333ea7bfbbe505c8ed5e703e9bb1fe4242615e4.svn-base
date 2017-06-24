package org.lanqiao.bank.service.impl.customer;

import org.lanqiao.bank.base.dao.CustomerServiceDao;
import org.lanqiao.bank.base.entity.CustomerService;
import org.lanqiao.bank.service.customer.CustomerServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName: CustomerServiceImpl 
 * @Description: 客服业务逻辑实现类
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年5月4日 下午6:35:35
 */
@Service
public class CustomerServiceImpl implements CustomerServices{
	
	/**
	 * 注入客服持久层接口
	 */
	@Autowired
	private CustomerServiceDao customerServiceDao;
	
	@Override
	public CustomerService checkLogin(CustomerService customer) {
		System.out.println(customer);
		System.out.println(customerServiceDao.selectCustomerServiceByName(customer));
		//直接返回持久层返回的数据
		return customerServiceDao.selectCustomerServiceByName(customer);
	}

}
