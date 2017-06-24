package org.lanqiao.bank.base.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.lanqiao.bank.base.entity.Announcement;
import org.lanqiao.bank.base.entity.AnnouncementExample;
import org.lanqiao.bank.base.util.PageUtil;

public interface AnnouncementDao {
    long countByExample(AnnouncementExample example);

    int deleteByExample(AnnouncementExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Announcement record);

    int insertSelective(Announcement record);

    List<Announcement> selectByExample(AnnouncementExample example);

    Announcement selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Announcement record, @Param("example") AnnouncementExample example);

    int updateByExample(@Param("record") Announcement record, @Param("example") AnnouncementExample example);

    int updateByPrimaryKeySelective(Announcement record);

    int updateByPrimaryKey(Announcement record);

	List getPageAnnouncement(PageUtil pageUtil);

	List<Announcement> getAllAnnouncement();

	List<Announcement> selectAnnouncementByAttribute(String attribute);


}