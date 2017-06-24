package org.lanqiao.bank.service.user;

import java.util.List;

import org.lanqiao.bank.base.entity.Announcement;

/**
 * @ClassName: AnnouncementService 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-张文龙
 * @time 2017年5月9日 下午11:01:22
 */
public interface AnnouncementService {
	/**
	 * @Title: getAllAnnouncement
	 * @Description: 获取所有通知信息
	 * @author 西安工业大学蓝桥学员-张文龙 
	 * @time 2017年5月9日 下午11:05:06 
	 * @return
	 * List<Announcement>
	 */
	List<Announcement> getAllAnnouncement();
	/**
	 * @Title: deleteAnnoucenment
	 * @Description: 根据id删除通知消息
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月12日 下午2:50:13 
	 * @return
	 * int
	 */
	int deleteAnnounById(Integer id);
}
