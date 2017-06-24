package org.lanqiao.bank.base.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.lanqiao.bank.base.entity.Announcement;
import org.lanqiao.bank.base.entity.LoanInfo;
import org.lanqiao.bank.base.entity.LoanInfoExample;
import org.lanqiao.bank.base.util.PageUtil;
public interface LoanInfoDao {
    long countByExample(LoanInfoExample example);

    int deleteByExample(LoanInfoExample example);
    /**
     * @Title: insert
     * @Description: 插入贷款信息（贷款信息必须完整）
     * @author 西安工业大学蓝桥学员-姚亚萍
     * @time 2017年5月31日 下午8:17:31 
     * @param record
     * @return
     * int
     */
    int insert(LoanInfo record);
    /**
     * @Title: insertSelective
     * @Description: 插入贷款信息 （贷款信息可不完整）
     * @author 西安工业大学蓝桥学员-姚亚萍
     * @time 2017年5月31日 下午8:16:39 
     * @param record
     * @return
     * int
     */
    int insertSelective(LoanInfo record);
    
    int deleteByPrimaryKey(Integer id);
    
    int updateByPrimaryKey(LoanInfo record);
    
    LoanInfo selectByPrimaryKey(Integer id);
    /**
     * @Title: selectByUserId
     * @Description: 根据用户ID查询贷款信息
     * @author 西安工业大学蓝桥学员-姚亚萍
     * @time 2017年5月31日 下午8:16:02 
     * @param user_id
     * @return
     * List<LoanInfo>
     */
    List<LoanInfo> selectByUserId(Integer user_id);

    List<LoanInfo> selectByExample(LoanInfoExample example);

    int updateByExampleSelective(@Param("record") LoanInfo record, @Param("example") LoanInfoExample example);

    int updateByExample(@Param("record") LoanInfo record, @Param("example") LoanInfoExample example);
    /**
     * @Title: getLoanInfos
     * @Description: 查询所有贷款信息
     * @author 西安工业大学蓝桥学员-姚亚萍
     * @time 2017年5月31日 下午8:15:04 
     * @return
     * List
     */
	List getLoanInfos();
	/**
	 * @Title: getAllLoanInfos
	 * @Description: 查询一页贷款信息
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年5月31日 下午8:15:28 
	 * @param format
	 * @return
	 * List
	 */
	List getAllLoanInfos(PageUtil format);
}