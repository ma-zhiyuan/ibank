package org.lanqiao.bank.controller.admin;

import java.util.List;
import java.util.Map;

import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.Transfer;
import org.lanqiao.bank.base.entity.TransferExample;
import org.lanqiao.bank.base.entity.TransferExample.Criteria;
import org.lanqiao.bank.base.entity.User;
import org.lanqiao.bank.service.impl.admin.AdminTransferServiceImpl;
import org.lanqiao.bank.service.impl.admin.CardServiceImpl;
import org.lanqiao.bank.service.impl.user.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
/**
 * @ClassName: TransferController 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-查文彬
 * @time 2017年5月8日 下午7:43:04
 */

@Controller
@RequestMapping("/LAdmin/transfer")
public class TransferController {
	@Autowired
	AdminTransferServiceImpl adminTranServiceImpl;
	@Autowired
	CardServiceImpl cardServiceImpl;
	@Autowired
	UserServiceImpl userServiceImpl;

	/**
	 * @Title: getPageTransfer
	 * @Description: 获取一页转账记录的控制层
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月6日 下午7:35:13 
	 * @param map
	 * @param pageNum
	 * @return
	 * String
	 */
	@RequestMapping("/getPageTransfer")
	public String getPageTransfer(@RequestParam(value = "pageNow", required=false) Integer pageNow,
			@RequestParam(value="left", required=false)String left, 
			@RequestParam(value="right", required=false)String right, 
			@RequestParam(value="skipPageNow", required=false)Integer skipPageNow, 
			@RequestParam(value="orderByClause", required=false)String orderByClause, Pager<Transfer> pager, Map<String, Object> map) {
		int size = 5;
		TransferExample example = new TransferExample();
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
				orderByClause = " money";
			}else if(orderByClause.equals("4")){
				orderByClause = " money desc";
			}else{
				orderByClause = " create_time";
			}
			if(!orderByClause.equals("0")) {
				example.setOrderByClause(orderByClause);
			}
		}
		pager.setRowPerPage(size);
		Criteria criteria = example.createCriteria();
		//接收并判断管理员输入的金额范围
		if(left != null && right != null && left.length() != 0 && right .length() != 0) {
			criteria.andMoneyBetween(Double.parseDouble(left), Double.parseDouble(right));
		}else {
			if((left == null || left.length() == 0) && right != null && right.length() != 0) {
				criteria.andMoneyLessThanOrEqualTo(Double.parseDouble(right));
			}else {
				if(left != null && left.length() != 0 && (right == null || right.length() == 0)) {
					criteria.andMoneyGreaterThanOrEqualTo(Double.parseDouble(left));
				}
			}
		}
		//排序sql语句片段
		example.setOrderByClause((orderByClause==null?"create_time ":orderByClause)+" limit "+((pageNow-1)*size)+","+size);
		List<Transfer> transfers = adminTranServiceImpl.selectByExample(pager,example);
		for(int i = 0 ; i < transfers.size(); i++) {
			Transfer transfer = transfers.get(i);
			transfer.setUser(userServiceImpl.selectUserById(transfer.getUserId()));
			transfer.setFromCard(cardServiceImpl.selectByPrimaryKey(transfer.getFromCardId()));
			transfer.setToCard(cardServiceImpl.selectByPrimaryKey(transfer.getToCardId()));
		}
		long count = adminTranServiceImpl.getcount(example);
		pager.setCurrentPage(pageNow);
		pager.setData(transfers);
		pager.setTotalRows((int)count);
		System.out.println(count);
		pager.setTotalPages(pager.getTotalRows() % size == 0 ? pager.getTotalRows() / 5 : pager.getTotalRows() / 5 + 1);
		//是不是首页、是不是有下一页
		pager.setHasPrePage(pager.getCurrentPage() != 1);
		pager.setHasNextPage(pager.getCurrentPage() != (pager.getTotalRows() % size == 0 ? pager.getTotalRows() / 5 : pager.getTotalRows() / 5 + 1));
		map.put("pager", pager);
		map.put("left", left);
		map.put("right", right);
		map.put("orderByClause", Integer.parseInt(order == null ? "0" : order));
		return "admin/list_page_transfers";
	}
	/**
	 * @Title: getDetailTransfer
	 * @Description: 管理员查看单条转账的详细信息
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月8日 下午7:13:16 
	 * @param transferId
	 * @return
	 * String
	 */
	@RequestMapping("/getDetailTransfer")
	public String getDetailTransfer(@RequestParam("transferId") Integer transferId, Map<String, Object> map){
		Transfer transfer = adminTranServiceImpl.selectByPrimaryKey(transferId);
		Integer fromCardId = transfer.getFromCardId();
		//获取转账卡的详细信息
		Card fromCard = cardServiceImpl.selectByPrimaryKey(fromCardId);
		Integer fromUserId = transfer.getUserId();
		//获取转人的详细信息
		User fromUser = userServiceImpl.selectUserById(fromUserId);
		Integer toCardId = transfer.getToCardId();
		//获取转入卡的详细信息
		Card toCard = cardServiceImpl.selectByPrimaryKey(toCardId);
		//获取转入人的详细信息
		User toUser = userServiceImpl.selectUserById(toCard.getUserId());
		map.put("fromCard", fromCard);
		map.put("fromUser", fromUser);
		map.put("toCard", toCard);
		map.put("toUser", toUser);
		map.put("transfer", transfer);
		return "admin/list_detail_transfer";
	}
	@RequestMapping("/deleteDetailTransfer")
	public String deleteDetailTransfer(@RequestParam("transferId") Integer transferId, Map<String, Object> map){
		adminTranServiceImpl.deleteByPrimaryKey(transferId);
		return "admin/list_page_transfers";
	}
	
}
