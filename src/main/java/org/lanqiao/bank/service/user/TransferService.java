/**@ClassName: TransferService.java 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月30日 下午2:23:50  
 */
package org.lanqiao.bank.service.user;

import java.util.List;

import org.lanqiao.bank.base.entity.Transfer;
import org.lanqiao.bank.base.entity.TransferExample;

/**@ClassName: TransferService 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月30日 下午2:23:50  
 */
public interface TransferService {
	
	/**@Title: addTransfer
	 * @Description: 增加转账记录
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月30日 下午2:28:16 
	 * @param transfer
	 * @return
	 * int
	 */
	int addTransfer(Transfer transfer) throws Exception;
	/**@Title: selectTransferByExample
	 * @Description: 根据条查询转账
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月30日 下午2:28:35 
	 * @param example
	 * @return
	 * List<Transfer>
	 */
	List<Transfer> selectTransferByExample(TransferExample example);
}
