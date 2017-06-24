package org.lanqiao.bank.base.entity;

import java.util.Date;

import javax.validation.constraints.NotNull;

/**
 * @ClassName: Announcement
 * @Description: 通知信息
 * @author 西安工业大学蓝桥学员-魏航
 * @time 2017年5月8日 下午8:54:24
 */
public class Announcement {
	@NotNull
	private Integer id;
	@NotNull
	private String title;// 通知消息标题
	@NotNull
	private String content;// 通知消息内容

	private String picture;// 通知消息图片
	@NotNull
	private Date updateTime;// 通知消息更新时间
	@NotNull
	private Date createTime;// 通知消息创建时间
	@NotNull
	private String attribute;// 通知消息类型

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title == null ? null : title.trim();
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content == null ? null : content.trim();
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture == null ? null : picture.trim();
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getAttribute() {
		return attribute;
	}

	public void setAttribute(String attribute) {
		this.attribute = attribute;
	}

	public Announcement(Integer id, String title, String content, String picture, Date updateTime, Date createTime,
			String attribute) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.picture = picture;
		this.updateTime = updateTime;
		this.createTime = createTime;
		this.attribute = attribute;
	}

	public Announcement(String title, String content, String picture, Date updateTime, Date createTime,
			String attribute) {
		super();
		this.title = title;
		this.content = content;
		this.picture = picture;
		this.updateTime = updateTime;
		this.createTime = createTime;
		this.attribute = attribute;
	}

	public Announcement() {
		super();
	}

	@Override
	public String toString() {
		return "Announcement [id=" + id + ", title=" + title + ", content=" + content + ", picture=" + picture
				+ ", updateTime=" + updateTime + ", createTime=" + createTime + ", attribute=" + attribute + "]";
	}

}