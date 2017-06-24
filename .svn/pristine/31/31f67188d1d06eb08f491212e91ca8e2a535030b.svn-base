package org.lanqiao.bank.base.dao;

import java.util.List;

import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.User;
import org.lanqiao.bank.base.util.PageUtil;

/**
 * @ClassName: UserDao
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月22日 上午9:07:57
 */
public interface UserDao {
	/**
	 * @Title: getAllUser
	 * @Description: 查询全部用户
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017.4.22
	 * @param void
	 * @return List
	 */
	List<User> getAllUser();

	/**
	 * @Title: insertUser
	 * @Description: 增加用户
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月22日 上午9:08:03
	 * @param user
	 * @return int
	 */
	int insertUser(User user);

	/**
	 * @Title: deleteUserById
	 * @Description: 删除用户
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月22日 上午9:08:06
	 * @param id
	 * @return int
	 */
	Integer deleteUserById(Integer id);
	
	Integer setState(Integer id);
	/**
	 * @Title: updateUserById
	 * @Description: 更行用户信息
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月22日 上午9:08:09
	 * @param user
	 * @return int
	 */
	int updateUserById(User user);

	/**
	 * @Title: selectUserById
	 * @Description: 根据id查找
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月22日 上午9:08:12
	 * @param id
	 * @return User
	 */
	User selectUserById(Integer id);

	/**
	 * @Title: selectUserByPhone
	 * @Description: 根据手机号码查找
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月22日 上午9:08:15
	 * @param phone
	 * @return User
	 */
	User selectUserByPhone(String phone);
	
	/**@Title: selectAllUser
	 * @Description: 查找全部的用户
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月23日 下午2:33:52 
	 * @return
	 * List<User>
	 */
	List<User> selectAllUser();

	/**@Title: getPageUser
		 * @Description: 展示一页用户信息
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017.4.23
		 * @param  
		 * @return
		 *  
		 */
	List getPageUser(PageUtil pageUtil);

	/**@Title: showAUserAllCard
		 * @Description: 获取当前用户的全部银行卡
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017.4.26
		 * @param  user
		 * @return list
		 *  
		 */
	List<Card> showAUserAllCard(User user);
	/**@Title: getPageUserOrderByAge
		 * @Description: 按年龄查找
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017年5月8日 下午8:52:53
		 * @param format
		 * @return List<User>
		 *  
		 */
	List <User> getPageUserOrderByAge(PageUtil format);
	User selectUserById2(Integer id);

	/**@Title: getUserLikeName
		 * @Description: 根据姓名模糊查找
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017年5月9日 下午5:43:58
		 * @param format
		 * @return List
		 *  
		 */
	List getUserLikeName(String likeName);

	/**@Title: getPageUserOrderByAgeDesc
		 * @Description: 按年龄倒序查询
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017年5月14日 上午11:16:37
		 * @param   format
		 * @return List<User>
		 */
	List<User> getPageUserOrderByAgeDesc(PageUtil format);
	
	/**@Title: getPageUserOrderByDate
		 * @Description: 按时间升序
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017年5月14日 上午11:22:57
		 * @param  format
		 * @return List<User>
		 */
	List<User> getPageUserOrderByDate(PageUtil format);
	
	/**@Title: getPageUserOrderByDateDesc
		 * @Description: 按时间倒序
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017年5月14日 上午11:23:22
		 * @param   format
		 * @return List<User>
		 *  
		 */
	List<User> getPageUserOrderByDateDesc(PageUtil format);

	User selectUserByEmail(String email);

	/**
	 * @Title: seletUserByName
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月14日 下午5:08:25 
	 * @param name
	 * @return
	 * User
	 */
	User seletUserByName(String name);

	
}
