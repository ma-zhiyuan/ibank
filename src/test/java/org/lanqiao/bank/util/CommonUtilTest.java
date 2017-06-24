/**@ClassName: CommonUtilTest.java 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月25日 上午12:23:58  
 */
package org.lanqiao.bank.util;

import javax.mail.MessagingException;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.lanqiao.bank.base.util.CommonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.DigestUtils;

/**
 * @ClassName: CommonUtilTest
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月25日 上午12:23:58
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-*.xml")
public class CommonUtilTest {
	@Autowired
	private JavaMailSender sender;
	
	@Test
	public void testCreateFolder(){
		CommonUtil.createFolder("C:\\Programs\\Opera\\a\\b\\c");
	}
	
	@Test
	public void testReadPropertiesData(){
		String readPropertiesData = CommonUtil.readPropertiesData("datas.properties", "paths");
		String[] split = readPropertiesData.split(",");
		for (String string : split) {
			System.out.println(string);
		}
	}

	@Test
	public void sendEmailTest() throws MessagingException {
		String toEmail = "1511749834@qq.com";
		String title = "睡觉了";
		String content = "明天开工";
		CommonUtil.sendEmail(toEmail, title, content, sender);
	}

	/**
	 * @Title: testDigest
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年4月26日 下午12:09:30 void
	 */
	@Test
	public void testDigest() {
		String md5DigestAsHex = DigestUtils.md5DigestAsHex("96e79218965eb72c92a549dd5a330112".getBytes());
		System.out.println(md5DigestAsHex);
	}
}
