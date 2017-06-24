package org.lanqiao.bank.service.admin;

import java.util.List;

import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Transfer;
import org.lanqiao.bank.base.entity.TransferExample;

/**
 * @ClassName: TransferService 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-查文彬
 * @time 2017年5月6日 下午7:07:03
 */
public interface TransferService {
	/**
	 * @Title: getAllTransfer
	 * @Description: 查询符合查询条件的一页的转账记录
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月6日 下午7:09:21 
	 * @param pageUtil
	 * @return
	 * List<Transfer>
	 */
	List<Transfer> selectByExample(Pager<Transfer> pager, TransferExample example);
	/**
	 * @Title: getcount
	 * @Description: 查询所有转账记录的条数
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月7日 下午2:38:09 
	 * @param example
	 * @return
	 * long
	 */
	long getcount(TransferExample example);
	/**
	 * @Title: selectByPrimaryKey
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年5月8日 下午7:16:49 
	 * @param id
	 * @return
	 * Transfer
	 */
	Transfer selectByPrimaryKey(int id);
}
