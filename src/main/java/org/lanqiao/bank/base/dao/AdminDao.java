package org.lanqiao.bank.base.dao;

import org.lanqiao.bank.base.entity.Admin;

public interface AdminDao {

	/**
	 * @Title: 方法名
	 * @Description: 功能
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017.4.22
	 * @param admin
	 * @return void
	 * 
	 */
	int insertAdmin(Admin admin);

	/**
	 * @Title: 方法名
	 * @Description: 功能
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time
	 * @param
	 * @return
	 * 
	 */
	int deleteAdminById(int id);

	/**
	 * @Title: updateAdminById
	 * @Description: 修改管理员
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月22日 上午9:05:34
	 * @param admin
	 * @return int
	 */
	int updateAdminById(Admin admin);

	/**
	 * @Title: selectAdminById
	 * @Description: 根据id查找
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月22日 上午9:05:47
	 * @param id
	 * @return Admin
	 */
	Admin selectAdminById(int id);

	/**
	 * @Title: selectAdminByPhone
	 * @Description: 根据手机号码查找
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月22日 上午9:05:53
	 * @param phone
	 * @return Admin
	 */
	Admin selectAdminByPhone(String phone);
	
	
}
