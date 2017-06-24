package org.lanqiao.bank.controller.admin;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Admin;
import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.LoanInfo;
import org.lanqiao.bank.base.entity.LoanInfoExample;
import org.lanqiao.bank.base.entity.Transfer;
import org.lanqiao.bank.base.entity.User;
import org.lanqiao.bank.base.entity.UserConsultation;
import org.lanqiao.bank.base.entity.TransferExample.Criteria;
import org.lanqiao.bank.base.util.FileConstants;
import org.lanqiao.bank.base.util.PageUtil;
import org.lanqiao.bank.service.impl.admin.AdminServiceImpl;
import org.lanqiao.bank.service.impl.admin.CardServiceImpl;
import org.lanqiao.bank.service.impl.customer.CustomerReplayImp;
import org.lanqiao.bank.service.impl.customer.CustomerServiceServiceImpl;
import org.lanqiao.bank.service.impl.loan.LoanInfoServiceImpl;
import org.lanqiao.bank.service.impl.user.UserConsultationServiceImpl;
import org.lanqiao.bank.service.impl.user.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 * @ClassName: AdminHandler
 * @Description: 管理员控制台
 * @author 西安工业大学蓝桥学员-崔永雷
 * @time 20174.22中午14：24
 */
@Controller
@RequestMapping("/LAdmin/Admin")
public class AdminController {
	@Autowired
	CustomerReplayImp customerReplayImp;
	@Autowired
	CardServiceImpl cardServiceImpl;
	@Autowired
	UserServiceImpl userServiceImpl;
	@Autowired
	AdminServiceImpl adminServiceImpl;
	@Autowired
	CustomerServiceServiceImpl customerServiceServiceImpl;
	@Autowired
	UserConsultationServiceImpl userConsultationServiceImpl;

	@ModelAttribute
	public void getModel(@RequestParam(value = "id", required = false) Integer id, Map<String, Object> map)
			throws ParseException {
		if (id != null) {
			Admin admin = adminServiceImpl.selectAdminById(id);
			map.put("admin", admin);
		} else {
			Admin admin = new Admin();
			map.put("admin", admin);
		}
	}

	/**
	 * @Title: getAUserClear
	 * @Description: 展示一个用户的详细信息
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017.4.24
	 * @param userID
	 * @return string
	 * 
	 */
	@RequestMapping("selectUserClear")
	public String getAUserClear(Integer userId, Map<String, Object> map) {
		User user = userServiceImpl.selectUserById(userId);
		map.put("showUser", user);
		return "admin/showAUser";

	}

	/**
	 * @Title: toUpdate
	 * @Description: 回显要修改的内容
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017.4.22
	 * @param void
	 * @return String
	 */
	@RequestMapping("/toUpdate")
	public String toUpdateAdmin() {
		return "admin/update";
	}

	/**
	 * @Title: login
	 * @Description: 管理员使用电话号码登录
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年4月29日 下午12:09:54
	 * @param phone
	 * @param password
	 * @param vcode
	 * @param session
	 * @return String
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("phone") String phone, @RequestParam("password") String password,
			HttpSession session  ) {
		Admin admin = adminServiceImpl.toLogin(phone);
		if (admin != null) {
			// 查询密码是否正确，正确就setAttribute
			if (admin.getPassword().equals(DigestUtils.md5DigestAsHex(password.getBytes()))) {
				session.setAttribute("admin", admin);
				session.removeAttribute("error2");
				return "admin/welcome";
			}
		}
		session.setAttribute("error2", "error");
		return "redirect:/admin_login.jsp";
	}

	/**
	 * @Title: signOut
	 * @Description: 退出管理员登录
	 * @author 西安工业大学蓝桥学员-闫宇
	 * @time 2017年5月7日 下午4:25:10
	 * @param session
	 * @return String
	 */
	@RequestMapping(value = "signOut")
	public String signOut(HttpSession session) {
		session.removeAttribute("admin");
		return "redirect:/admin_login.jsp";
	}

	/**
	 * @Title: showMySelf
	 * @Description: 查询管理员信息
	 * @author 西安工业大学蓝桥学员-闫宇
	 * @time 2017.4.22
	 * @param id
	 * @return string
	 */
	@RequestMapping("showAdmin")
	public String showMySelf(@RequestParam("id") Integer id) {
		Admin adminById = adminServiceImpl.selectAdminById(id);
		return "admin/show_admin";
	}

