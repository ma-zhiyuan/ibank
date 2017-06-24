package org.lanqiao.bank.service.impl.user;

import java.util.List;

import org.lanqiao.bank.base.dao.BankDao;
import org.lanqiao.bank.base.dao.UserDao;
import org.lanqiao.bank.base.entity.Bank;
import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.User;
import org.lanqiao.bank.base.util.PageUtil;
import org.lanqiao.bank.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

/**
 * @ClassName: UserServiceImpl
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-姚亚萍
 * @time 2017年4月22日 上午10:53:03
 */
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao userDao;
	@Autowired
	BankDao banDao;

	/**
	 * @Title: insertUser
	 * @Description: 插入并加密
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年4月22日 上午10:28:55
	 * @param user
	 * @return int
	 */
	public int insertUser(User user) {
		// 后台加密并给user赋值
		user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
		return userDao.insertUser(user);
	}

	/**
	 * @Title: deleteUserById
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年4月22日 上午10:28:59
	 * @param id
	 * @return int
	 */
	public int deleteUserById(int id) {
		return userDao.deleteUserById(id);
	}

	/**
	 * @Title: setState
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-高彩丽
	 * @time 2017年4月22日 上午10:28:59
	 * @param id
	 * @return int
	 */
	public int setState(int id) {
		return userDao.setState(id);
	}

	/**
	 * @Title: updateUserById
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年4月22日 上午10:29:40
	 * @param user
	 * @return int
	 */
	public int updateUserById(User user) {
		return userDao.updateUserById(user);
	}

	/**
	 * @Title: selectUserById
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年4月22日 上午10:30:10
	 * @param id
	 * @return User
	 */
	public User selectUserById(Integer id) {
		return userDao.selectUserById(id);
	}

	/**
	 * @Title: selectUserByPhone
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年4月22日 上午10:31:10
	 * @param phone
	 * @return User
	 */
	public User selectUserByPhone(String phone) {
		return userDao.selectUserByPhone(phone);
	}

	/**
	 * @Title: selectUserByPhone
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年4月22日 下午14:33
	 * @param void
	 * @return listUser
	 */
	@Override
	public List<User> showAllUser() {
		// TODO Auto-generated method stub
		List<User> allUser = userDao.getAllUser();
		return allUser;
	}

	/**
	 * @Title: userLogin
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-王卓华
	 * @time 2017年4月24日 下午4:51:58
	 * @param phone
	 * @return User
	 */
	public User userLogin(String phone) {
		User user = this.selectUserByPhone(phone);
		return user;
	}

	/**
	 * @Title: showPageUser
	 * @Description: 查询一页用户
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017.4.23
	 * @param begin
	 *            offset
	 * @return list
	 * 
	 */
	public List showPageUser(PageUtil pageUtil) {
		// TODO Auto-generated method stub
		List pageUser = userDao.getPageUser(pageUtil);
		return pageUser;
	}

	public List showPageUserByAge(PageUtil format) {
		List<User> list = userDao.getPageUserOrderByAge(format);
		return list;
	}

	/**
	 * @Title: getAUserAllCard
	 * @Description: 获取当前用户的全部银行卡
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017.4.26
	 * @param User
	 * @return list
	 * 
	 */
	public List getAUserAllCard(User user) {
		List<Card> showAUserAllCard = userDao.showAUserAllCard(user);
		for (Card card : showAUserAllCard) {
			card.setUser(user);
			Integer bankId = card.getBankId();
			Bank bank = banDao.selectByPrimaryKey(bankId);
			card.setBank(bank);
		}
		System.out.println(showAUserAllCard);
		return showAUserAllCard;
	}

	@Override
	public User selectUserById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public User selectUserById2(int id) {
		User user = userDao.selectUserById2(id);
		return user;
	}

	/**
	 * @Title: selectUserByEmail
	 * @Description: 根据邮箱查找用户
	 * @author 西安工业大学蓝桥学员-王泽华
	 * @time 2017年5月14日 上午10:13:22
	 * @param id
	 * @return User
	 */
	public User selectUserByEmail(String email) {
		User user = userDao.selectUserByEmail(email);
		return user;
	}

	/**
	 * @Title: showPageUserLikeName
	 * @Description: 姓名模糊查询
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月13日 下午12:33:41
	 * @param likeName
	 * @return List
	 * 
	 */
	public List showPageUserLikeName(String likeName) {
		// TODO Auto-generated method stub
		List list = userDao.getUserLikeName(likeName);
		return list;
	}

	/**
	 * @Title: showPageUserByAgeDesc
	 * @Description: 按年龄倒叙
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月14日 上午11:23:49
	 * @param format
	 * @return List
	 * 
	 */
	public List showPageUserByAgeDesc(PageUtil format) {
		// TODO Auto-generated method stub
		List<User> list = userDao.getPageUserOrderByAgeDesc(format);
		return list;
	}

	/**
	 * @Title: showPageUserByDate
	 * @Description: 按生日升序
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月14日 上午11:25:09
	 * @param format
	 * @return List
	 * 
	 */
	public List showPageUserByDate(PageUtil format) {
		List<User> pageUserOrderByDate = userDao.getPageUserOrderByDate(format);
		return pageUserOrderByDate;
	}

	/**
	 * @Title: showPageUserByDate
	 * @Description: 按生日倒序
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月14日 上午11:25:09
	 * @param format
	 * @return List
	 */
	public List showPageUserByDateDesc(PageUtil format) {
		List<User> pageUserOrderByDateDesc = userDao.getPageUserOrderByDateDesc(format);
		return pageUserOrderByDateDesc;
	}

	/**
	 * @Title: selectByName
	 * @Description: 根据用户姓名查找用户
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月14日 下午5:06:22
	 * @param name
	 * @return User
	 */
	public User seletUserByName(String name) {
		User user = userDao.seletUserByName(name);
		return user;
	}

}
