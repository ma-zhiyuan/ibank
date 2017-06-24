package org.lanqiao.bank.dao;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.lanqiao.bank.base.dao.CustomerServiceDao;
import org.lanqiao.bank.base.dao.UserConsultationDao;
import org.lanqiao.bank.base.dao.UserDao;
import org.lanqiao.bank.base.entity.CustomerReplay;
import org.lanqiao.bank.base.entity.CustomerService;
import org.lanqiao.bank.base.entity.User;
import org.lanqiao.bank.base.entity.UserConsultation;
import org.lanqiao.bank.service.impl.customer.CustomerReplayImp;
import org.lanqiao.bank.service.impl.user.UserConsultationServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

public class UserConsultationTest extends BasicDaoTest{
	@Autowired
	UserConsultationDao ucd;
	@Autowired
	UserDao userDao;
	@Autowired
	CustomerServiceDao customerServiceDao;
	@Autowired(required=false)
	CustomerReplayImp customerReplayImp;
	/**
	 * @Title: selectUserConsultation
	 * @Description: 查询
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月7日 下午5:00:29 
	 * void
	 */
	@Test
	public void selectUserConsultation(){
//		UserConsultationServiceImpl ucs = new UserConsultationServiceImpl();
		UserConsultation uc = ucd.getUserConSultationById(1);
	}
	
	/**
	 * @Title: insertConsultation
	 * @Description: 插入
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月7日 下午5:55:30 
	 * void
	 */
	@Test
	public void insertConsultation(){
		User user = userDao.selectUserById(10);
		UserConsultation uc = new UserConsultation(user,"hahah", null, new Date(System.currentTimeMillis()), 0);
		int i = ucd.insertUserConsultation(uc);
		System.out.println(i);
		
	}

	@Test
	public void getCunsomer(){
		
		CustomerReplay cr = customerReplayImp.selectCustomerReplayByID(8);
		System.out.println(cr);
		CustomerService cs = cr.getCustomerService();
		System.out.println(cs);
	}
}
