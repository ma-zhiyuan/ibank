package org.lanqiao.bank.base.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.lanqiao.bank.base.entity.Interest;
import org.lanqiao.bank.base.entity.InterestExample;

public interface InterestDao {
	
	Interest selectByRate(Integer id);
	
    long countByExample(InterestExample example);

    int deleteByExample(InterestExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Interest record);

    int insertSelective(Interest record);

    List<Interest> selectByExample(InterestExample example);

    Interest selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Interest record, @Param("example") InterestExample example);

    int updateByExample(@Param("record") Interest record, @Param("example") InterestExample example);

    int updateByPrimaryKeySelective(Interest record);

    int updateByPrimaryKey(Interest record);
}