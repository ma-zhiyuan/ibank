package org.lanqiao.bank.base.util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
/**
 * @ClassName: MailUtil 
 * @Description: 发送认证电子邮件
 * @author 西安工业大学蓝桥学员-孙新召
 * @time 2017年5月6日 下午4:07:09
 */
public class MailUtil {
	//发送邮件
	public static void sendMail(String to,String code) throws Exception{
		//发送邮件
		Properties props = new Properties();
		props.setProperty("mail.smtp.host", "smtp.163.com");
		props.setProperty("mail.smtp.auth", "true");
		Session session = Session.getInstance(props,new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("lanqiao_bank@163.com", "ibank1");
			}
		});
		//创建邮件对象
		Message message = new MimeMessage(session);
		//设置发件人
		message.setFrom(new InternetAddress("lanqiao_bank@163.com"));
		//设置收件人
		message.setRecipient(RecipientType.TO, new InternetAddress(to));
		//设置主题
		message.setSubject("来自**银行的客服注册激活邮件");
		//设置邮件正文
		message.setContent("<h1>来自**银行的客服注册激活邮件，激活请点击下列连接<h1/><h3><a href='http://www.husuli.pw/ibank/LCustomer/CService/emailVerification?code="+code+"'>http://www.husuli.pw/ibank/LCustomer/CService/emailVerification?code="+code+"<a/><h3/> ", "text/html;charset=UTF-8");
		//发送邮件
		Transport.send(message);
	}
	
}
