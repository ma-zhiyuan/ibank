package org.lanqiao.bank.base.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.lanqiao.bank.base.entity.Transfer;
import org.lanqiao.bank.base.entity.TransferExample;
import org.lanqiao.bank.base.util.PageUtil;

public interface TransferDao {
	
    long countByExample(TransferExample example);

    int deleteByExample(TransferExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Transfer record);

    int insertSelective(Transfer record);

    List<Transfer> selectByExample(TransferExample example);

    Transfer selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Transfer record, @Param("example") TransferExample example);

    int updateByExample(@Param("record") Transfer record, @Param("example") TransferExample example);

    int updateByPrimaryKeySelective(Transfer record);

    int updateByPrimaryKey(Transfer record);

	/**@Title: getTransferPage
	 * @Description: 分页查询转账记录
	 * @author 西安工业大学蓝桥学员-刘晓莉
	 * @time 2017年5月19日 下午6:24:08 
	 * @param forma
	 * @return
	 * List
	 */
	List<Transfer> getTransferPage(PageUtil format);
}