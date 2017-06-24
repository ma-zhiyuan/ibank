package org.lanqiao.bank.controller.customer;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Announcement;
import org.lanqiao.bank.base.entity.AnnouncementExample;
import org.lanqiao.bank.base.util.DateFormatUtil;
import org.lanqiao.bank.base.util.FileConstants;
import org.lanqiao.bank.service.impl.customer.CustomerAnnouncementServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
/**
 * @ClassName: CustomerAnnouncement 
 * @Description: 客服操作通知的控制层 类
 * @author 西安工业大学蓝桥学员-查文彬
 * @time 2017年5月14日 上午10:43:13
 */
@Controller
@RequestMapping("/LCustomer/customer")
public class CustomerAnnouncement {
	@Autowired
	CustomerAnnouncementServiceImpl cas;
	/**
	 * @Title: getCustomerAnnouncement
	 * @Description: 客服获取一页通知的控制层
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月12日 下午6:26:04 
	 * @param pageNow
	 * @param pager
	 * @param map
	 * @return
	 * String
	 */
	@RequestMapping("/customerAnnouncement")
	public String getCustomerAnnouncement(@RequestParam("pageNow")Integer pageNow,Pager<Announcement> pager, Map<String, Object> map,HttpSession session
			){
		AnnouncementExample example = new AnnouncementExample();
		pager.setCurrentPage(pageNow);
		int size = 5;
		pager.setRowPerPage(size);
		long count = cas.getCount(example);
		int totalRows = (int) (count % size == 0 ? count / 5 : count / 5 + 1);
		pager.setTotalRows(totalRows);
		example.setOrderByClause("update_time desc limit "+(pageNow-1)*size+","+size);
		List<Announcement> announcements = cas.selectByExample(pager,example);
		pager.setHasPrePage(pager.getCurrentPage() != 1);
		pager.setHasNextPage(pager.getCurrentPage() != totalRows);
		pager.setData(announcements);
		String orderClause = "create_time desc";
		example.setOrderByClause(orderClause);
		List<Announcement> list = cas.selectByExample(null, example);
		session.setAttribute("list", list);
		map.put("totalRows", totalRows);
		map.put("pager", pager);
		return "customer/customer_announcement";
	}
	/**
	 * @Title: getAnnouncementContent
	 * @Description: 获取单个通知的控制层
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月12日 下午8:02:18 
	 * @param id
	 * @param map
	 * @return
	 * String
	 */
	@RequestMapping("/getContent")
	public String getAnnouncementContent(@RequestParam("ann_id") Integer id, Map<String, Object> map){
		Announcement announcement = cas.selectByPrimaryKey(id);
		Date createTime = announcement.getCreateTime();
		String date = DateFormatUtil.dateToString(createTime);
		map.put("date", date);
		map.put("announcement", announcement);
		return "customer/customer_announcement_content";
		
	}
	/**
	 * @Title: deleteByPrimaryKey
	 * @Description: 客服删除一条通知的控制层
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月12日 下午8:40:10 
	 * @param id
	 * @param pageNow
	 * @param map
	 * @return
	 * String
	 */
	@RequestMapping("/delete")
	public String deleteByPrimaryKey(@RequestParam("ann_id") Integer id,@RequestParam("pageNow") Integer pageNow, Map<String, Object> map){
		int result = cas.deleteByPrimaryKey(id);
		String msg = "当前网络不可用，请稍后再试。。。";
		if (result>0) {
			msg ="您已经删除成功";
			map.put("msg", msg);
			return "customer/customer_success";
		} else {
			msg = "操作失败";
			map.put("msg", msg);
			map.put("pageNow", pageNow);
			return "customer/customerAnnouncement?pageNow"+pageNow;
		}
	}
	/**
	 * @Title: toInsertForm
	 * @Description: 跳转到增加通知的表单页面的控制层
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月12日 下午8:45:44 
	 * @return
	 * String
	 */
	@RequestMapping("/toInsertForm")
	public String toInsertForm(){
		return "customer/insert_announcement_form";
	}
	/**
	 * @Title: insert
	 * @Description: 获取客服输入的内容进行数据库增加数据的控制层
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月12日 下午8:47:25 
	 * @param annoucement
	 * @param map
	 * @return
	 * String
	 */
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String insert(String title, String content, @RequestParam(value="picture", required=false) MultipartFile picture,HttpServletRequest request, Map<String, Object> map){
		if(!("".equals(title))&&!("".equals(content))&&title!=null&&content!=null&&(title.trim()).length()!=0&&(content.trim()).length()!=0){
			Announcement announcement = new Announcement();
			announcement.setTitle(title);
			announcement.setContent(content);
			announcement.setCreateTime(new Date());
			announcement.setUpdateTime(new Date());
			announcement.setAttribute("用户通知");
			if (!picture.isEmpty()) {
				//给图片增加路径
				String filePath = request.getSession().getServletContext().getRealPath("/")
						+ FileConstants.ANNOUNCEMENT_UPLOAD_PATH + picture.getOriginalFilename();
				String name = System.currentTimeMillis() + picture.getOriginalFilename();
				try {
					//转存图片
					picture.transferTo(new File(filePath));
					//给通知set图片路径
					announcement.setPicture(name);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
			String msg = "网络可能有问题，请稍后再试";
			int result = cas.insert(announcement);
			if (result > 0) {
				msg = "发布成功";
				map.put("msg", msg);
				return "customer/customer_success";
			} else {
				msg = "发布失败，请重新发布";
				map.put("msg", msg);
				map.put("annoucement", announcement);
				return "customer/insert_announcement_form";
			}
		}else {
			String msg = "标题和内容都不能为空。";
			map.put("msg", msg);
			return "customer/insert_announcement_form";
		}
	}
	/**
	 * @Title: toUpdateForm
	 * @Description: 跳转到更新的表单页面的控制层
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月13日 下午7:01:56 
	 * @param id
	 * @param map
	 * @return
	 * String
	 */
	@RequestMapping("/updateForm")
	public String toUpdateForm(@RequestParam("ann_id") Integer id, Map<String, Object> map){
		Announcement announcement = cas.selectByPrimaryKey(id);
		map.put("announcement", announcement);
		return "customer/insert_announcement_form";
	}
	/**
	 * @Title: update
	 * @Description: 提交更新的数据的控制层
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月13日 下午7:02:31 
	 * @param announcement
	 * @param map
	 * @return
	 * String
	 */
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(Integer id, String title, String content, @RequestParam(value="picture", required=false) MultipartFile picture, HttpServletRequest request, Map<String, Object> map){
		Announcement announcement = cas.selectByPrimaryKey(id);
		if(title!=null&&content!=null){
			announcement.setTitle(title);
			announcement.setContent(content);
			announcement.setUpdateTime(new Date());
			if (!picture.isEmpty()) {
				//TODO 对传入的图片还需要处理
				//图片路径
				String filePath = request.getSession().getServletContext().getRealPath("/")
						+ FileConstants.ANNOUNCEMENT_UPLOAD_PATH + System.currentTimeMillis()
						+ picture.getOriginalFilename();
				String name = System.currentTimeMillis() + picture.getOriginalFilename();
				try {
					//转存图片
					picture.transferTo(new File(filePath));
					//给通知set图片路径
					announcement.setPicture(name);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
			int result = cas.updateByPrimaryKey(announcement);
			String msg = "网络可能有问题，请稍后再试";
			if (result > 0) {
				msg = "更新成功";
				map.put("msg", msg);
				return "customer/customer_success";
			} else {
				msg = "更新失败，请重新更新";
				map.put("msg", msg);
				map.put("annoucement", announcement);
				return "customer/insert_announcement_form";
			}
		}else {
			String msg = "标题和内容都不能为空。";
			map.put("msg", msg);
			return "customer/insert_announcement_form";
		}
	}
}
