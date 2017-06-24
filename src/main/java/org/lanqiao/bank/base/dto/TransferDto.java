package org.lanqiao.bank.base.dto;

public class TransferDto {
	private int cardId;
	private String fromname;
	private String toname;
	private String createTime;
	private Double money;

	public int getCardId() {
		return cardId;
	}

	public void setCardId(int cardId) {
		this.cardId = cardId;
	}

	public String getFromname() {
		return fromname;
	}

	public void setFromname(String fromname) {
		this.fromname = fromname;
	}

	public String getToname() {
		return toname;
	}

	public void setToname(String toname) {
		this.toname = toname;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public TransferDto(int cardId, String fromname, String toname, String createTime, Double money) {
		super();
		this.cardId = cardId;
		this.fromname = fromname;
		this.toname = toname;
		this.createTime = createTime;
		this.money = money;
	}

	public TransferDto() {
		super();
	}

	@Override
	public String toString() {
		return "TransferDto [cardId=" + cardId + ", fromname=" + fromname + ", toname=" + toname + ", createTime="
				+ createTime + ", money=" + money + "]";
	}

}
