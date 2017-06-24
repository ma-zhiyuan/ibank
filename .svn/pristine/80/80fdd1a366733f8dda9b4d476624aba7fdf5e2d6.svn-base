package org.lanqiao.bank.dao;


import java.util.Date;

import org.junit.Test;
import org.lanqiao.bank.base.dao.UserDao;
import org.lanqiao.bank.base.entity.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;

/**@ClassName: UserDaoTest 
 * @Description: 用户单元测试
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月22日 上午9:12:47  
 */
public class UserDaoTest extends BasicDaoTest {
	@Autowired
	private UserDao userDao;
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	@Test
	public void testInsertUser() {
		String name = "uptowncat";
		int age = 100;
		int gender = 0;
		String address = "西安未央";
		String phone = "18309226300";
		String birthplace = "earth";
		Date birthday = new Date();
		String password = DigestUtils.md5DigestAsHex("123".getBytes());
		String photo = "123.jpg";
		String nickname = "cat";
		String email = "158668658@qq.com";
		User user = new User(name, age, gender, address, phone, birthplace, birthday, password, photo, nickname, email);
		userDao.insertUser(user);
		logger.info("user = {}", user);
	}
	

	@Test
	public void testDeleteUserById() {
		int id = 1;
		userDao.deleteUserById(id);
	}

	@Test
	public void testUpdateUserById() {
		String name = "uptowncat";
		int age = 100;
		int gender = 0;
		String address = "西安未央";
		String phone = "18309226305";
		String birthplace = "earth";
		Date birthday = new Date();
		String password = DigestUtils.md5DigestAsHex("123".getBytes());
		String photo = "123456.jpg";
		String nickname = "cat";
		String email = "158668658@qq.com";
		User user = new User(name, age, gender, address, phone, birthplace, birthday, password, photo, nickname, email);
		user.setId(1);
		userDao.updateUserById(user);
		logger.info("user = {}", userDao.selectUserById(1));
	}

	@Test
	public void testSelectUserById() {
		int id = 6;
		User user = userDao.selectUserById(id);
		logger.info("user = {}", user);
	}

	@Test
	public void testSelectUserByPhone() {
		String phone = "18309226301";
		User user = userDao.selectUserByPhone(phone);
		logger.info("user = {}", user);
	}

}
