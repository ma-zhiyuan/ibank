package org.lanqiao.bank.service.impl.admin;

import java.util.List;
import java.util.Map;

import org.lanqiao.bank.base.dao.TransferDao;
import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Transfer;
import org.lanqiao.bank.base.entity.TransferExample;
import org.lanqiao.bank.base.util.PageUtil;
import org.lanqiao.bank.service.admin.TransferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @ClassName: TransferServiceImpl 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-查文彬
 * @time 2017年5月6日 下午6:34:15
 */
@Service
public class AdminTransferServiceImpl implements TransferService {
	@Autowired
	TransferDao transferDao;

	/**
	 * @Title: selectByExample
	 * @Description: 获取一页的转账记录
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月7日 下午1:48:24 
	 * @param example
	 * @return
	 */
	@Override
	public List<Transfer> selectByExample(Pager<Transfer> pager, TransferExample example) {
		List<Transfer> transfers = transferDao.selectByExample(example);
		return transfers;
	}

	/**
	 * @Title: getcount
	 * @Description: 获取查询数据的条数
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月8日 下午7:15:36 
	 * @param example
	 * @return
	 */
	@Override
	public long getcount(TransferExample example) {
		long count = transferDao.countByExample(example);
		return count;
	}

	/**
	 * @Title: selectByPrimaryKey
	 * @Description: 根据id查询单条转账信息
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月8日 下午7:15:54 
	 * @param id
	 * @return
	 */
	@Override
	public Transfer selectByPrimaryKey(int id) {
		return transferDao.selectByPrimaryKey(id);
	}
	public int deleteByPrimaryKey(int id) {
		return transferDao.deleteByPrimaryKey(id);
	}

}
