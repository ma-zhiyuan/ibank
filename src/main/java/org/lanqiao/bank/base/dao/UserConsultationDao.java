package org.lanqiao.bank.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lanqiao.bank.base.entity.UserConsultation;
import org.lanqiao.bank.base.util.PageUtil;

/**
 * @ClassName: UserConsultationDao 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-吴安安
 * @time 2017年5月7日 下午2:28:01
 */
public interface UserConsultationDao {

	/**
	 * @Title: getUserById
	 * @Description: 获取用户咨询
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月7日 下午2:28:22 
	 * @param id
	 * @return
	 * UserConsultation
	 */
	UserConsultation getUserConSultationById(Integer id);
	/**
	 * @Title: insertUserConsultation
	 * @Description: 增加一个用户咨询
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月7日 下午2:28:29 
	 * @param userConsultation
	 * @return
	 * int
	 */
	int insertUserConsultation(UserConsultation userConsultation);
	/**
	 * @Title: deleteUserConsultation
	 * @Description: 删除一个用户咨询
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月7日 下午2:28:35 
	 * @param userConsultation
	 * @return
	 * int
	 */
	int deleteUserConsultation(Integer id);
	/**
	 * @Title: updateUserConsultationByID
	 * @Description: 通过ID更新用户咨询
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月11日 下午8:14:04 
	 * @param id
	 * @return
	 * int
	 */
	int updateUserConsultationByID(Integer id);
	/**
	 * @Title: updateUserConsultation
	 * @Description: 更新一个用户的咨询
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月7日 下午2:28:45 
	 * @param id
	 * @return
	 * int
	 */
	int updateUserConsultation(UserConsultation userConsultation);
	/**@Title: getAllConsult
		 * @Description: 获取一页咨询
		 * @author 西安工业大学蓝桥学员-崔永雷
	     * @param format 
		 * @time  2017年5月7日 下午5:17:28
		 * @return List
		 */
	List getAllConsult(PageUtil format);
	    /**@Title: getAll
		 * @Description: 获取全部consult
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017年5月8日 上午10:13:09
		 * @param  void
		 * @return List
		 */
	List<UserConsultation> getAll();
	/**
	 * @Title: getUserConSultationReplaystate
	 * @Description: 通过是否已回复状态查询一页
	 * @author 西安工业大学蓝桥学员-孙新召
	 * @time 2017年5月14日 上午8:36:26 
	 * @param userConsultation
	 * @return
	 * List<UserConsultation>
	 */
	List<UserConsultation> getUserConSultationReplaystate(PageUtil pageUtil);
	/**
	 * @Title: getUserConSultationReplaystate
	 * @Description: 通过是否已回复状态查询咨询
	 * @author 西安工业大学蓝桥学员-孙新召
	 * @time 2017年5月14日 上午8:36:26 
	 * @param userConsultation
	 * @return
	 * List<UserConsultation>
	 */
	List<UserConsultation> getAllUserConSultationReplaystate();
	
	/**
	 * @Title: getUserConsultationByUserID
	 * @Description: 通过user的ID查询所有用户咨询内容
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月14日 下午5:31:13 
	 * @param id
	 * @return
	 * UserConsultation
	 */
	List<UserConsultation> getUserConsultationByUserID(Integer id);
	
	/**
	 * @Title: getOnePageUserConSultationByUserId
	 * @Description:通过user的ID查询一页用户咨询内容
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月14日 下午6:08:41 
	 * @param id
	 * @return
	 * List<UserConsultation>
	 */
	List<UserConsultation> getOnePageUserConSultationByUserId(@Param("userId") Integer userId,@Param("begin") Integer begin,@Param("offset") Integer offset);
	
	/**@Title: getAUserConsultation
		 * @Description: 根据id获取一个consult
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017年5月14日 下午4:41:31
		 * @param   id
		 * @return UserConsultation
		 *  
		 */
	UserConsultation getAUserConsultation(Integer id);
	
	/**
	 * @Title: insertUserConsultationByUserId
	 * @Description: 根据用户ID添加用户咨询
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月17日 下午6:34:40 
	 * @param id
	 * @return
	 * UserConsultation
	 */
	UserConsultation insertUserConsultationByUserId(Integer id);
	
}
