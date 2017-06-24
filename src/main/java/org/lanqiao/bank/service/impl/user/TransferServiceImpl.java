/**@ClassName: TransferServiceImple.java 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月30日 下午2:27:28  
 */
package org.lanqiao.bank.service.impl.user;

import java.util.List;

import org.lanqiao.bank.base.dao.CardDao;
import org.lanqiao.bank.base.dao.TransferDao;
import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.Transfer;
import org.lanqiao.bank.base.entity.TransferExample;
import org.lanqiao.bank.base.util.PageUtil;
import org.lanqiao.bank.service.user.TransferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**@ClassName: TransferServiceImple 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月30日 下午2:27:28  
 */
@Service
public class TransferServiceImpl implements TransferService {
	@Autowired
	private TransferDao transferDao;
	@Autowired
	private CardDao cardDao;
	/* (non-Javadoc)
	 * @see org.lanqiao.bank.controller.user.TransferService#addTransfer(org.lanqiao.bank.base.entity.Transfer)
	 */
	@Override
	@Transactional
	public int addTransfer(Transfer transfer) throws Exception {
		// TODO Auto-generated method stub
		Card card = cardDao.selectByPrimaryKey(transfer.getFromCardId());
		card.setBalance(card.getBalance() - transfer.getMoney());
		if(card.getBalance() < 0) {
			throw new Exception("余额不足！");
		}
		cardDao.updateByPrimaryKey(card);
		return transferDao.insert(transfer);
	}

	/* (non-Javadoc)
	 * @see org.lanqiao.bank.controller.user.TransferService#selectTransferByExample(org.lanqiao.bank.base.entity.TransferExample)
	 */
	@Override
	public List<Transfer> selectTransferByExample(TransferExample example) {
		// TODO Auto-generated method stub
		return transferDao.selectByExample(example);
	}

	/**@Title: selectTransferByCardId
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-刘晓莉
	 * @return 
	 * @time 2017年5月14日 上午10:45:55 
	 * void
	 */
	public Transfer selectTransferByCardId(Integer cardId) {
		Transfer transfer = transferDao.selectByPrimaryKey(cardId);
		return transfer;
	}

	/**@Title: seletTransferPage
	 * @Description: 对转账的记录进行分页
	 * @author 西安工业大学蓝桥学员-刘晓莉
	 * @time 2017年5月19日 下午6:21:45 
	 * @param format
	 * @return
	 * List
	 */
	public List<Transfer> getTransferPage(PageUtil format) {
		List<Transfer> page=transferDao.getTransferPage(format);
		return page;
	}

}
