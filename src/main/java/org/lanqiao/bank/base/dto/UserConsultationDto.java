package org.lanqiao.bank.base.dto;

public class UserConsultationDto {

	private String id;
	private String userName;
	private String commet;//咨询内容
	private String consultationTime;
	private String replayState;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCommet() {
		return commet;
	}
	public void setCommet(String commet) {
		this.commet = commet;
	}
	public String getConsultationTime() {
		return consultationTime;
	}
	public void setConsultationTime(String consultationTime) {
		this.consultationTime = consultationTime;
	}
	public String getReplayState() {
		return replayState;
	}
	public void setReplayState(String replayState) {
		this.replayState = replayState;
	}
	
	
}
