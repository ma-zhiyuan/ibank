package org.lanqiao.bank.controller.admin;

import java.io.File;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Announcement;
import org.lanqiao.bank.base.util.FileConstants;
import org.lanqiao.bank.base.util.PageUtil;
import org.lanqiao.bank.service.impl.user.AnnouncementServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 * @ClassName: AnnouncementController
 * @Description: 通知消息控制器层（管理员操作）
 * @author 西安工业大学蓝桥学员-魏航
 * @time 2017年5月12日 下午12:54:50
 */
@Controller
@RequestMapping("/LAdmin/AdminAnnounController")
public class AdminAnnounController {
	@Autowired
	AnnouncementServiceImpl announcementServiceImpl;

	@ModelAttribute
	public void getModel(@RequestParam(value = "id", required = false) Integer id, Map<String, Object> map)
			throws ParseException {
		if (id != null) {
			Announcement announcement = announcementServiceImpl.selAnnouncementById(id);
			map.put("announcement", announcement);
		} else {
			Announcement announcement = new Announcement();
			map.put("announcement", announcement);
		}
	}

	@RequestMapping("/insertAnnouncement")
	public String insertAnnouncement(Announcement announcement, @RequestParam("picture1") MultipartFile file,
			HttpServletRequest request) {
		if (!file.isEmpty()) {
			try {
				// 文件保存路径
				String filePath = request.getSession().getServletContext().getRealPath("/")
						+ FileConstants.ANNOUNCEMENT_UPLOAD_PATH + System.currentTimeMillis()
						+ file.getOriginalFilename();
				String name = System.currentTimeMillis() + file.getOriginalFilename();
				System.out.println(filePath);
				// 转存文件
				file.transferTo(new File(filePath));
				if (announcement != null) {
					// 给announcement赋picture值
					announcement.setPicture(name);
					announcement.setUpdateTime(new Date());
					announcement.setCreateTime(new Date());
					int i = announcementServiceImpl.insertAnnouncement(announcement);
				}
				return "admin/insert_announ_success";
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return "admin/insert_announ_faile";
	}

	/**
	 * @Title: showPageAnnouncement
	 * @Description: 分页查询所有通知消息
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月12日 下午2:28:27
	 * @param map
	 * @param pageNow
	 * @return String
	 */
	@RequestMapping("/showPageAnnouncement")
	public String showPageAnnouncement(Map<String, Object> map, @RequestParam(value = "pageNow") Integer pageNow) {
		PageUtil format = PageUtil.format(pageNow, 5);
		List pageAnnouncement = announcementServiceImpl.getPageAnnouncement(format);
		List<Announcement> allAnnouncement = announcementServiceImpl.getAllAnnouncement();
		Pager<Announcement> pager = new Pager<Announcement>(pageNow, format.getOffset(), allAnnouncement.size(),
				pageAnnouncement);
		pager.setTotalPages(pager.getTotalRows() % 5 == 0 ? pager.getTotalRows() / 5 + 1 : pager.getTotalPages() / 5 + 2);
		map.put("announcementPage", pager);
		return "admin/list_announcement";
	}

	/**
	 * @Title: deleteAnnounById
	 * @Description: 删除一个通知消息
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月12日 下午5:48:13
	 * @param id
	 * @return String
	 */
	@RequestMapping("/deleteAnnounById")
	public String deleteAnnounById(@Param("id") Integer id) {
		int i = announcementServiceImpl.deleteAnnounById(id);
		if (i == 1) {
			return "admin/del_Announ_Success";
		} else {
			return "admin/del_Announ_Faile";
		}
	}

	/**
	 * @Title: toupdateAnnouncement
	 * @Description: 去通知消息修改页面
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月12日 下午5:48:26
	 * @param id
	 * @return String
	 */
	@RequestMapping("/toupdateAnnouncement")
	public String toupdateAnnouncement(Announcement announcement, Map<String, Object> map) {
		Integer id = announcement.getId();
		Announcement announ = announcementServiceImpl.selectByPrimaryKey(id);
		map.put("announ", announ);
		return "admin/update_announcement";
	}

	/**
	 * @Title: updateAnnouncement
	 * @Description: 修改通知消息
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月12日 下午5:57:33
	 * @param id
	 * @param map
	 * @return String
	 */
	@RequestMapping("/updateAnnouncement")
	public String updateAnnouncement(Announcement announcement, Map<String, Object> map,
			@RequestParam("picture1") MultipartFile file, HttpServletRequest request) {
		Integer id = announcement.getId();
		if (!file.isEmpty()) {
			try {
				// 文件保存路径
				String filePath = request.getSession().getServletContext().getRealPath("/")
						+ FileConstants.ANNOUNCEMENT_UPLOAD_PATH + System.currentTimeMillis()
						+ file.getOriginalFilename();
				String name = System.currentTimeMillis() + file.getOriginalFilename();
				System.out.println(filePath);
				// 转存文件
				file.transferTo(new File(filePath));
				if (announcement != null) {
					// 给announcement赋picture值
					announcement.setPicture(name);
					announcement.setUpdateTime(new Date());
					int i=announcementServiceImpl.updateAnnouncement(announcement);
					if(i!=0){
						map.put("id", id);
						return "admin/update_announ_success";
					}else {
						return "admin/update_announ_faile";
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "admin/update_announ_faile";

	}
	
	@RequestMapping(value="/insertAnnouncement", method=RequestMethod.GET)
	public String insertAnnouncement() {
		return "/admin/insertAnnouncement";
	}

}
