/**@ClassName: UserTransferController.java 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月30日 下午2:22:16  
 */
package org.lanqiao.bank.controller.user;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.lanqiao.bank.base.dto.TransferDto;
import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.Transfer;
import org.lanqiao.bank.base.entity.TransferExample;
import org.lanqiao.bank.base.entity.TransferExample.Criteria;
import org.lanqiao.bank.base.entity.User;
import org.lanqiao.bank.base.util.DateFormatUtil;
import org.lanqiao.bank.service.impl.admin.CardServiceImpl;
import org.lanqiao.bank.service.impl.user.UserServiceImpl;
import org.lanqiao.bank.service.user.TransferService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @ClassName: UserTransferController
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月30日 下午2:22:16
 */
@Controller
@RequestMapping("/LUser/transfer_user")
public class UserTransferController {
	@Autowired
	private TransferService transferService;
	@Autowired
	private CardServiceImpl cardServiceImpl;
	@Autowired
	private UserServiceImpl userServiceImpl;

	// @Autowired
	// private TransferDto transferdto;
	/**
	 * @Title: addTransfer
	 * @Description: 添加转账
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月30日 下午4:34:37
	 * @param transfer
	 *            void
	 */
	@RequestMapping(method = RequestMethod.POST)
	@ResponseBody
	public int addTransfer(Transfer transfer) {
		transfer.setCreateTime(new Date());
		try {
			return transferService.addTransfer(transfer);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
    
	private Logger logger = LoggerFactory.getLogger(getClass());
    /**
     * @Title: selectTransfer
     * @Description: TODO
     * @author 西安工业大学蓝桥学员-王卓华
     * @time 2017年5月9日 下午2:49:49 
     * @param request
     * @return
     * List<TransferDto>
     */
	@RequestMapping(value = "/transferSelect", method = RequestMethod.GET)
	@ResponseBody
	public List<TransferDto> selectTransfer(HttpServletRequest request,String date1,String date2,String balance1,String balance2) {
		User user = (User) request.getSession().getAttribute("user");
		TransferExample example = new TransferExample();
		Criteria criteria = example.createCriteria();
		if(date1!=""&&date1!=null&&date2!=""&&date2!=null&&date1!=date2){
			Date date11 = DateFormatUtil.StrToDate(date1+" 00:00:00");
			Date date22 = DateFormatUtil.StrToDate(date2+" 00:00:00");
			if(date11.getTime()>date22.getTime()){
				criteria.andCreateTimeBetween(date22,date11);
			}else{
				criteria.andCreateTimeBetween(date11,date22);
			}
		}
		if(balance1!=""&&balance1!=null&&balance2!=""&&balance2!=null&&balance1!=balance2){
			if(Double.parseDouble(balance1)<Double.parseDouble(balance2)){
				criteria.andMoneyBetween(Double.parseDouble(balance1), Double.parseDouble(balance2));
			}else{
				criteria.andMoneyBetween(Double.parseDouble(balance1), Double.parseDouble(balance2));
			}
		}
		criteria.andUserIdEqualTo(user.getId());
		criteria.andCreateTimeLessThan(new Date());
		List<Transfer> transfers = transferService.selectTransferByExample(example);
		List<TransferDto> tdto = new ArrayList<TransferDto>();
		for (int i = 0; i < transfers.size(); i++) {
			TransferDto transferdto = new TransferDto();
			Transfer transfer = transfers.get(i);
			Integer fromCardId = transfer.getFromCardId();
			Integer toCardId = transfer.getToCardId();
			Card fromcard = cardServiceImpl.selectByPrimaryKey(fromCardId);
			Card toCard = cardServiceImpl.selectByPrimaryKey(toCardId);
			User fromuser = userServiceImpl.selectUserById(fromcard.getUserId());
			User touser = userServiceImpl.selectUserById(toCard.getUserId());
			String fromname = fromuser.getName();
			String toname = touser.getName();
			String date = DateFormatUtil.DateToStr(transfer.getCreateTime());
			transferdto.setCreateTime(date);
			transferdto.setMoney(transfer.getMoney());
			transferdto.setFromname(fromname);
			transferdto.setToname(toname);
			tdto.add(transferdto);
			request.getSession().removeAttribute("transfer");
			request.getSession().setAttribute("transfer", tdto);
			// logger.info("tdto = {}", tdto.get(i));
		}
		return tdto;
	}
    /**
     * @Title: getTransfer
     * @Description: TODO
     * @author 西安工业大学蓝桥学员-王卓华
     * @time 2017年5月9日 下午2:49:59 
     * @param request
     * @return
     * List<TransferDto>
     */
	@RequestMapping(value = "/gettransferSelect", method = RequestMethod.GET)
	@ResponseBody
	public List<TransferDto> getTransfer(HttpServletRequest request) {
		List<TransferDto> tdto = (List<TransferDto>) request.getSession().getAttribute("transfer");
		return tdto;
	}

}
