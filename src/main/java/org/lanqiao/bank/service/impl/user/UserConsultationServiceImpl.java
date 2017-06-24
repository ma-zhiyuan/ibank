package org.lanqiao.bank.service.impl.user;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lanqiao.bank.base.dao.UserConsultationDao;
import org.lanqiao.bank.base.dao.UserDao;
import org.lanqiao.bank.base.entity.User;
import org.lanqiao.bank.base.entity.UserConsultation;
import org.lanqiao.bank.base.util.PageUtil;
import org.lanqiao.bank.service.impl.customer.CustomerReplayImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName: UserConsultationServiceImpl 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-吴安安
 * @time 2017年5月7日 下午1:28:28
 */
@Service
public class UserConsultationServiceImpl {
	@Autowired
	UserConsultationDao userConsultationDao;
	@Autowired
	UserDao userDao;
	@Autowired
	CustomerReplayImp customerReplayImp;
	/**
	 * @Title: selectUserById
	 * @Description: 根据id查询出是哪个用户咨询
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月7日 下午1:56:04 
	 * @param id
	 * @return
	 * User
	 */
	public UserConsultation getUserConSultationById(Integer id){
		UserConsultation uc = userConsultationDao.getUserConSultationById(id);
		return uc;
	}
	/**@Title: getAllConsult
		 * @Description: 查询所有咨询以及回答
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017年5月7日 下午5:15:07
		 * @param lPageUtil
		 * @return List
		 *  
		 */
	//list后边加了个<UserConsultation>
	//吴安安 2017-5-14 10：51
	public List<UserConsultation> getAllConsult(PageUtil format){
		List list = userConsultationDao.getAllConsult(format);
		return list;
	}
	/**@Title: getConsult
		 * @Description: 获取全部consult
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017年5月8日 上午10:14:54
		 * @param  void
		 * @return List
		 *  
		 */
	//list后边加了个<UserConsultation>
	//吴安安 2017-5-14 10：51
	 public List<UserConsultation> getConsult() {
		// TODO Auto-generated method stub
		List list=userConsultationDao.getAll();
		return list;
	} 
	/**
	 * @Title: deleteUserConsultation
	 * @Description: 删除用户咨询
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月7日 下午5:31:19 
	 * @param userConsultation
	 * void
	 */
	public void deleteUserConsultation(Integer id){
		userConsultationDao.deleteUserConsultation(id);
	} 
	
	/**
	 * @Title: updateUserConsultation
	 * @Description: 更新用户咨询
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月7日 下午5:34:03 
	 * @param id
	 * void
	 */
	public void updateUserConsultation(UserConsultation userConsultation){
		userConsultationDao.updateUserConsultation(userConsultation);
	}
	
	/**
	 * @Title: insertUserConsultation
	 * @Description: 插入一个用户咨询
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月7日 下午5:43:03 
	 * @param id
	 * void
	 */
	public void insertUserConsultation(UserConsultation userConsultation){
		userConsultationDao.insertUserConsultation(userConsultation);
	}
	
	/**
	 * @Title: getUserConSultationReplaystate
	 * @Description: 根据状态获取一页
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月14日 上午9:45:28 
	 * @param pageUtil
	 * @return
	 * List<UserConsultation>
	 */
	public List<UserConsultation> getUserConSultationReplaystate(PageUtil pageUtil){
		System.out.println(userConsultationDao);
		System.out.println(userDao);
		List<UserConsultation> userConSultationReplaystate = userConsultationDao.getUserConSultationReplaystate(pageUtil);
		
		return userConSultationReplaystate;
	}
	/**@Title: getAConsult
		 * @Description: 获取一个consult
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017年5月14日 下午4:43:34
		 * @param   id
		 * @return UserConsultation
		 */
	public UserConsultation getAConsult(Integer id){
		UserConsultation aUserConsultation = userConsultationDao.getAUserConsultation(id);
		return aUserConsultation;
	}
	
	
	public List<UserConsultation> getAllUserConSultationReplaystate(){
		
		List<UserConsultation> userAllConSultationReplaystate = userConsultationDao.getAllUserConSultationReplaystate();
		
		return userAllConSultationReplaystate;
	}
	
	/**
	 * @Title: getUserConsultationByUserID
	 * @Description: 根据用户ID获取用户咨询
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月14日 下午5:51:39 
	 * @param id
	 * @return
	 * List<UserConsultation>
	 */
	public List<UserConsultation> getUserConsultationByUserID(Integer id){
		List<UserConsultation> userConsultationByUserID = userConsultationDao.getUserConsultationByUserID(id);
		return userConsultationByUserID;
	}
	
	/**
	 * @Title: getOnePageUserConSultationByUserId
	 * @Description:  通过user的ID查询一页用户咨询内容
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月14日 下午7:56:26 
	 * @param userId
	 * @param begin
	 * @param offset
	 * @return
	 * List<UserConsultation>
	 */
	public List<UserConsultation> getOnePageUserConSultationByUserId(Integer userId, Integer begin,Integer offset){
		List<UserConsultation> uc = userConsultationDao.getOnePageUserConSultationByUserId(userId,begin,offset);
		return uc;
	}
	
	public void insertUserConsultationByUserId(Integer id){
		userConsultationDao.insertUserConsultationByUserId(id);
	}
}
