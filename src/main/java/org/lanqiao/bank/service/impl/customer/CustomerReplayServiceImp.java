/**
 * 
 */
package org.lanqiao.bank.service.impl.customer;

import java.util.List;

import org.lanqiao.bank.base.dao.CustomerReplayDao;
import org.lanqiao.bank.base.entity.CustomerReplay;
import org.lanqiao.bank.base.util.PageUtil;
import org.lanqiao.bank.service.customer.CustomerReplayService;
import org.springframework.beans.factory.annotation.Autowired;

/**@ClassName: CustomerReplayImp 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-孙新召
 * @time 2017年5月12日 下午8:27:28  
 */
public class CustomerReplayServiceImp implements CustomerReplayService{

	@Autowired
	CustomerReplayDao crDao;
	//增加一个客服回复
	@Override
	public int insertCustomerReplay(CustomerReplay customerReplay) {
		System.out.println(customerReplay+"-------------");
		return crDao.insertCustomerReplay(customerReplay);
	}
	//删除一个客服回复
	@Override
	public int deleteCustomerRepaly(int id) {
		return crDao.deleteCustomerRepaly(id);
	}
	//更新一个客服回复
	@Override
	public int updateCustomerReplay(CustomerReplay customerReplay) {
		return crDao.updateCustomerReplay(customerReplay);
	}
	//通过ID获取客服回复
	@Override
	public CustomerReplay selectCustomerReplayByID(int id) {
		return crDao.selectCustomerReplayByID(id);
	}
	//通过咨询的ID获取一波客服回复
	@Override
	public List<CustomerReplay> selectCustomerReplayByUserConsultationID(int id) {
		return crDao.selectCustomerReplayByUserConsultationID(id);
	}
	//获取一页客服回复
	@Override
	public List<CustomerReplay> selectOnePageCustomerReplay(PageUtil pageUtil) {
		return crDao.selectOnePageCustomerReplay(pageUtil);
	}
	//获取所有的客服回复
	@Override
	public List<CustomerReplay> selectAllCustomerReplay() {
		System.out.println(crDao);
		return crDao.selectAllCustomerReplay();
	}


}
