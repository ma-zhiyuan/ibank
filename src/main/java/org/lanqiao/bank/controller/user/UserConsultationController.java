package org.lanqiao.bank.controller.user;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.lanqiao.bank.base.dao.CustomerServiceDao;
import org.lanqiao.bank.base.dao.UserDao;
import org.lanqiao.bank.base.dto.UserConsultationDto;
import org.lanqiao.bank.base.entity.CustomerReplay;
import org.lanqiao.bank.base.entity.User;
import org.lanqiao.bank.base.entity.UserConsultation;
import org.lanqiao.bank.base.util.DateFormatUtil;
import org.lanqiao.bank.service.impl.customer.CustomerReplayImp;
import org.lanqiao.bank.service.impl.user.UserConsultationServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @ClassName: UserConsultationController
 * @Description: 用户咨询客服
 * @author 西安工业大学蓝桥学员-吴安安
 * @time 2017年5月7日 下午2:04:53
 */
@Controller
@RequestMapping("/LUser/User_Consultation")
public class UserConsultationController {

	@Autowired
	private UserConsultationServiceImpl userConsultationServiceImpl;
	@Autowired
	private CustomerReplayImp customerReplayImp;
	@Autowired
	UserDao userDao;
	@Autowired
	private CustomerServiceDao customerServiceDao;


	// @RequestMapping("/getUserConsultation")
	// public String getUserConsultation(@RequestParam(value="id") Integer
	// id,HttpServletRequest request){
	// UserConsultation uc =
	// userConsultationServiceImpl.getUserConSultationById(id);
	// request.getSession().setAttribute("userConsultation", uc);
	// return "user/user_consultation_b";
	// }
	
	@RequestMapping("/toUserConsultationList")
	public String toUserConsultationList(){
		return "user/user_consultation_list";
	}

	/**
	 * @Title: getConsultation
	 * @Description: 获取用户所有咨询和回复
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月14日 上午10:18:33
	 * @param id
	 * @param request
	 * @return String
	 */
	@RequestMapping(value = "/getConsultation", method = RequestMethod.GET)
	@ResponseBody
	public List<UserConsultationDto> getConsultation(@RequestParam(value = "page") String page,
			HttpSession session) {
		User user = (User) session.getAttribute("user");
		List<UserConsultation> ucb = userConsultationServiceImpl.getUserConsultationByUserID(user.getId());
		List<CustomerReplay> cr = customerReplayImp.selectCustomerReplayByUserConsultationID(user.getId());
			for (UserConsultation userConsultation : ucb) {
				userConsultation.setCustomerReplays(cr);
				userConsultation.setReplaystate(1);
			}
		List<UserConsultationDto> ucds = new ArrayList<UserConsultationDto>();
		for (int i = 0; i < ucb.size(); i++) {
			UserConsultationDto ucd = new UserConsultationDto();
			ucd.setId(ucb.get(i).getId().toString());
			ucd.setUserName(ucb.get(i).getUser().getName());
			ucd.setCommet(ucb.get(i).getComment());
			ucd.setConsultationTime(DateFormatUtil.DateToStr(ucb.get(i).getConsultationtime()));
			if (ucb.get(i).getReplaystate()==1) {
				ucd.setReplayState("已回复");
			}else{
				ucd.setReplayState("未回复");
			}
			ucds.add(ucd);
		}
		List<UserConsultationDto> result = new ArrayList<UserConsultationDto>();
		if (ucb != null && ucb.size() > 0) {
			int allCount = ucb.size();
			int pageNo = Integer.parseInt(page);
			int pageSize = 8;
			int pageCount = (allCount + pageSize - 1) / pageSize;
			if (pageNo >= pageCount) {
				pageNo = pageCount;
			}
			int start = (pageNo - 1) * pageSize;
			int end = pageNo * pageSize;
			if (end >= allCount) {
				end = allCount;
			}
			UserConsultationDto ucd = new UserConsultationDto();
			ucd.setId(String.valueOf(allCount));
			for (int i = start; i < end; i++) {
				result.add(ucds.get(i));
			}
			result.add(ucd);
		}
		return (result != null && result.size() > 0) ? result : null;
	}

	/**
	 * @Title: getCustomerReplay
	 * @Description: 获取回复
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月16日 下午6:56:18
	 * @param id
	 * @param map
	 * @return String
	 */
	@RequestMapping(value="/getCustomerReplay" ,method=RequestMethod.GET)
	public String getCustomerReplay(@RequestParam("id") Integer id,Map<String, Object> map) {
		List<CustomerReplay> scrb = customerReplayImp.selectCustomerReplayByUserConsultationID(id);
		map.put("scrb", scrb);
		return "user/user_customer_replay";
	}


	/**
	 * @Title: toConsultation
	 * @Description: 去咨询页面
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月16日 下午9:03:43
	 * @param pageNow
	 * @param id
	 * @param map
	 * @return String
	 */
	@RequestMapping("/toConsultation")
	public String toConsultation(@RequestParam(value = "id") Integer id, Map<String, Object> map,
			HttpServletRequest request) {
		request.setAttribute("id", id);
		CustomerReplay cr = customerReplayImp.selectCustomerReplayByID(id);
		map.put("cr", cr);
		return "user/user_toconsultation";
	}

	/**
	 * @Title: processingConsultation
	 * @Description: 添加用户咨询
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月17日 下午6:30:02
	 * @param session
	 * @param id
	 * @param map
	 * @param request
	 * @return String
	 */
	@RequestMapping("/processingConsultation")
	public String processingConsultation(HttpSession session, @RequestParam(value = "id") Integer id,
			Map<String, Object> map, HttpServletRequest request) {
		request.setAttribute("id", id);
		String replay = (String) request.getParameter("replay");
		User user = userDao.selectUserById(id);
		UserConsultation uc = new UserConsultation();
		uc.setUser(user);
		uc.setReplaystate(0);
		uc.setConsultationtime(new Date());
		uc.setComment(replay);
		uc.setCustomerReplays(null);
		userConsultationServiceImpl.insertUserConsultation(uc);
		return "user/user_toconsultation";
	}

	@RequestMapping("/skipUserToConnment")
	public String skipUserToConnment(@RequestParam("id") Integer id, HttpServletRequest request) {
		User user = userDao.selectUserById(id);
		request.getSession().setAttribute("user", user);
		return "user/user_toconsultation";
	}

	/**
	 * @Title: insertAConsultation
	 * @Description: 新建咨询
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月22日 下午8:35:32
	 * @return String
	 */
	@RequestMapping("/insertAConsultation")
	public String insertAConsultation(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		System.out.println(user);
		String replay = (String) request.getParameter("replay");
		UserConsultation uc = new UserConsultation();
		uc.setComment(replay);
		uc.setUser(user);
		uc.setCustomerReplays(null);
		uc.setConsultationtime(new Date());
		uc.setReplaystate(0);
		userConsultationServiceImpl.insertUserConsultation(uc);
		return "user/user_consultation_list";
	}
}
