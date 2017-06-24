package org.lanqiao.bank.base.util;

/**
 * @ClassName: PageUtil
 * @Description:
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年4月21日 下午7:28:35
 */
public class PageUtil {
	private Integer begin;// 开始位置
	private Integer offset;// 偏移量/显示条数

	/**
	 * @Title: TODO
	 * @Description: 使外界无法直接操作
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年4月21日 下午7:59:49
	 * @param begin
	 * @param offset
	 */
	private PageUtil(Integer begin, Integer offset) {
		super();
		this.begin = begin;
		this.offset = offset;
	}

	public Integer getBegin() {
		return begin;
	}

	public Integer getOffset() {
		return offset;
	}

	/**
	 * @Title: format
	 * @Description: 得到mysql数据库需要的起始条件
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年4月21日 下午7:45:34
	 * @param current
	 *            当前页
	 * @param row
	 *            每页记录数
	 * @return PageUtil
	 */
	public static PageUtil format(int current, int row) {
		return new PageUtil((current - 1) * row, row);
	}

}
