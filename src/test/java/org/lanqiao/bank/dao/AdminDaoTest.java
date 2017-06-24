package org.lanqiao.bank.dao;


import org.junit.Test;
import org.lanqiao.bank.base.dao.AdminDao;
import org.lanqiao.bank.base.entity.Admin;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;

/**@ClassName: AdminDaoTest 
 * @Description: 管理员单元测试
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月22日 上午9:14:57  
 */
public class AdminDaoTest extends BasicDaoTest {
	@Autowired
	private AdminDao adminDao;
	private Logger logger = LoggerFactory.getLogger(getClass());
	@Test
	public void testInsertAdmin() {
		String name = "UpTownCat";
		String phone = "18309229301";
		String password = DigestUtils.md5DigestAsHex("123".getBytes());
		String photo = "123.jpg";	
		String email = "158668658@qq.com";
		Admin admin = new Admin(name, phone, password, photo, email);
		adminDao.insertAdmin(admin);
		logger.info("admin = {}", admin);
	}

	@Test
	public void testDeleteAdminById() {
		int id = 1;
		adminDao.deleteAdminById(id);
	}

	@Test
	public void testUpdateAdminById() {
		String name = "UpTownCat";
		String phone = "18309229301";
		String password = DigestUtils.md5DigestAsHex("123".getBytes());
		String photo = "123456.jpg";	
		String email = "158668658@qq.com";
		Admin admin = new Admin(name, phone, password, photo, email);
		admin.setId(1);
		adminDao.updateAdminById(admin);
		logger.info("admin = {}", adminDao.selectAdminById(1));
	}

	@Test
	public void testSelectAdminById() {
		int id = 1;
		Admin admin = adminDao.selectAdminById(id);
		logger.info("admin = {}", admin);
	}

	@Test
	public void testSelectAdminByPhone() {
		String phone = "18309226301";
		Admin admin = adminDao.selectAdminByPhone(phone);
		logger.info("admin = {}", admin);
	}

}
