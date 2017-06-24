 package org.lanqiao.bank.service.impl.admin;


import org.lanqiao.bank.base.dao.AdminDao;
import org.lanqiao.bank.base.entity.Admin;
import org.lanqiao.bank.service.admin.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName: AdminServiceImpl 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-姚亚萍
 * @time 2017年4月22日 上午10:52:11
 */
@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminDao adminDao;
	/**
	 * @Title: insertAdmin
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年4月22日 上午10:21:50 
	 * @param admin
	 * @return
	 * int
	 */
	public int insertAdmin(Admin admin){
		return adminDao.insertAdmin(admin);
	}
	/**
	 * @Title: deleteAdminById
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年4月22日 上午10:22:37 
	 * @param id
	 * @return
	 * int
	 */
	public int deleteAdminById(int id){
		return adminDao.deleteAdminById(id);
		
	}
	/**
	 * @Title: updateAdminById
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年4月22日 上午10:23:15 
	 * @param admin
	 * @return
	 * int
	 */
	public 	int updateAdminById(Admin admin){
		return adminDao.updateAdminById(admin);
	}
	/**
	 * @Title: selectAdminById
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年4月22日 上午10:23:35 
	 * @param id
	 * @return
	 * Admin
	 */
	public Admin selectAdminById(int id){
		return adminDao.selectAdminById(id);
	}
	
	
	/**
	 * @Title: 管理员登录
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-王泽华
	 * @time 2017年4月23日 上午11:53:55 
	 * @param admin
	 * void
	 */
	public Admin toLogin(String phone) {
	 Admin admin = adminDao.selectAdminByPhone(phone);
			return admin;
		
	}
	@Override
	public Admin selectAdminByPhone(String phone) {
		return adminDao.selectAdminByPhone(phone);
	}
}
