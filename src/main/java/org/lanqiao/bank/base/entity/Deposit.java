package org.lanqiao.bank.base.entity;

import java.util.Date;

public class Deposit {
    private Integer id;

    private Date create_time;

    private Date update_time;

    private Double money;

    private Integer isTakeOut;

    private Integer userId;

    private Integer cardId;

    private Integer interestId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Integer getIsTakeOut() {
        return isTakeOut;
    }

    public void setIsTakeOut(Integer isTakeOut) {
        this.isTakeOut = isTakeOut;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getCardId() {
        return cardId;
    }

    public void setCardId(Integer cardId) {
        this.cardId = cardId;
    }

    public Integer getInterestId() {
        return interestId;
    }

    public void setInterestId(Integer interestId) {
        this.interestId = interestId;
    }

	public Deposit() {
		super();
	}

	public Deposit(Date create_time, Date update_time, Double money, Integer isTakeOut, Integer userId, Integer cardId,
			Integer interestId) {
		super();
		this.create_time = create_time;
		this.update_time = update_time;
		this.money = money;
		this.isTakeOut = isTakeOut;
		this.userId = userId;
		this.cardId = cardId;
		this.interestId = interestId;
	}
    
    
}