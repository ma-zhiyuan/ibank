package org.lanqiao.bank.base.entity;

import java.util.Date;

public class Transfer {
    private Integer id;

    private Integer userId;

    private Integer fromCardId;

    private Integer toCardId;

    private Double money;

    private String message;

    private Date createTime;
    
    private User user;
    
    private Card fromCard;
    
    private Card toCard;
    
    

    public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Card getFromCard() {
		return fromCard;
	}

	public void setFromCard(Card fromCard) {
		this.fromCard = fromCard;
	}

	public Card getToCard() {
		return toCard;
	}

	public void setToCard(Card toCard) {
		this.toCard = toCard;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getFromCardId() {
        return fromCardId;
    }

    public void setFromCardId(Integer fromCardId) {
        this.fromCardId = fromCardId;
    }

    public Integer getToCardId() {
        return toCardId;
    }

    public void setToCardId(Integer toCardId) {
        this.toCardId = toCardId;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

	@Override
	public String toString() {
		return "Transfer [id=" + id + ", userId=" + userId + ", fromCardId=" + fromCardId + ", toCardId=" + toCardId
				+ ", money=" + money + ", message=" + message + ", createTime=" + createTime + "]";
	}
    
    
}