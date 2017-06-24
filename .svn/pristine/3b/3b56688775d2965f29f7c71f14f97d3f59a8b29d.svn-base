package org.lanqiao.bank.base.entity;

import java.util.Date;

public class CreditSaveMoney {
	//自动生成存取款类
    private Integer id;//存取款流水单id

    private Date taketime;//操作时间

    private Integer cardId;//操作id

    private Double money;//涉及金额

    private Integer credit;//获得积分

    private Integer isSaveMoney;//存取款类型确认
    
    
    

    public CreditSaveMoney() {
		super();
	}

	public CreditSaveMoney(Date taketime, Integer cardId, Double money, Integer isSaveMoney) {
		super();
		this.taketime = taketime;
		this.cardId = cardId;
		this.money = money;
		this.isSaveMoney = isSaveMoney;
		
		if(isSaveMoney==1){
			this.credit=(int)(money/100);
		}else{
			this.credit=0;
		}
		
	}

	public CreditSaveMoney(Integer id, Date taketime, Integer cardId, Double money, Integer credit,
			Integer isSaveMoney) {
		super();
		this.id = id;
		this.taketime = taketime;
		this.cardId = cardId;
		this.money = money;
		this.credit = credit;
		this.isSaveMoney = isSaveMoney;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getTaketime() {
        return taketime;
    }

    public void setTaketime(Date taketime) {
        this.taketime = taketime;
    }

    public Integer getCardId() {
        return cardId;
    }

    public void setCardId(Integer cardId) {
        this.cardId = cardId;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Integer getCredit() {
        return credit;
    }

    public void setCredit(Integer credit) {
        this.credit = credit;
    }

    public Integer getIsSaveMoney() {
        return isSaveMoney;
    }

    public void setIsSaveMoney(Integer isSaveMoney) {
        this.isSaveMoney = isSaveMoney;
    }
}