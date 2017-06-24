package org.lanqiao.bank.service.impl.customer;

import java.util.List;

import org.lanqiao.bank.base.dao.AnnouncementDao;
import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Announcement;
import org.lanqiao.bank.base.entity.AnnouncementExample;
import org.lanqiao.bank.base.entity.Transfer;
import org.lanqiao.bank.service.customer.CustomerAnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * @ClassName: CustomerAnnouncementServiceImpl 
 * @Description: 客服通知的业务逻辑层
 * @author 西安工业大学蓝桥学员-查文彬
 * @time 2017年5月10日 下午6:07:07
 */
@Service
public class CustomerAnnouncementServiceImpl implements CustomerAnnouncementService {
	
	@Autowired
	AnnouncementDao announcementDao;
	/**
	 * @Title: selectByExample
	 * @Description: 获取一页的通知业务逻辑
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月10日 下午6:09:47 
	 * @param example
	 * @return
	 */
	@Override
	public List<Announcement> selectByExample(Pager<Announcement> pager,AnnouncementExample example) {
		return announcementDao.selectByExample(example);
	}
	/**
	 * @Title: getCount
	 * @Description: 获取通知数据的总条数
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月10日 下午7:48:28 
	 * @param example
	 * @return
	 */
	@Override
	public long getCount(AnnouncementExample example) {
		return announcementDao.countByExample(example);
	}
	/**
	 * @Title: selectByPrimaryKey
	 * @Description: 根据id查询通知
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月12日 下午8:42:53 
	 * @param id
	 * @return
	 */
	@Override
	public Announcement selectByPrimaryKey(int id) {
		return announcementDao.selectByPrimaryKey(id);
	}
	/**
	 * @Title: deleteByPrimaryKey
	 * @Description: 删除一条通知
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月12日 下午8:42:58 
	 * @param id
	 * @return
	 */
	@Override
	public int deleteByPrimaryKey(int id) {
		return announcementDao.deleteByPrimaryKey(id);
	}
	/**
	 * @Title: insert
	 * @Description: 新增一条通知
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月12日 下午8:43:02 
	 * @param announcement
	 * @return
	 */
	@Override
	public int insert(Announcement announcement) {
		return announcementDao.insert(announcement);
	}
	/**
	 * @Title: updateByPrimaryKey
	 * @Description: 更新通知
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月13日 下午6:50:35 
	 * @param announcement
	 * @return
	 */
	@Override
	public int updateByPrimaryKey(Announcement announcement) {
		return announcementDao.updateByPrimaryKey(announcement);
	}
	
}
