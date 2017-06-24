package org.lanqiao.bank.service.impl.user;

import java.util.List;

import org.lanqiao.bank.base.dao.AnnouncementDao;
import org.lanqiao.bank.base.entity.Announcement;
import org.lanqiao.bank.base.entity.AnnouncementExample;
import org.lanqiao.bank.base.util.PageUtil;
import org.lanqiao.bank.service.user.AnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName: AnnouncementServiceImpl
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-魏航
 * @time 2017年5月12日 下午2:56:10
 */
@Service
public class AnnouncementServiceImpl implements AnnouncementService {
	@Autowired
	AnnouncementDao announcementDao;
	AnnouncementExample example;

	/**
	 * @Title: getAllAnnouncement
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-张文龙
	 * @time 2017年5月9日 下午11:11:37
	 * @param
	 * @return List
	 */
	@Override
	public List<Announcement> getAllAnnouncement() {
		List<Announcement> allAnnouncement = announcementDao.selectByExample(example);
		return allAnnouncement;
	}
	
	public List<Announcement> getAllAnnouncement(AnnouncementExample example) {
		List<Announcement> allAnnouncement = announcementDao.selectByExample(example);
		return allAnnouncement;
	}
	/**
	 * @Title: showPageAnnouncement
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-张文龙
	 * @time 2017年5月9日 下午11:11:37
	 * @param pageUtil
	 * @return List
	 */
	public List getPageAnnouncement(PageUtil pageUtil) {
		List pageAnnouncement = announcementDao.getPageAnnouncement(pageUtil);
		return pageAnnouncement;
	}

	/**
	 * @Title: selectAnnouncementById
	 * @Description: 查询一个通知
	 * @author 西安工业大学蓝桥学员-张文龙
	 * @time 2017年5月12日 下午6:13:19
	 * @param id
	 * @return Announcement
	 */
	public Announcement selectByPrimaryKey(Integer id) {
		Announcement announcement = announcementDao.selectByPrimaryKey(id);
		return announcement;
	}

	/**
	 * @Title: selectAnnouncementByAttribute
	 * @Description: 通过属性获取通知信息
	 * @author 西安工业大学蓝桥学员-张文龙
	 * @time 2017年5月12日 下午7:55:20
	 * @param attribute
	 * @return Announcement
	 */
	public List<Announcement> selectAnnouncementByAttribute(String attribute) {
		List<Announcement> announcement = announcementDao.selectAnnouncementByAttribute(attribute);
		return announcement;
	}


	/**
	 * @Title: deleteAnnounById
	 * @Description: 根据id删除通知消息
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月12日 下午3:03:10
	 * @param id
	 * @return
	 */
	public int deleteAnnounById(Integer id) {
		int primaryKey = announcementDao.deleteByPrimaryKey(id);
		return primaryKey;
	}

	/**
	 * @Title: selAnnouncementById
	 * @Description: 根据id查询一个消息
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月12日 下午7:25:26 
	 * @param id
	 * @return
	 * Announcement
	 */
	public Announcement selAnnouncementById(Integer id) {
		Announcement selectByPrimaryKey = announcementDao.selectByPrimaryKey(id);
		return selectByPrimaryKey;
	}
	/**
	 * @Title: countByExample
	 * @Description: 获取记录数
	 * @author 西安工业大学蓝桥学员-张文龙 
	 * @time 2017年5月14日 下午3:49:34 
	 * @param example
	 * @return
	 * long
	 */
	public long countByExample(AnnouncementExample example) {
		// TODO Auto-generated method stub
		return  announcementDao.countByExample(example);
	}
	
	/**
	 * @Title: insertAnnouncement
	 * @Description: 添加通知消息
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月12日 下午7:26:09 
	 * @param announcement
	 * @return
	 * int
	 */
	public int insertAnnouncement(Announcement announcement) {
		int i = announcementDao.insert(announcement);
		return i;
	}
	
	/**
	 * @Title: updateAnnouncement
	 * @Description: 修改通知消息
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月12日 下午8:22:42 
	 * @param announcement
	 * @return
	 * int
	 */
	public int updateAnnouncement(Announcement announcement) {
		int i = announcementDao.updateByPrimaryKey(announcement);
		return i;
	}
}
