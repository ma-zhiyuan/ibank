/**@ClassName: CardDto.java 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月30日 下午2:40:29  
 */
package org.lanqiao.bank.base.dto;

/**
 * @ClassName: CardDto
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月30日 下午2:40:29
 */
public class CardDto {
	private Integer id;
	private String number;
	private Double balance;
	private Double money;
	private String date;
	private String message;
	private String userName;
	private String bankName;
	private String fromname;
	private String toname;

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

	public Integer getId() {
		return id;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Double getMoney() {
		return money;
	}

	public String getDate() {
		return date;
	}

	public String getMessage() {
		return message;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the number
	 */
	public String getNumber() {
		return number;
	}

	/**
	 * @param number
	 *            the number to set
	 */
	public void setNumber(String number) {
		this.number = number;
	}

	/**
	 * @return the balance
	 */
	public Double getBalance() {
		return balance;
	}

	/**
	 * @param balance
	 *            the balance to set
	 */
	public void setBalance(Double balance) {
		this.balance = balance;
	}

	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName
	 *            the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return the bankName
	 */
	public String getBankName() {
		return bankName;
	}

	/**
	 * @param bankName
	 *            the bankName to set
	 */
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public CardDto(Integer id, String number, Double balance, Double money, String date, String message,
			String userName, String bankName, String fromname, String toname) {
		super();
		this.id = id;
		this.number = number;
		this.balance = balance;
		this.money = money;
		this.date = date;
		this.message = message;
		this.userName = userName;
		this.bankName = bankName;
		this.fromname = fromname;
		this.toname = toname;
	}

	public CardDto() {
		super();
	}
        
}
