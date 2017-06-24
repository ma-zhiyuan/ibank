/**
 * 
 */
package org.lanqiao.bank.service.impl.customer;

import java.util.List;

import java.util.List;

import org.lanqiao.bank.base.dao.CustomerServiceDao;
import org.lanqiao.bank.base.entity.Admin;
import org.lanqiao.bank.base.entity.CustomerService;
import org.lanqiao.bank.base.util.MailUtil;
import org.lanqiao.bank.base.util.PageUtil;
import org.lanqiao.bank.service.customer.CustomerServiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName: CustomerServiceServiceImp
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-刘晓莉
 * @time 2017年4月24日 下午7:44:08
 */
@Service
public class CustomerServiceServiceImpl implements CustomerServiceService {
	@Autowired
	CustomerServiceDao customServiceDao;

	/**
	 * 
	 * @Description:增加一个客服
	 * @author 西安工业大学蓝桥学员-刘晓莉
	 */
	public int insertCustomerService(CustomerService customerService) {
		//发送邮件
		try {
			MailUtil.sendMail(customerService.getEmail(), customerService.getCode());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return customServiceDao.insertCusService(customerService);
	}

	/**
	 * 通过客服编号删除客服
	 */
	public int deleteCustomerServiceByNo(int no) {
		return customServiceDao.deleteCusServiceByNo(no);
	}

	/**
	 *更新一个客服   
	 */
	public int updateCusService(CustomerService customerService) {
		return customServiceDao.updateCusService(customerService);
	}

	/**
	 * 根据客服编号查询一个客服
	 */
	public CustomerService selCusServiceByNo(int no) {
		return customServiceDao.selCusServiceByNo(no);
	}

	/**
	 * 查询一波客服
	 */
	public List<CustomerService> selAllCusService() {
		return customServiceDao.selAllCusService();
	}

      
      
      /**
       * @Title: getPageCusService
       * @Description: 获取一页客服信息
       * @author 西安工业大学蓝桥学员-魏航
       * @time 2017年4月25日 下午6:07:38 
       * @param pageUtil
       * @return
       * List
       */
      public List getPageCusService(PageUtil pageUtil){
    	  List pageCusService = customServiceDao.getPageCusService(pageUtil);
    	  return pageCusService;
      }

	/**
	 * 通过客服激活码获取一个客服
	 */
	@Override
	public CustomerService selSusServiceByCode(String code) {
		
		return customServiceDao.selCusServiceByCode(code);
	}


      
}
