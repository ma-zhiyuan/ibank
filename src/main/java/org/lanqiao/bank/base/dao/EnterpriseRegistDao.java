package org.lanqiao.bank.base.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.lanqiao.bank.base.entity.EnterpriseRegist;
import org.lanqiao.bank.base.entity.EnterpriseRegistExample;

public interface EnterpriseRegistDao {
    long countByExample(EnterpriseRegistExample example);

    int deleteByExample(EnterpriseRegistExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(EnterpriseRegist record);

    int insertSelective(EnterpriseRegist record);

    List<EnterpriseRegist> selectByExample(EnterpriseRegistExample example);

    EnterpriseRegist selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") EnterpriseRegist record, @Param("example") EnterpriseRegistExample example);

    int updateByExample(@Param("record") EnterpriseRegist record, @Param("example") EnterpriseRegistExample example);

    int updateByPrimaryKeySelective(EnterpriseRegist record);

    int updateByPrimaryKey(EnterpriseRegist record);
}