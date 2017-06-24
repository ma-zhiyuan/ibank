/**
 * 
 */
package org.lanqiao.bank.base.dao;

import java.util.List;

import org.lanqiao.bank.base.entity.CustomerReplay;
import org.lanqiao.bank.base.util.PageUtil;

/**@ClassName: CustomerReplay 
 * @Description: 客服回复的Dao
 * @author 西安工业大学蓝桥学员-孙新召
 * @time 2017年5月7日 下午1:39:03  
 */
public interface CustomerReplayDao {
	
	/**
	 * @Title: insertCustomerReplay
	 * @Description: 增加一个客服回复
	 * @author 西安工业大学蓝桥学员-孙新召
	 * @time 2017年5月7日 下午1:46:17 
	 * @param customerReplay
	 * @return
	 * int
	 */
	int insertCustomerReplay(CustomerReplay customerReplay);
	
	/**
	 * @Title: deleteCustomerRepaly
	 * @Description: 通过ID删除一个回复
	 * @author 西安工业大学蓝桥学员-孙新召
	 * @time 2017年5月7日 下午1:49:52 
	 * @param id
	 * @return
	 * int
	 */
	int deleteCustomerRepaly(int id);
	
	/**
	 * @Title: updateCustomerReplay
	 * @Description: 修改一个回复
	 * @author 西安工业大学蓝桥学员-孙新召
	 * @time 2017年5月7日 下午1:51:54 
	 * @param customerReplay
	 * @return
	 * int
	 */
	int updateCustomerReplay(CustomerReplay customerReplay);
	
	/**
	 * @Title: insertCustomerReplay
	 * @Description: 通过ID获取一个回复
	 * @author 西安工业大学蓝桥学员-孙新召
	 * @time 2017年5月7日 下午1:43:47 
	 * @param id
	 * @return
	 * int
	 */
	CustomerReplay selectCustomerReplayByID(int id); 
	
	
	/**@Title: getPageConsult
		 * @Description: 获取一页的回复
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017年5月7日 下午3:01:01
		 * @param void
		 * @return List
		 */
	List getPageConsult();

	/**@Title: selectCustomerReplayByUserConsultationID
	 * @Description: 通过用户咨询ID获取客服回复
	 * @author 西安工业大学蓝桥学员-孙新召
	 * @time 2017年5月14日 下午1:04:56 
	 * @param id
	 * @return
	 * List<CustomerReplay>
	 */
	List<CustomerReplay> selectCustomerReplayByUserConsultationID(int id);

	/**@Title: selectOnePageCustomerReplay
	 * @Description: 获取一页回复
	 * @author 西安工业大学蓝桥学员-孙新召
	 * @time 2017年5月14日 下午1:05:03 
	 * @param pageUtil
	 * @return
	 * List<CustomerReplay>
	 */
	List<CustomerReplay> selectOnePageCustomerReplay(PageUtil pageUtil);

	/**@Title: selectAllCustomerReplay
	 * @Description: 获取所有的回复
	 * @author 西安工业大学蓝桥学员-孙新召
	 * @time 2017年5月14日 下午1:05:08 
	 * @return
	 * List<CustomerReplay>
	 */
	List<CustomerReplay> selectAllCustomerReplay();
	
	CustomerReplay selectCustomerReplayByConsultIdTwo(Integer id);
}
