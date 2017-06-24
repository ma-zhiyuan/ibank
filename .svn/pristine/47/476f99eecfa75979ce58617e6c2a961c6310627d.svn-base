package org.lanqiao.bank.controller.admin;

import static org.springframework.test.web.client.match.MockRestRequestMatchers.method;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.lanqiao.bank.base.dao.AdminDao;
import org.lanqiao.bank.base.dto.InterestDto;
import org.lanqiao.bank.base.entity.Admin;
import org.lanqiao.bank.base.entity.Bank;
import org.lanqiao.bank.base.entity.BankExample;
import org.lanqiao.bank.base.entity.Interest;
import org.lanqiao.bank.base.entity.InterestExample;
import org.lanqiao.bank.base.entity.InterestExample.Criteria;
import org.lanqiao.bank.base.util.FileConstants;
import org.lanqiao.bank.service.impl.admin.AdminServiceImpl;
import org.lanqiao.bank.service.impl.admin.BankServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * @ClassName: BankController
 * @Description: 银行控制器层
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年4月24日 上午9:37:38
 */
@Controller
@RequestMapping("/LAdmin/Bank")
@Deprecated
public class BankController {
	@Autowired
	BankServiceImpl bankServiceImpl;

	// 查询管理员 吴安安
	@Autowired
	private AdminServiceImpl adminServiceImpl;

