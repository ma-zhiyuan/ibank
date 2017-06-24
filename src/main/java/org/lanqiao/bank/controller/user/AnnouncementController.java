package org.lanqiao.bank.controller.user;

import java.util.List;
import java.util.Map;

import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Announcement;
import org.lanqiao.bank.base.entity.AnnouncementExample;
import org.lanqiao.bank.base.entity.AnnouncementExample.Criteria;
import org.lanqiao.bank.base.util.PageUtil;
import org.lanqiao.bank.service.impl.user.AnnouncementServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @ClassName: AnnouncementController
 * @Description: 通知控制器层
 * @author 西安工业大学蓝桥学员-张文龙
 * @time 2017年5月9日 下午8:02:42
 */
@Controller
@RequestMapping("/LUser/Announcement")
public class AnnouncementController {

	@Autowired
	AnnouncementServiceImpl announcementServiceImpl;

	/**
	 * @Title: selectAllAnnouncement
	 * @Description: 获取所有的通知消息
	 * @author 西安工业大学蓝桥学员-张文龙
	 * @time 2017年5月9日 下午8:05:25
	 * @return String
	 */

	@RequestMapping("/getAllAnnouncement")
	public String selectAllAnnouncement(Map<String, Object> map, @RequestParam(value = "pageNow") Integer pageNow) {
		PageUtil format = PageUtil.format(pageNow, 5);
		List showPageAnnouncement = announcementServiceImpl.getPageAnnouncement(format);
		List<Announcement> allAnnouncement = announcementServiceImpl.getAllAnnouncement();
		Pager<Announcement> pager = new Pager<Announcement>(pageNow, format.getOffset(), showPageAnnouncement.size(),
				showPageAnnouncement);
		// 计算总页数
		int totalPages = 0;
		if ((allAnnouncement.size()) % 5 == 0) {
			totalPages = (allAnnouncement.size()) / 5;
		} else {
			totalPages = (allAnnouncement.size()) / 5 + 1;
		}
		System.out.println(totalPages);
		// 赋值
		pager.setHasNextPage(pager.getCurrentPage() != totalPages);
		pager.setHasPrePage(pager.getCurrentPage() != 1);
		pager.setTotalPages(totalPages);
		System.out.println(pager.getHasNextPage());

		System.out.println(allAnnouncement);
		map.put("pager", pager);
		return "user/user_announcement";
	}

	/**
	 * @Title: selectTitleById
	 * @Description: 获取一个通知
	 * @author 西安工业大学蓝桥学员-张文龙
	 * @time 2017年5月12日 下午6:14:14
	 * @param id
	 * @param map
	 * @return String
	 */
	@RequestMapping("/getContent")
	public String selectTitleById(Integer id, Map<String, Object> map) {
		System.out.println(id);
		Announcement announcement = announcementServiceImpl.selectByPrimaryKey(id);
		System.out.println(announcement);
		map.put("announcement", announcement);
		return "user/user_a_announcement";
	}

