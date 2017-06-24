package org.lanqiao.bank.base.dao;

import java.util.List;

/**
 * @ClassName: BaseDao
 * @Description: 基础持久层接口，可供其他类继承
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年4月15日 下午7:15:58
 */
public interface BaseDao<T> {

	/**
	 * @Title: save
	 * @Description: 插入数据
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年4月15日 下午7:25:21
	 * @param t
	 * @return Integer
	 */
	Integer save(T t);

	/**
	 * @Title: remove
	 * @Description: 根据id删除数据
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年4月15日 下午7:25:44
	 * @param id
	 * @return Integer
	 */
	Integer remove(int id);

	/**
	 * @Title: update
	 * @Description: 更新相应记录
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年4月15日 下午7:25:48
	 * @param t
	 * @return Integer
	 */
	Integer update(T t);

	/**
	 * @Title: getOne
	 * @Description: 根据id获取记录
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年4月15日 下午7:25:51
	 * @param id
	 * @return T
	 */
	T getOne(int id);

	/**
	 * @Title: listBeans
	 * @Description: 获取所有记录，补偿使用
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年4月15日 下午7:25:54
	 * @return List<T>
	 */
	List<T> listBeans();

}