	/**
	 * @Title: updateAdminPhoto
	 * @Description: 更新照片
	 * @author 西安工业大学蓝桥学员-闫宇
	 * @time 2017年5月16日 下午7:42:14
	 * @param ad
	 * @param session
	 * @param file
	 * @param request
	 * @return String
	 */
	@RequestMapping("/updateAdminPhoto")
	public String updateAdminPhoto(Admin ad, HttpSession session, MultipartFile file, HttpServletRequest request) {
		if (file != null) {
			// 文件保存路径
			String filePath = request.getSession().getServletContext().getRealPath("/")
					+ FileConstants.ADMIN_UPLOAD_PATH + file.getOriginalFilename();
			try {
				// 转存文件
				file.transferTo(new File(filePath));
				ad.setPhoto(file.getOriginalFilename());
				adminServiceImpl.updateAdminById(ad);
				Admin admin = adminServiceImpl.selectAdminById(ad.getId());
				session.setAttribute("admin", admin);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			return "admin/update_admin_photo";
		}
		return "admin/show_admin";
	}

	/**
	 * @Title: updateAdmin
	 * @Description: 修改管理员信息
	 * @author 西安工业大学蓝桥学员-闫宇
	 * @time 2017年5月7日 下午2:40:21
	 * @param admin
	 * @return String
	 */
	@RequestMapping(value = "/updateAdmin")
	public String updateAdmin(Admin ad, HttpSession session, MultipartFile file, HttpServletRequest request) {
		String name = ad.getName();
		String phone = ad.getPhone();
		String email = ad.getEmail();
		// 判断提交的数据不能 为空
		if (phone.equals("") || email.equals("") || name.equals("")) {
			return "admin/update_admin";
		} else {
			adminServiceImpl.updateAdminById(ad);
			Admin admin = adminServiceImpl.selectAdminById(ad.getId());
			session.setAttribute("admin", admin);
			return "admin/show_admin";
		}
	}

	/**
	 * @Title: verPassword
	 * @Description: 通过异步请求 判断密码是否正确
	 * @author 西安工业大学蓝桥学员-闫宇
	 * @time 2017年5月10日 下午8:11:54
	 * @param response
	 * @param request
	 * @throws IOException
	 *             void
	 */
	@RequestMapping("/verPassword")
	public void verPassword(HttpServletResponse response, HttpServletRequest request) throws IOException {
		response.setCharacterEncoding("utf-8");
		PrintWriter qq = response.getWriter();
		String id = request.getParameter("id");
		String pwd = request.getParameter("password");
		String md5DigestAsHex = DigestUtils.md5DigestAsHex(pwd.getBytes());
		Admin admin = adminServiceImpl.selectAdminById(Integer.parseInt(id));
		if (md5DigestAsHex.equals(admin.getPassword())) {
			qq.print("密码正确");
		} else {
			qq.print("密码错误请重试");
		}
	}

	/**
	 * @Title: updatePassword
	 * @Description: 修改密码
	 * @author 西安工业大学蓝桥学员-闫宇
	 * @time 2017年5月8日 下午7:47:40
	 * @return String
	 * @throws IOException
	 */
	@RequestMapping("/updatePassword")
	public String updatePassword(Integer id, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		Admin admin = adminServiceImpl.selectAdminById(id);
		String password = admin.getPassword();
		// 获取到前台加密过的原密码
		String pwd = request.getParameter("password");
		// 获取到前台加密过的新密码
		String newPwd = request.getParameter("newpassword");
		// 原密码后台加密
		String md5DigestAsHex = DigestUtils.md5DigestAsHex(pwd.getBytes());
		String msg;
		// 判断原密码输入是否正确
		if (password.equals(md5DigestAsHex)) {
			String md5DigestAsHex2 = DigestUtils.md5DigestAsHex(newPwd.getBytes());
			admin.setPassword(md5DigestAsHex2);
			int i = adminServiceImpl.updateAdminById(admin);
			System.out.println("------------------");
			return "admin/admin_pwdUpdate_success";
		}
		return "admin/update_password";
	}

	/**
	 * @Title: showAUser
	 * @Description: 查询一个用户信息
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017.4.22
	 * @param id，map
	 * @return string
	 */
	@RequestMapping("/selectOne")
	public String showAUser(@RequestParam("id") Integer id, Map<String, Object> map) {
		User user = userServiceImpl.selectUserById(id);
		if (user != null) {
			map.put("aUser", user);
			return "user/user_list_one";
		} else {
			return "user/userFail";
		}
	}

	/**
	 * @Title: ShowAllUser
	 * @Description: 展示所有user
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 20174.22中午14：24
	 * @param void
	 * @return string
	 */
	@RequestMapping("/selectAll")
	public String showAllUser(Map<String, Object> map, @RequestParam(value = "pageNow") Integer pageNow) {
		PageUtil format = PageUtil.format(pageNow, 5);
		List<User> showAllUser = userServiceImpl.showAllUser();
		List showPageUser = userServiceImpl.showPageUser(format);
		Pager<User> pager = new Pager<User>(pageNow, format.getOffset(), showAllUser.size(), showPageUser);
		System.out.println(showAllUser);
		map.put("pageusers", pager);
		return "admin/userlist";
	}

	/**
	 * @Title: showAllUserByAge
	 * @Description: 根据年龄排序展示用户
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月8日 下午10:59:28
	 * @param pageNow，map
	 * @return String
	 */
	@RequestMapping("/selectAllByAge")
	public String showAllUserByAge(Map<String, Object> map, @RequestParam(value = "pageNow") Integer pageNow) {
		PageUtil format = PageUtil.format(pageNow, 5);
		List<User> showAllUser = userServiceImpl.showAllUser();
		List showPageUserByAge = userServiceImpl.showPageUserByAge(format);
		Pager<User> pager = new Pager<User>(pageNow, format.getOffset(), showAllUser.size(), showPageUserByAge);
		map.put("pageusers", pager);
		return "admin/userlistByAge";
	}

	/**
	 * @Title: showAllUserByAge
	 * @Description: 根据年龄倒序展示用户
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月8日 下午10:59:28
	 * @param pageNow，map
	 * @return String
	 */
	@RequestMapping("/selectAllByAgeDesc")
	public String showAllUserByAgeDesc(Map<String, Object> map, @RequestParam(value = "pageNow") Integer pageNow) {
		PageUtil format = PageUtil.format(pageNow, 5);
		List<User> showAllUser = userServiceImpl.showAllUser();
		List showPageUserByAge = userServiceImpl.showPageUserByAgeDesc(format);
		Pager<User> pager = new Pager<User>(pageNow, format.getOffset(), showAllUser.size(), showPageUserByAge);
		map.put("pageusers", pager);
		return "admin/userlistByAgeDesc";
	}

	/**
	 * @Title: showAllUserByAge
	 * @Description: 根据出生年月展示用户
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月8日 下午10:59:28
	 * @param pageNow，map
	 * @return String
	 */
	@RequestMapping("/selectAllByDate")
	public String showAllUserByDate(Map<String, Object> map, @RequestParam(value = "pageNow") Integer pageNow) {
		PageUtil format = PageUtil.format(pageNow, 5);
		List<User> showAllUser = userServiceImpl.showAllUser();
		List showPageUserByAge = userServiceImpl.showPageUserByDate(format);
		Pager<User> pager = new Pager<User>(pageNow, format.getOffset(), showAllUser.size(), showPageUserByAge);
		map.put("pageusers", pager);
		return "admin/userlistByDate";
	}

	/**
	 * @Title: showAllUserByAge
	 * @Description: 根据出生年月倒序展示用户
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月8日 下午10:59:28
	 * @param pageNow，map
	 * @return String
	 */
	@RequestMapping("/selectAllByDateDesc")
	public String showAllUserByDateDesc(Map<String, Object> map, @RequestParam(value = "pageNow") Integer pageNow) {
		PageUtil format = PageUtil.format(pageNow, 5);
		List<User> showAllUser = userServiceImpl.showAllUser();
		List showPageUserByAge = userServiceImpl.showPageUserByDateDesc(format);
		Pager<User> pager = new Pager<User>(pageNow, format.getOffset(), showAllUser.size(), showPageUserByAge);
		map.put("pageusers", pager);
		return "admin/userlistByDateDesc";
	}

	/**
	 * @Title: showUserLikeName
	 * @Description: 根据姓名模糊查询
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月10日 下午7:03:00
	 * @param map
	 * @param pageNow name
	 * @return String
	 * 
	 */
	@RequestMapping("/selectByLikeName")
	public String showUserLikeName(Map<String, Object> map, @RequestParam("name") String name) {
		List showPageUserByAge = userServiceImpl.showPageUserLikeName(name);// 根据name去查找相似的用户
		map.put("pageusers", showPageUserByAge);
		return "admin/userlistlikeName";
	}

	/**
	 * @Title: deleteUser
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-高彩丽
	 * @time 2017年4月24日 下午7:52:57
	 * @param id
	 * @return String
	 */
	@RequestMapping(value = "/deleteUser")
	public String deleteUser(Integer id) {
		userServiceImpl.deleteUserById(id);
		return "admin/user_delete_success";
	}

	/**
	 * @Title: updateuserpwd
	 * @Description: 管理员修改用户密码
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年4月25日 下午6:25:33
	 * @param id
	 * @param pwd1
	 * @param pwd2
	 * @return String
	 */
	@RequestMapping(value = "/updateUserPassword", method = RequestMethod.POST)
	public String updateuserpwd(@RequestParam(value = "pwd1", required = false) String pwd1,
			HttpServletRequest request) {
		Integer id = (Integer) request.getSession().getAttribute("userid");
		User user = userServiceImpl.selectUserById(id);
		user.setPassword(pwd1);
		userServiceImpl.updateUserById(user);
		return "admin/userlist";
	}

	/**
	 * @Title: selectAllConsult
	 * @Description: 用户查询所有咨询
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月7日 上午10:03:15
	 * @param void
	 * @return String
	 */
	@RequestMapping("/selectAllConsult")
	public String selectAllConsult(Map<String, Object> map, @RequestParam("pageNow") Integer pageNow) {
		PageUtil format = PageUtil.format(pageNow, 5);
		List listAll = userConsultationServiceImpl.getConsult();
		List pageList = userConsultationServiceImpl.getAllConsult(format);
		Pager<UserConsultation> page = new Pager<UserConsultation>(pageNow, format.getOffset(), listAll.size(),
				pageList);
		map.put("page", page);
		System.out.println(page.getData());
		return "admin/adminShowAllconsult";
	}
	
	/**
	 * @Title: selectConsultCareful
	 * @Description: 查看一个咨询的详细信息
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月14日 下午5:51:32
	 * @param map
	 * @param id
	 * @return String
	 */
	@RequestMapping("/selectConsultCareful")
	public String selectConsultCareful(Map<String, Object> map, @RequestParam("id") Integer id) {
		UserConsultation aConsult = userConsultationServiceImpl.getAConsult(id);
		map.put("careful", aConsult);
		return "admin/consultCareful";
	}

	/**
	 * @Title: deletReply
	 * @Description: 删除一个客服的回复
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月14日 下午5:53:58
	 * @param id
	 * @param userConsultId
	 * @return String
	 */
	@RequestMapping("/deleteReply")
	public String deletReply(@RequestParam("id") Integer id, @RequestParam("userConsultId") Integer userConsultId) {
		int i = customerReplayImp.deleteCustomerRepaly(id);
		return "redirect: selectConsultCareful?id=" + userConsultId;

	}

	/**
	 * @Title: getAllMoney
	 * @Description: 获取全部银行卡的金额
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月12日 下午8:23:52
	 * @param map
	 * @return String
	 */
	@RequestMapping("/showAllMoney")
	public String getAllMoney(Map<String, Object> map) {
		Double allMoney = cardServiceImpl.getAllMoney();
		map.put("allMoney", allMoney);
		return "admin/selectAllMoney";
	}

	/**
	 * @Title: cardPass
	 * @Description: 管理员验证银行卡注册通过
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月14日 上午9:34:56
	 * @param id
	 * @return String
	 */
	@RequestMapping("takeCardPass")
	public String cardPass(@RequestParam("id") Integer id) {
		Integer passCard = cardServiceImpl.passCard(id);
		return "admin/successPassCard";
	}

	/**
	 * @Title: toUpdateAdmin1
	 * @Description: 跳转页面--update_admin
	 * @author 西安工业大学蓝桥学员-闫宇
	 * @time 2017年5月21日 下午4:34:08 
	 * @return
	 * String
	 */
	@RequestMapping("/toUpdateAdmin")
	public String toUpdateAdmin1() {
		return "admin/update_admin";
	}

	/**
	 * @Title: toUpdatePassword
	 * @Description: 跳转页面--update_password
	 * @author 西安工业大学蓝桥学员-闫宇
	 * @time 2017年5月21日 下午4:35:09 
	 * @return
	 * String
	 */
	@RequestMapping("/toUpdatePassword")
	public String toUpdatePassword() {
		return "admin/update_password";
	}

	/**
	 * @Title: toUpdateAdminPhoto
	 * @Description: 跳转页面--update_admin_photo
	 * @author 西安工业大学蓝桥学员-闫宇
	 * @time 2017年5月21日 下午4:35:39 
	 * @return
	 * String
	 */
	@RequestMapping("/toUpdateAdminPhoto")
	public String toUpdateAdminPhoto() {
		return "admin/update_admin_photo";
	}
	
	/**
	 * @Title: selectAllLoans
	 * @Description: 查看用户所有银行卡贷款信息
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年5月31日 下午7:29:42 
	 * @param map
	 * @param pageNow
	 * @return
	 * String
	 */
	@Autowired
	LoanInfoServiceImpl loanInfoServiceImpl;
	@RequestMapping("/selectAllLoanInfos")
	public String selectAllLoanInfos(@RequestParam(value = "pageNow", required=false) Integer pageNow,
			@RequestParam(value="left", required=false)String left, 
			@RequestParam(value="right", required=false)String right, 
			@RequestParam(value="skipPageNow", required=false)Integer skipPageNow, 
			@RequestParam(value="orderByClause", required=false)String orderByClause, Pager pager, Map<String, Object> map) {
		
		int size = 5;
		LoanInfoExample example = new LoanInfoExample();
		if (pageNow==null) {
			pageNow=1;
		}
		if (left==null) {
			left="0";
		}
		if (right==null) {
			right="999999999";
		}
		//跳转页码
		if(skipPageNow!=null&&skipPageNow!=0){
			pageNow=skipPageNow;
		}
		
		String order = orderByClause;
		//判断管理员是否输入了查询条件
		if(orderByClause != null) {
			if(orderByClause.equals("1")) {
				orderByClause = " create_time";
			}else if(orderByClause.equals("2")){
				orderByClause = " create_time desc";
			}else if (orderByClause.equals("3")) {
				orderByClause = " loan_money";
			}else if(orderByClause.equals("4")){
				orderByClause = " loan_money desc";
			}else{
				orderByClause = " create_time";
			}
			if(!orderByClause.equals("0")) {
				example.setOrderByClause(orderByClause);
			}
		}
		pager.setRowPerPage(size);
		org.lanqiao.bank.base.entity.LoanInfoExample.Criteria criteria = example.createCriteria();
		//接收并判断管理员输入的金额范围
		if(left != null && right != null && left.length() != 0 && right .length() != 0) {
			criteria.andLoanMoneyBetween(Integer.valueOf(left), Integer.valueOf(right));
		}else {
			if((left == null || left.length() == 0) && right != null && right.length() != 0) {
				criteria.andLoanMoneyEqualTo(Integer.valueOf(right));
			}else {
				if(left != null && left.length() != 0 && (right == null || right.length() == 0)) {
					criteria.andLoanMoneyEqualTo(Integer.valueOf(left));
				}
			}
		}
		//排序sql语句片段
		example.setOrderByClause((orderByClause==null?"create_time ":orderByClause)+" limit "+((pageNow-1)*size)+","+size);
		List transfers = loanInfoServiceImpl.selectByExample(example);
		long count = loanInfoServiceImpl.countByExample(example);
		pager.setCurrentPage(pageNow);
		pager.setData(transfers);
		pager.setTotalRows((int)count);
		pager.setTotalPages(pager.getTotalRows() % size == 0 ? pager.getTotalRows() / 5 : pager.getTotalRows() / 5 + 1);
		//是不是首页、是不是有下一页
		pager.setHasPrePage(pager.getCurrentPage() != 1);
		pager.setHasNextPage(pager.getCurrentPage() != (pager.getTotalRows() % size == 0 ? pager.getTotalRows() / 5 : pager.getTotalRows() / 5 + 1));
		map.put("pager", pager);
		map.put("left", left);
		map.put("right", right);
		map.put("orderByClause", Integer.parseInt(order == null ? "0" : order));
		return "admin/adminShowAllLoanInfos";
	}
	/**
	 * @Title: getDetailLoanInfo
	 * @Description: 管理员查看贷款的详细信息
	 * @author 西安工业大学蓝桥学员-姚亚萍
	 * @time 2017年6月4日 下午4:34:21 
	 * @param loanInfoId
	 * @param map
	 * @return
	 * String
	 */
	@RequestMapping("/getDetailLoanInfo")
	public String getDetailLoanInfo(@RequestParam("loanInfoId") Integer loanInfoId, Map<String, Object> map){
		LoanInfo loanInfo = loanInfoServiceImpl.selectByPrimaryKey(loanInfoId);
		Integer fromCardId = loanInfo.getCardId();
		//获取银行卡的详细信息
		Card fromCard = cardServiceImpl.selectByPrimaryKey(fromCardId);
		Integer fromUserId = loanInfo.getUserId();
		//获取用户的详细信息
		User fromUser = userServiceImpl.selectUserById(fromUserId);
		map.put("fromCard", fromCard);
		map.put("fromUser", fromUser);
		map.put("loanInfo", loanInfo);
		return "admin/adminShowLoanInfo_detail";
	}
}
	

