package org.lanqiao.bank.base.entity;

import java.util.Date;

public class LoanInfo {
    private Integer id;
    //贷款时时间
    public LoanInfo() {
		super();
	}
    //贷款年限
	private Date createTime;

    private String loanTime;
    //贷款材料
    private String proppingMaterial;
    //贷款金额
    private Integer loanMoney;

    private Integer userId;
    
    private Card card;
    
    
    public Card getCard() {
		return card;
	}

	public void setCard(Card card) {
		this.card = card;
	}

	public Interest getInterest() {
		return interest;
	}

	public void setInterest(Interest interest) {
		this.interest = interest;
	}


	private Interest interest;

    private Integer cardId;
    //还款方式
    private Integer repaymentMode;

    private Integer rateId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getLoanTime() {
        return loanTime;
    }

    public void setLoanTime(String loanTime) {
        this.loanTime = loanTime == null ? null : loanTime.trim();
    }

    public String getProppingMaterial() {
        return proppingMaterial;
    }

    public void setProppingMaterial(String proppingMaterial) {
        this.proppingMaterial = proppingMaterial == null ? null : proppingMaterial.trim();
    }

    public Integer getLoanMoney() {
        return loanMoney;
    }

    public void setLoanMoney(Integer loanMoney) {
        this.loanMoney = loanMoney;
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

    public Integer getRepaymentMode() {
        return repaymentMode;
    }

    public void setRepaymentMode(Integer repaymentMode) {
        this.repaymentMode = repaymentMode;
    }

    public Integer getRateId() {
        return rateId;
    }

    public void setRateId(Integer rateId) {
        this.rateId = rateId;
    }

	@Override
	public String toString() {
		return "LoanInfo [id=" + id + ", createTime=" + createTime + ", loanTime=" + loanTime + ", proppingMaterial="
				+ proppingMaterial + ", loanMoney=" + loanMoney + ", userId=" + userId + ", card=" + card
				+ ", interest=" + interest + ", cardId=" + cardId + ", repaymentMode=" + repaymentMode + ", rateId="
				+ rateId + "]";
	}
    
    
    
}