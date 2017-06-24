package org.lanqiao.bank.dao;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.lanqiao.bank.base.dao.AnnouncementDao;
import org.lanqiao.bank.base.entity.Announcement;
import org.lanqiao.bank.base.entity.AnnouncementExample;
import org.lanqiao.bank.base.entity.AnnouncementExample.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * @ClassName: AnnouncementDaoTest 
 * @Description: 通知消息dao层方法测试类
 * @author 西安工业大学蓝桥学员-魏航
 * @time 2017年5月10日 下午2:48:12
 */
public class AnnouncementDaoTest extends BasicDaoTest {
	@Autowired
	AnnouncementDao announcementDao;
	@Autowired
	AnnouncementExample example;
	@Test
	public void testCountByExample() {
		fail("Not yet implemented");
	}

	@Test
	public void testDeleteByExample() {
		fail("Not yet implemented");
	}

	/**
	 * @Title: testDeleteByPrimaryKey
	 * @Description: 通知消息删除测试方法
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月10日 下午3:02:40 
	 * void
	 */
	@Test
	public void testDeleteByPrimaryKey() {
		int deleteByPrimaryKey = announcementDao.deleteByPrimaryKey(8);
		System.out.println(deleteByPrimaryKey);
	}

	/**
	 * @Title: testInsert
	 * @Description: 通知消息添加方法测试
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月10日 下午2:53:41 
	 * void
	 */
	@Test
	public void testInsert() {
		Announcement record=new Announcement("龙龙智障", "发射点风格和健康就好噶尔嘎儿过热问个饭", null, new Date(), new Date(), "业务通知");
		int insert = announcementDao.insert(record);
		System.out.println(insert);
		
	}

	@Test
	public void testInsertSelective() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectByExample() {
//		List<Criteria> oredCriteria = example.getOredCriteria();
//		List<Announcement> selectByExample = announcementDao.selectByExample(example);
//		for (Announcement announcement : selectByExample) {
//			System.out.println(announcement);
//		}
	}

	@Test
	public void testSelectByPrimaryKey() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateByExampleSelective() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateByExample() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateByPrimaryKeySelective() {
		fail("Not yet implemented");
	}

	/**
	 * @Title: testUpdateByPrimaryKey
	 * @Description: 通知消息修改方法测试
	 * @author 西安工业大学蓝桥学员-魏航
	 * @time 2017年5月10日 下午3:00:56 
	 * void
	 */
	@Test
	public void testUpdateByPrimaryKey() {
		Announcement record=new Announcement(3,"大神带你", "发射点风格和健康就好噶尔嘎儿过热问个饭", null, new Date(), new Date(), "业务通知");
		int updateByPrimaryKey = announcementDao.updateByPrimaryKey(record);
		System.out.println(updateByPrimaryKey);
	}

}
