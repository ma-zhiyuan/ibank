package org.lanqiao.bank.base.entity;

import java.util.Date;
import java.util.List;

/**
 * @ClassName: UserConsultation 
 * @Description: 用户咨询
 * @author 西安工业大学蓝桥学员-吴安安
 * @time 2017年5月7日 下午1:12:27
 */
public class UserConsultation {

	private Integer id; //主键ID
	private User user; //获取咨询人的
	private String comment;  //咨询内容
	private List<CustomerReplay> customerReplays;  //回复的客服
	private Date consultationtime;  //咨询时间
	private Integer replaystate;  //回复状态
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * @return
	 * User
	 */
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	/**
	 * @return
	 * String
	 */
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	/**
	 * @return
	 * CustomerReplay
	 */
	
	/**
	 * @return
	 * Date
	 */
	public Date getConsultationtime() {
		return consultationtime;
	}
	/**
	 * @return the customerReplays
	 */
	public List<CustomerReplay> getCustomerReplays() {
		return customerReplays;
	}
	/**
	 * @param customerReplays the customerReplays to set
	 */
	public void setCustomerReplays(List<CustomerReplay> customerReplays) {
		this.customerReplays = customerReplays;
	}
	public void setConsultationtime(Date consultationtime) {
		this.consultationtime = consultationtime;
	}
	/**
	 * @return
	 * Integer
	 */
	public Integer getReplaystate() {
		return replaystate;
	}
	public void setReplaystate(Integer replaystate) {
		this.replaystate = replaystate;
	}

	/**@Title: TODO
	 * @Description: TODO 
	 * @author 西安工业大学蓝桥学员-孙新召
	 * @time 2017年5月10日 下午8:03:22 
	 * @param id
	 * @param user
	 * @param comment
	 * @param customerReplays
	 * @param consultationtime
	 * @param replaystate 
	 */
	public UserConsultation(Integer id, User user, String comment, List<CustomerReplay> customerReplays,
			Date consultationtime, Integer replaystate) {
		super();
		this.id = id;
		this.user = user;
		this.comment = comment;
		this.customerReplays = customerReplays;
		this.consultationtime = consultationtime;
		this.replaystate = replaystate;
	}
	
	/**@Title: TODO
	 * @Description: TODO 
	 * @author 西安工业大学蓝桥学员-孙新召
	 * @time 2017年5月10日 下午8:03:47 
	 * @param user
	 * @param comment
	 * @param customerReplays
	 * @param consultationtime
	 * @param replaystate 
	 */
	public UserConsultation(User user, String comment, List<CustomerReplay> customerReplays, Date consultationtime,
			Integer replaystate) {
		super();
		this.user = user;
		this.comment = comment;
		this.customerReplays = customerReplays;
		this.consultationtime = consultationtime;
		this.replaystate = replaystate;
	}
	/**
	 * @Title: TODO
	 * @Description: TODO 
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月11日 下午8:08:42 
	 * @param user
	 * @param comment
	 * @param consultationtime
	 * @param replaystate
	 */
	public UserConsultation(User user, String comment, Date consultationtime, Integer replaystate) {
		super();
		this.user = user;
		this.comment = comment;
		this.consultationtime = consultationtime;
		this.replaystate = replaystate;
	}
	/**
	 * @Title: TODO
	 * @Description: TODO 
	 * @author 西安工业大学蓝桥学员-吴安安
	 * @time 2017年5月7日 下午4:06:06
	 */
	public UserConsultation() {
		super();
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "UserConsultation [id=" + id + ", user=" + user + ", comment=" + comment + ", customerReplays="
				+ customerReplays + ", consultationtime=" + consultationtime + ", replaystate=" + replaystate + "]";
	}
	
	
	
	
}
