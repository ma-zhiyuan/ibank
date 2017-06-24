package org.lanqiao.bank.service.customer;

import java.util.List;

import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Announcement;
import org.lanqiao.bank.base.entity.AnnouncementExample;
import org.lanqiao.bank.base.entity.Transfer;
/**
 * @ClassName: CustomerAnnouncementService 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-查文彬
 * @time 2017年5月10日 下午6:05:57
 */
public interface CustomerAnnouncementService {
	/**
	 * @Title: selectByExample
	 * @Description: 一页通知的接口方法
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月10日 下午6:06:03 
	 * @param example
	 * @return
	 * List<Announcement>
	 */
	List<Announcement> selectByExample(Pager<Announcement> pager,AnnouncementExample example);
	/**
	 * @Title: getCount
	 * @Description: 获取数据的总条数
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月10日 下午9:59:34 
	 * @param example
	 * @return
	 * long
	 */
	long getCount(AnnouncementExample example);
	/**
	 * @Title: selectByPrimaryKey
	 * @Description: 根据id获取通知
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月12日 下午8:00:50 
	 * @param id
	 * @return
	 * Announcement
	 */
	Announcement selectByPrimaryKey(int id);
	/**
	 * @Title: deleteByPrimaryKey
	 * @Description: 根据id删除某条通知
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月12日 下午8:29:01 
	 * @param id
	 * @return
	 * int
	 */
	int deleteByPrimaryKey(int id);
	/**
	 * @Title: insert
	 * @Description: 客服增加一个通知
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月12日 下午8:41:21 
	 * @param announcement
	 * @return
	 * int
	 */
	int insert(Announcement announcement);
	/**
	 * @Title: updateByPrimaryKeySelective
	 * @Description: 更新通知
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月13日 下午6:48:25 
	 * @param announcement
	 * @return
	 * int
	 */
	int updateByPrimaryKey(Announcement announcement);
}
