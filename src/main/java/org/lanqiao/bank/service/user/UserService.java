package org.lanqiao.bank.service.user;

import java.util.List;

import org.lanqiao.bank.base.entity.User;
/**
 * @ClassName: UserService 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-姚亚萍
 * @time 2017年4月22日 上午10:53:26
 */

public interface UserService {
	/**@Title: showAllUser
		 * @Description: 功能
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017.4.22
		 * @param  void
		 * @return list
		 */
	List<User> showAllUser();
	
	
	/**
	 * @Title: insertUser
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年4月22日 上午10:39:43 
	 * @param user
	 * @return
	 * int
	 */
	int insertUser(User user);
	/**
	 * @Title: deleteUserById
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年4月22日 上午10:40:01 
	 * @param id
	 * @return
	 * int
	 */
	int deleteUserById(int id);
	/**
	 * @Title: setState（给用户设置状态）
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-高彩丽
	 * @time 2017年4月22日 上午10:40:01 
	 * @param id
	 * @return
	 * int
	 */
	int setState(int id);
	/**
	 * @Title: updateUserById
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年4月22日 上午10:40:16 
	 * @param user
	 * @return
	 * int
	 */

	int updateUserById(User user);
	/**
	 * @Title: selectUserById
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年4月22日 上午10:40:32 
	 * @param id
	 * @return
	 * User
	 */
	User selectUserById(int id);
	/**
	 * @Title: selectUserByPhone
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年4月22日 上午10:40:46 
	 * @param phone
	 * @return
	 * User
	 */
	User selectUserByPhone(String phone);
	
}
