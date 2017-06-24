package org.lanqiao.bank.base.dto;

import java.util.List;

/**
 * @ClassName: Pager
 * @Description: 分页Bean
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年4月21日 下午7:03:52
 */
public class Pager<T> {
	
	private Integer totalPages;// 总页数
	private Integer currentPage;// 当前第几页
	private Integer totalRows;// 总记录数
	private boolean hasNextPage;// 是否有下一页
	private boolean hasPrePage;// 是否有上一页
	private Integer rowPerPage;// 每页记录数
	private List<T> data;// 当前页数据

	public Pager() {
		super();
	}

	/**
	 * @Title: 有参构造器
	 * @Description: 计算相关属性
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年4月21日 下午7:22:33
	 * @param currentPage
	 * @param rowPerPage
	 * @param totalRows
	 * @param data
	 */
	public Pager(int currentPage, int rowPerPage, Integer totalRows, List<T> data) {
		super();
		this.currentPage = currentPage;
		this.rowPerPage = rowPerPage;
		this.data = data;
		this.totalRows = totalRows;
		this.totalPages = (int) Math.ceil(this.totalRows / (double) rowPerPage);
		this.hasNextPage = totalRows - currentPage * rowPerPage > 0 ? true : false;
		this.hasPrePage = currentPage > 1 ? true : false;
	}

	public Integer getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(Integer totalPages) {
		this.totalPages = totalPages;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public Integer getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(Integer totalRows) {
		this.totalRows = totalRows;
	}

	public boolean getHasNextPage() {
		return hasNextPage;
	}

	public void setHasNextPage(boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}

	public boolean isHasPrePage() {
		return hasPrePage;
	}

	public void setHasPrePage(boolean hasPrePage) {
		this.hasPrePage = hasPrePage;
	}

	public Integer getRowPerPage() {
		return rowPerPage;
	}

	public void setRowPerPage(Integer rowPerPage) {
		this.rowPerPage = rowPerPage;
	}

	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "Pager [totalPages=" + totalPages + ", currentPage=" + currentPage + ", totalRows=" + totalRows
				+ ", hasNextPage=" + hasNextPage + ", hasPrePage=" + hasPrePage + ", rowPerPage=" + rowPerPage
				+ ", data=" + data + "]";
	}

}