	/**
	 * @Title: addBank
	 * @Description: 添加一个银行
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017年5月4日 下午11:17:08
	 * @param request
	 *            file bankName
	 * @return String
	 * 
	 */
	@RequestMapping("addBank")
	public String addBank(@RequestParam("name") String bankName, MultipartFile logo, HttpServletRequest request) {
		if (bankName.equals("")) {
			return "admin/admin_insertBank";
		} else {
			if (!logo.isEmpty()) {
				try {
					// 文件保存路径
					String filePath = request.getSession().getServletContext().getRealPath("/")
							+ FileConstants.ADMIN_UPLOAD_PATH + "bank/" + System.currentTimeMillis()
							+ logo.getOriginalFilename();
					// 转存文件
					logo.transferTo(new File(filePath));
					Bank bank = new Bank();
					// createTime;updateTime;pic;
					bank.setName(bankName);
					bank.setUpdateTime(new Date());
					bank.setCreateTime(new Date());
					bank.setPic(System.currentTimeMillis() + logo.getOriginalFilename());
					int i = bankServiceImpl.insertBank(bank);
					if (i == 0) {
						return "admin/admin_insertBank";
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return "admin/admin_addbank_success";
	}

	/**
	 * @Title: insertBank
	 * @Description: 接收增加银行的表单数据进行增加银行
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年4月24日 下午7:34:45
	 * @param bank接收表单传入的需要增加的银行相关数据数据
	 * @return String
	 */
	@Deprecated
	@RequestMapping("/insertBank")
	public String insertBank(Bank bank) {
		if (bank.getName() == "") {
			return "admin/admin_insertBank";
		} else {
			// 设置添加该银行的创建时间
			bank.setCreateTime(new Date());
			// 设置添加该银行的初始更新时间
			bank.setUpdateTime(new Date());
			int result = bankServiceImpl.insertBank(bank);
			if (result == 0) {
				// 失败跳回提交页面
				return "admin/admin_insertBank";
			}
		}
		return "admin/success";
	}

	/**
	 * @Title: listAllBank
	 * @Description: 分页获取所有信息银行并显示
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年4月26日 下午5:42:01
	 * @param example
	 * @param map
	 * @return String
	 */
	@RequestMapping("/listAllBank")
	public String listAllBank(BankExample example, Map<Object, List<Bank>> map) {

		List<Bank> allBank = bankServiceImpl.getAllBank(example);
		System.out.println(allBank);
		map.put("banks", allBank);
		return "customer/customer_card_manage";
	}

	/**
	 * @Title: deleteBankById
	 * @Description: 根据id去删除一个银行
	 * @author 西安工业大学蓝桥学员-崔永雷
	 * @time 2017.4.26
	 * @param bankId
	 * @return string
	 */
	@RequestMapping("/deleteBank")
	public String deleteBankById(@RequestParam(value = "bankId") Integer id) {
		int i = bankServiceImpl.deleteBank(id);
		return "admin/success";
	}

	/**
	 * @Title: toBankInterestRate
	 * @Description: 去bank_interest_rate.jsp页面
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月23日 上午10:53:56
	 * @return String
	 */
	@RequestMapping("/toBankInterestRate")
	public String toBankInterestRate() {
		return "admin/bank_interest_rate";
	}

	/**
	 * @Title: updateBankInterest
	 * @Description: 查询银行所有利率
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月21日 上午10:21:11
	 * @param response
	 * @return String
	 */
	@RequestMapping(value = "/toRenewDepositIntereTtrate", method = RequestMethod.GET)
	@ResponseBody
	public List<InterestDto> toRenewDepositIntereTtrate(@RequestParam("page") String page) {
		// 根据条件查询银行利率
		InterestExample example = new InterestExample();
		Criteria createCriteria = example.createCriteria();
		List<Interest> interest = bankServiceImpl.selectByExample(example);
		List<InterestDto> dtos = new ArrayList<InterestDto>();
		for (int i = 0; i < interest.size(); i++) {
			InterestDto dto = new InterestDto();
			dto.setId(interest.get(i).getId().toString());
			dto.setRate(interest.get(i).getRate().toString());
			dto.setDuration(interest.get(i).getDuration().toString());
			Bank bank = bankServiceImpl.selectByPrimaryKey(interest.get(i).getBankId());
			dto.setBankName(bank.getName());
			if (interest.get(i).getIsDeposit() == 1) {
				dto.setIs_deposit("是");
			} else {
				dto.setIs_deposit("否");
			}
			dtos.add(dto);
		}
		List<InterestDto> result = new ArrayList<InterestDto>();
		if (interest != null && interest.size() > 0) {
			int allCount = interest.size();
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
			InterestDto dto = new InterestDto();
			dto.setId(String.valueOf(allCount));
			for (int i = start; i < end; i++) {
				result.add(dtos.get(i));
			}
			result.add(dto);
		}
		return (result != null && result.size() > 0) ? result : null;
	}

	/**
	 * @Title: updateBankInterest
	 * @Description: 更改银行利率
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月21日 上午11:53:04
	 * @return String
	 */
	@RequestMapping("/queryID")
	public String queryID(@RequestParam("id") Integer id, Map<String, Object> map) {
		// 查询处理率列表
		Interest interest = bankServiceImpl.updateBankInterest(id);
		map.put("interest", interest);
		return "admin/renew_deposit_interest_rate";
	}

	/**
	 * @Title: updateBankInterest
	 * @Description: 更新利率
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月21日 下午5:10:38
	 * @param id
	 * @param map
	 * @param request
	 * @return String
	 */
	@RequestMapping(value = "/updateBankInterest", method = RequestMethod.GET)
	public String updateBankInterest(@RequestParam(value = "id") Integer id, Map<String, Object> map,
			HttpServletRequest request) {
		Interest interest = bankServiceImpl.updateBankInterest(id);
		String rateString = (String) request.getParameter("rate");
		System.out.println(rateString);
		double rate = Double.parseDouble(rateString);
		interest.setRate(rate);
		bankServiceImpl.updateByPrimaryKey(interest);
		return "admin/bank_interest_rate";
	}
	
	/**
	 * @Title: toDepositInterestRate
	 * @Description: 去deposit_interest_rate.jsp页面
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月24日 下午7:07:03 
	 * @return
	 * String
	 */
	@RequestMapping("/toDepositInterestRate")
	public String toDepositInterestRate(){
		return "admin/deposit_interest_rate";
	}
	/**
	 * @Title: insertBankInterest
	 * @Description: 插入一条银行利率
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月24日 下午7:21:29 
	 * @return
	 * String
	 */
	@RequestMapping("/insertBankInterest")
	public String insertBankInterest(HttpServletRequest request){
		String rate = request.getParameter("rate");
		String duration = request.getParameter("duration");
		String isdeposit = request.getParameter("isdeposit");
		Interest interest = new Interest();
		interest.setRate(Double.parseDouble(rate));
		interest.setDuration(Integer.parseInt(duration));
		interest.setIsDeposit(Integer.parseInt(isdeposit));
		interest.setBankId(1);
		bankServiceImpl.insertInterest(interest);
		return "admin/bank_interest_rate";
	}
}
