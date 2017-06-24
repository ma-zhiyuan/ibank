/**@ClassName: CommonUtil.java 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月24日 下午8:32:15  
 */
package org.lanqiao.bank.base.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

/**
 * @ClassName: CommonUtil
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月24日 下午8:32:15
 */
public class CommonUtil {
	private CommonUtil() {
	};

	/**
	 * @Title: createFolder
	 * @Description: 创建目录
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月17日 下午6:36:43
	 * @param path
	 * void
	 */
	public static void createFolder(String path) {
		File file = new File(path);
		if (!file.exists()) {
			file.mkdirs();
		}
	}

	/**
	 * @Title: readPropertiesData
	 * @Description: 根据条件读取配置文件信息
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月17日 下午6:05:23
	 * @param filePath
	 * @param keyName
	 * @return String
	 */
	public static String readPropertiesData(String filePath, String keyName) {
		InputStream is = CommonUtil.class.getClassLoader().getResourceAsStream(filePath);
		Properties properties = new Properties();
		String property = null;
		try {
			properties.load(is);
			property = properties.getProperty(keyName);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				is.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return property;
	}

	/**
	 * @Title: sendEmail
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月24日 下午8:38:22
	 * @param toEmail
	 * @param fromEmail
	 * @param title
	 * @param content
	 * @param sender
	 *            void
	 * @throws MessagingException
	 */
	public final static void sendEmail(String toEmail, String title, String content, JavaMailSender sender)
			throws MessagingException {

		MimeMessage messages = sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(messages, true, "UTF-8");
		helper.setFrom(CommonConstants.FROM_EMAIL_ADDRESS);
		helper.setTo(toEmail);
		helper.setSubject(title);
		helper.setText(content, true);
		sender.send(messages);
	}
}
