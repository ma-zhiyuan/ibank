package org.lanqiao.bank.base.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.lanqiao.bank.base.util.CommonUtil;

/**
 * @ClassName: RootPathListener
 * @Description: 全局路径监听器
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年4月16日 上午11:36:54
 */
@WebListener
public class RootPathListener implements ServletContextListener {

	/**
	 * Default constructor.
	 */
	public RootPathListener() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see ServletContextListener#contextDestroyed(ServletContextEvent)
	 */
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
	}

	/**
	 * @see ServletContextListener#contextInitialized(ServletContextEvent)
	 */
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext servletContext = sce.getServletContext();
		String contextPath = servletContext.getContextPath();
		servletContext.setAttribute("basepath", contextPath);

		initUploadFolder(sce);
	}

	/**
	 * @Title: initUploadFolder
	 * @Description: 初始化上传目录结构
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月19日 下午4:08:38
	 * @param sce
	 * void
	 */
	private void initUploadFolder(ServletContextEvent sce) {
		String readPropertiesData = CommonUtil.readPropertiesData("datas.properties", "paths");
		String[] split = readPropertiesData.split(",");
		for (String string : split) {
			CommonUtil.createFolder(sce.getServletContext().getRealPath("/") + string);
		}
	}

}
