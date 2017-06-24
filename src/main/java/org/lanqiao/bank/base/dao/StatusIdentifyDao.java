package org.lanqiao.bank.base.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.lanqiao.bank.base.entity.StatusIdentify;
import org.lanqiao.bank.base.entity.StatusIdentifyExample;

public interface StatusIdentifyDao {
    long countByExample(StatusIdentifyExample example);

    int deleteByExample(StatusIdentifyExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(StatusIdentify record);

    int insertSelective(StatusIdentify record);

    List<StatusIdentify> selectByExample(StatusIdentifyExample example);

    StatusIdentify selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") StatusIdentify record, @Param("example") StatusIdentifyExample example);

    int updateByExample(@Param("record") StatusIdentify record, @Param("example") StatusIdentifyExample example);

    int updateByPrimaryKeySelective(StatusIdentify record);

    int updateByPrimaryKey(StatusIdentify record);
}