package org.lanqiao.bank.base.entity;

import java.util.Date;

public class Creditrepayment {
    private Integer id;

    private Integer cardId;//还利息款号

    private Double repayMoney;//要换金额

    private Integer loanId;//贷款号

    private Date repayTime;//还利息时间

    private Integer isRepay;//本期是否已还

    public Creditrepayment(Integer id, Integer cardId, Double repayMoney, Integer loanId, Date repayTime,
			Integer isRepay) {
		super();
		this.id = id;
		this.cardId = cardId;
		this.repayMoney = repayMoney;
		this.loanId = loanId;
		this.repayTime = repayTime;
		this.isRepay = isRepay;
	}

	public Creditrepayment(Integer cardId, Double repayMoney, Integer loanId, Date repayTime, Integer isRepay) {
		super();
		this.cardId = cardId;
		this.repayMoney = repayMoney;
		this.loanId = loanId;
		this.repayTime = repayTime;
		this.isRepay = isRepay;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCardId() {
        return cardId;
    }

    public void setCardId(Integer cardId) {
        this.cardId = cardId;
    }

    public Double getRepayMoney() {
        return repayMoney;
    }

    public void setRepayMoney(Double repayMoney) {
        this.repayMoney = repayMoney;
    }

    public Integer getLoanId() {
        return loanId;
    }

    public void setLoanId(Integer loanId) {
        this.loanId = loanId;
    }

    public Date getRepayTime() {
        return repayTime;
    }

    public void setRepayTime(Date repayTime) {
        this.repayTime = repayTime;
    }

    public Integer getIsRepay() {
        return isRepay;
    }

    public void setIsRepay(Integer isRepay) {
        this.isRepay = isRepay;
    }

	public Creditrepayment() {
		super();
	}

	@Override
	public String toString() {
		return "Creditrepayment [id=" + id + ", cardId=" + cardId + ", repayMoney=" + repayMoney + ", loanId=" + loanId
				+ ", repayTime=" + repayTime + ", isRepay=" + isRepay + "]";
	}
    
}