	/**
	 * @Title: selectAnnouncementByAttribute
	 * @Description: 根据attribute获取一批通知
	 * @author 西安工业大学蓝桥学员-张文龙
	 * @time 2017年5月14日 下午2:53:24
	 * @param attr
	 * @param map
	 * @return String
	 */
	@RequestMapping("/getAllAnnouncementByAttribute")
	public String selectAnnouncementByAttribute(@RequestParam(value = "attr") Integer attr, Map<String, Object> map,
			@RequestParam(value = "pageNow") Integer pageNow) {
		System.out.println(pageNow);
		int i = 0;
		// 当attribute为用户业务通知时
		if (attr == 1) {
			String attribute = "用户业务通知";
			// 根据查询条件获取所有符合条件的通知，并计算页数
			List<Announcement> announcement = announcementServiceImpl.selectAnnouncementByAttribute(attribute);
			if ((announcement.size()) % 5 == 0) {
				i = (announcement.size()) / 5;
			} else {
				i = (announcement.size()) / 5 + 1;
			}
			// 手动计算，分页
			Integer j = (pageNow - 1) * 5;
			String orderByClause1 = " 1 limit " + j + ",5";
			AnnouncementExample example1 = new AnnouncementExample();
			example1.setOrderByClause(orderByClause1);
			Criteria criteria = example1.createCriteria();
			criteria.andAttributeEqualTo(attribute);
			List<Announcement> announcement1 = announcementServiceImpl.getAllAnnouncement(example1);
			System.out.println(announcement1);
			Pager<Announcement> pager = new Pager<Announcement>();
			// 赋值
			pager.setData(announcement1);
			pager.setRowPerPage(5);
			pager.setCurrentPage(pageNow);
			pager.setTotalRows(announcement.size());
			pager.setHasNextPage(pager.getCurrentPage() != 1);
			pager.setHasNextPage(pager.getCurrentPage() != i);
			pager.setHasPrePage(pager.getCurrentPage() != 1);
			pager.setTotalPages(i);
			map.put("pager", pager);
			// 发送至页面
			return "user/user_attribute1_announcement";
		}
		// 当attribute为用户紧急通知时
		if (attr == 2) {
			String attribute = "用户紧急通知";
			// 获取所有满足条件的通知，并且计算页数
			List<Announcement> announcement = announcementServiceImpl.selectAnnouncementByAttribute(attribute);
			if ((announcement.size()) % 5 == 0) {
				i = (announcement.size()) / 5;
			} else {
				i = (announcement.size()) / 5 + 1;
			}
			// 分页
			Integer j = (pageNow - 1) * 5;
			String orderByClause1 = " 1 limit " + j + ",5";
			AnnouncementExample example1 = new AnnouncementExample();
			example1.setOrderByClause(orderByClause1);
			Criteria criteria = example1.createCriteria();
			criteria.andAttributeEqualTo(attribute);
			List<Announcement> announcement1 = announcementServiceImpl.getAllAnnouncement(example1);
			System.out.println(announcement1);
			Pager<Announcement> pager = new Pager<Announcement>();
			// 赋值
			pager.setData(announcement1);
			pager.setRowPerPage(5);
			pager.setCurrentPage(pageNow);
			pager.setTotalRows(announcement.size());
			pager.setHasNextPage(pager.getCurrentPage() != 1);
			pager.setHasNextPage(pager.getCurrentPage() != i);
			pager.setHasPrePage(pager.getCurrentPage() != 1);
			pager.setTotalPages(i);
			map.put("pager", pager);
			// 发送至页面
			return "user/user_attribute2_announcement";
		}
		return "";

	}

	/**
	 * @Title: selectAnnouncementByCreateTime
	 * @Description: 根据创建时间来获取通知
	 * @author 西安工业大学蓝桥学员-张文龙
	 * @time 2017年5月14日 下午3:21:09
	 * @param map
	 * @param pageNow
	 * @return String
	 */
	@RequestMapping("/selectAnnouncementByCreateTime")
	public String selectAnnouncementByCreateTime(Map<String, Object> map,
			@RequestParam(value = "pageNow") Integer pageNow) {
		// 最新通知只获取前十条
		// 第一页的通知信息

		if (pageNow == 1) {
			String orderByClause1 = "create_time desc" + " limit 0, 5";
			AnnouncementExample example1 = new AnnouncementExample();
			example1.setOrderByClause(orderByClause1);
			List<Announcement> announcement1 = announcementServiceImpl.getAllAnnouncement(example1);
			System.out.println(announcement1);
			Pager<Announcement> pager = new Pager<Announcement>();
			pager.setData(announcement1);
			pager.setRowPerPage(5);
			pager.setCurrentPage(pageNow);
			pager.setTotalRows(announcement1.size());
			pager.setHasNextPage(pager.getCurrentPage() != 1);
			pager.setHasNextPage(pager.getCurrentPage() != 2);
			pager.setHasPrePage(pager.getCurrentPage() != 1);
			pager.setTotalPages(2);
			map.put("pager", pager);
			return "user/user_new_announcement";
		} else if (pageNow == 2) {
			// 第二页的信息通知
			String orderByClause2 = "create_time desc" + " limit 5, 5";
			AnnouncementExample example2 = new AnnouncementExample();
			example2.setOrderByClause(orderByClause2);
			List<Announcement> announcement2 = announcementServiceImpl.getAllAnnouncement(example2);
			System.out.println(announcement2);
			Pager<Announcement> pager = new Pager<Announcement>();
			pager.setData(announcement2);
			pager.setRowPerPage(5);
			pager.setCurrentPage(pageNow);
			pager.setTotalRows(announcement2.size());
			pager.setHasNextPage(pager.getCurrentPage() != 1);
			pager.setHasNextPage(pager.getCurrentPage() != 2);
			pager.setHasPrePage(pager.getCurrentPage() != 1);
			pager.setTotalPages(2);
			map.put("pager", pager);
			return "user/user_new_announcement";
		} else {
			pageNow = 1;
		}

		return "user/user_new_announcement";

	}
}
