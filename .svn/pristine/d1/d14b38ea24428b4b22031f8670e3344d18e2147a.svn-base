package org.lanqiao.bank.dao;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.lanqiao.bank.base.dao.CardDao;
import org.lanqiao.bank.base.dao.CustomerServiceDao;
import org.lanqiao.bank.base.entity.CustomerService;
import org.lanqiao.bank.base.util.PageUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * @ClassName: CustomerServiceDaoTest 
 * @Description: 客服单元测试
 * @author 西安工业大学蓝桥学员-魏航
 * @time 2017年4月26日 下午4:39:26
 */
public class CustomerServiceDaoTest extends BasicDaoTest{

	
	@Autowired
	private CustomerServiceDao cServiceDao;
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	/**
	 * @Title: testSelectCustomerServiceByName
	 * @Description: 测试根据用户名查询客服
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月4日 下午6:59:45 
	 * void
	 */
	@Test
	public void testSelectCustomerServiceByName(){
		CustomerService customerService = new CustomerService();
		customerService.setName("苏姐姐");
		customerService.setPassword("123456789");
		CustomerService selectCustomerServiceByName = cServiceDao.selectCustomerServiceByName(customerService);
		System.out.println(selectCustomerServiceByName);
	}
	
	/**
	 * @Title: testInsertCusService
	 * @Description: 添加客服方法测试
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年4月26日 下午4:39:42 
	 * void
	 */
	@Test
	public void testInsertCusService() {
		for (int i = 0; i < 30; i++) {
			
			String name="晓丽"+i;
			Integer age=22;
			Integer gender=1;
			String phone="188232347"+i;
			String email="1223423423@qq.com";
			String password="1234567890";
			String photo="qwertyuioiuytrewasdfghjkmnbvcxzxcvbnkjhgfdsweruytrewqwehtr";
			CustomerService cs=new CustomerService(name, age, gender, phone, email, password, photo);
			System.out.println(cs);
			cServiceDao.insertCusService(cs);
			logger.info("cs = {}", cs);
		}
	}

	
	/**
	 * @Title: testDeleteCusServiceByNo
	 * @Description: 根据no删除客服测试方法
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年4月26日 下午5:54:20 
	 * void
	 */
	@Test
	public void testDeleteCusServiceByNo() {
		Integer i=2;
		cServiceDao.deleteCusServiceByNo(i);
		
	}

	
	/**
	 * @Title: testUpdateCusService
	 * @Description: 修改客服信息测试方法
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年4月26日 下午5:40:15 
	 * void
	 */
	@Test
	public void testUpdateCusService() {
		Integer no=36;
		String name="微白";
		Integer age=20;
		Integer gender=1;
		String phone="18829343390";
		String email="121531447@qq.com";
		String password="123456789";
		String photo="sdfghjkkjhgfdsasdfghjhjhjjhjjgasfsdfghmdssdfghjjhgfdsasdfghdssdfghhgfdsasdf";
		CustomerService cs=new CustomerService(no,name, age, gender, phone, email, password, photo);
		System.out.println(cs);
		cServiceDao.updateCusService(cs);
		logger.info("cs = {}", cs);
	}

	/**
	 * @Title: testSelCusServiceByNo
	 * @Description: 根据编号查询一个客服信息测试方法
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年4月26日 下午5:56:55 
	 * void
	 */
	@Test
	public void testSelCusServiceByNo() {
		Integer i=1;
		CustomerService cusServiceByNo = cServiceDao.selCusServiceByNo(i);
		System.out.println(cusServiceByNo);
	}

	/**
	 * @Title: testSelAllCusService
	 * @Description: 查询所有客服信息测试方法
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年4月26日 下午5:59:12 
	 * void
	 */
	@Test
	public void testSelAllCusService() {
		List<CustomerService> selAllCusService = cServiceDao.selAllCusService();
		for (CustomerService customerService : selAllCusService) {
			System.out.println(customerService);
		}
	}

	@Test
	public void testGetPageCusService() {
		
	}

}
