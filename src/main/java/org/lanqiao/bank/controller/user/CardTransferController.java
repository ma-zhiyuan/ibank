/**
 * 
 */
package org.lanqiao.bank.controller.user;

import java.util.List;

import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Transfer;
import org.lanqiao.bank.base.entity.TransferExample;
import org.lanqiao.bank.base.entity.TransferExample.Criteria;
import org.lanqiao.bank.base.util.PageUtil;
import org.lanqiao.bank.service.impl.user.TransferServiceImpl;
import org.lanqiao.bank.service.user.TransferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @ClassName: CadTransferController
 * @Description: 查询卡的转账信息
 * @author 西安工业大学蓝桥学员-刘晓莉
 * @time 2017年5月8日 下午8:25:39
 */
@Controller
@RequestMapping("/LUser/transfer_card")
public class CardTransferController {

	@Autowired
	private TransferService transferService;
	@Autowired
	private TransferServiceImpl transferServiceImpl;

	/**
	 * @Title: selectTransfer
	 * @Description: 用户当前卡号记录列表  并且分页
	 * @author 西安工业大学蓝桥学员-刘晓莉
	 * @time 2017年5月15日 下午8:55:56
	 * @param cardId
	 * @param model
	 * @return String
	 */
	@RequestMapping(value = "/CardtransferSelect")
	public String selectTransfer(@RequestParam("cardid") Integer cardId, Model model,@RequestParam("pageNow")Integer pageNow) {
		
		TransferExample example = new TransferExample();
		Criteria criteria = example.createCriteria();
		criteria.andToCardIdEqualTo(cardId);
		criteria.andFromCardIdEqualTo(cardId);
		PageUtil format = PageUtil.format(pageNow, 5);
		List<Transfer> transfers = transferService.selectTransferByExample(example);
		List<Transfer> pages=transferServiceImpl.getTransferPage(format);
		Pager<Transfer> pager=new Pager<Transfer>(pageNow,format.getOffset(),transfers.size(),pages);
		model.addAttribute("cardid", cardId);
		model.addAttribute("transfers", pager);
		return "user/transfer/trade_details";

	}

}
