package org.lanqiao.bank.base.util;

/**
 * @ClassName: Constants
 * @Description: 文件常量库
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年4月22日 上午10:57:35
 */
public class FileConstants {

	/**
	 * 上传文件基目录
	 */
	private final static String UPLOAD_BASE_PATH = "upload/";

	/**
	 * 用户目录
	 */
	public final static String USER_UPLOAD_PATH = UPLOAD_BASE_PATH + "user/";

	/**
	 * 管理员目录
	 */
	public final static String ADMIN_UPLOAD_PATH = UPLOAD_BASE_PATH + "admin/";

	/**
	 * 客服目录
	 */
	public final static String CUSTOMER_UPLOAD_PATH = UPLOAD_BASE_PATH + "customer/";
	
	
	/**
	 * 通知消息目录
	 */
	public final static String ANNOUNCEMENT_UPLOAD_PATH =UPLOAD_BASE_PATH+"announcement/";
	
	
	/**
	 * URL基础目录
	 */
	private final static String URL_BASE_PATH = "/views/";

	/**
	 * 用户URL
	 */
	public final static String URL_USER = URL_BASE_PATH + "user/";

	/**
	 * 管理员URL
	 */
	public final static String URL_ADMIN = URL_BASE_PATH + "admin/";

	/**
	 * 超级管理员URL
	 */
	public final static String URL_SUPERADMIN = URL_BASE_PATH + "superadmin/";

}
