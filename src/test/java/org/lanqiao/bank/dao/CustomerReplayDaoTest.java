/**
 * 
 */
package org.lanqiao.bank.dao;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.lanqiao.bank.base.dao.CustomerReplayDao;
import org.lanqiao.bank.base.dao.CustomerServiceDao;
import org.lanqiao.bank.base.dao.UserConsultationDao;
import org.lanqiao.bank.base.entity.CustomerReplay;
import org.lanqiao.bank.base.entity.CustomerService;
import org.lanqiao.bank.base.entity.UserConsultation;
import org.lanqiao.bank.base.util.PageUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**@ClassName: CustomerReplayDaoTest 
 * @Description: 客服回复单元测试类
 * @author 西安工业大学蓝桥学员-孙新召
 * @time 2017年5月7日 下午2:46:43  
 */

public class CustomerReplayDaoTest extends BasicDaoTest {

	@Autowired
	private CustomerReplayDao crDao;
	@Autowired
	private CustomerServiceDao csDao;
	@Autowired
	private UserConsultationDao ucDao;
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	
	
	
	@Test
	public void testselectOnePageCustomerReplay() {
		PageUtil pageUtil = PageUtil.format(1, 2);
		List<CustomerReplay> selectOnePageCustomerReplay = crDao.selectOnePageCustomerReplay(pageUtil);
		for (CustomerReplay customerReplay : selectOnePageCustomerReplay) {
			System.out.println(customerReplay);
		}
		
	}
	
	//ok
	@Test
	public void testInsertCustomerReplay() {
		System.out.println(crDao);
		int i = 5;
		CustomerService cusServiceByNo = csDao.selCusServiceByNo(i); //获取客服
		System.out.println(cusServiceByNo);
		UserConsultation userConsultation = ucDao.getUserConSultationById(1); //获取user咨询
		System.out.println(userConsultation);
		CustomerReplay cr = new CustomerReplay(cusServiceByNo, "这是一些内容", userConsultation,new Date());
		System.out.println(cr);
		int insertCustomerReplay = crDao.insertCustomerReplay(cr);
		System.out.println(insertCustomerReplay);
	}

	//被用户咨询外键连接，不能删除，需要将数据库从新设计一下
	@Test
	public void testDeleteCustomerRepaly() {
		
		int deleteCustomerRepaly = crDao.deleteCustomerRepaly(1);
		System.out.println(deleteCustomerRepaly);
	}

	//ok
	@Test
	public void testUpdateCustomerReplay() {
		CustomerReplay customerReplay = crDao.selectCustomerReplayByID(2);
		System.out.println(customerReplay);
		customerReplay.setContent("很烦，常常出错");
		int updateCustomerReplay = crDao.updateCustomerReplay(customerReplay);
		System.out.println(updateCustomerReplay);
	}

	//OK
	@Test
	public void testSelectCustomerReplayByID() {
		System.out.println(crDao);
		CustomerReplay selectCustomerReplayByID = crDao.selectCustomerReplayByID(2);
		System.out.println(selectCustomerReplayByID);
	}
	
	//ook
	@Test
	public void testselectCustomerReplayByUserConsultationID() {
		List<CustomerReplay> selectCustomerReplayByUserConsultationID = crDao.selectCustomerReplayByUserConsultationID(1);
		for (CustomerReplay customerReplay : selectCustomerReplayByUserConsultationID) {
			System.out.println(customerReplay);
		}
		
	}
	//ok
	@Test
	public void testselectAllCustomerReplay() {
		List<CustomerReplay> selectAllCustomerReplay = crDao.selectAllCustomerReplay();
		for (CustomerReplay customerReplay : selectAllCustomerReplay) {
			System.out.println(customerReplay);
		}
		
	}
	
	
	
}
