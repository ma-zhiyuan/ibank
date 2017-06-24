package org.lanqiao.bank.base.entity;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

import com.sun.istack.internal.NotNull;

/**
 * @ClassName: User
 * @Description: 用户对象
 * @author 西安工业大学蓝桥学员-王泽华
 * @time 2017年4月21日 下午10:47:44
 */
public class User {

	private Integer id;// id
	@NotNull
	private String name;
	@NotNull
	private Integer age;
	@NotNull
	private Integer gender;// 性别（0/1）
	@NotNull
	private String address;// 家庭住址地址
	@NotNull
	private String phone;// 手机号码
	@NotNull
	private String birthplace;// 出身地
	
	private ArrayList<Card> cards;//用户银行卡信息
	/**
	 * @Description: 添加属性
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月6日 下午10:37:54
	 */
	private Integer state;//用户状态（是否存在）

	/**
	 * @Description: 日期点击生成无需格式转换
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年4月23日 下午10:37:54
	 */
	// @DateTimeFormat(pattern = "yyyyMMdd")
	@NotNull
	private Date birthday;// 出身年月
	@NotNull
	private String password;// 密码
	private String photo;// 头像
	private String nickname;// 别名
	private String email;

	
	
	private String validataCode;//验证密码
	private Timestamp registerDate;//注册时间  （忘记密码）
	
	
	public ArrayList<Card> getCards() {
		return cards;
	}

	public void setCards(ArrayList<Card> cards) {
		this.cards = cards;
	}

	/**
	 * @Title: getValidataCode,registerDate
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-王卓华
	 * @time 2017年4月26日 下午2:22:11 
	 * @return
	 * String
	 */
	public String getValidataCode() {
		return validataCode;
	}

	public void setValidataCode(String validataCode) {
		this.validataCode = validataCode;
	}

	public Timestamp getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Timestamp registerDate) {
		this.registerDate = registerDate;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirthplace() {
		return birthplace;
	}

	public void setBirthplace(String birthplace) {
		this.birthplace = birthplace;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	
	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public User(String name, Integer age, Integer gender, String address, String phone, String birthplace,
			Date birthday, String password, String email) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.address = address;
		this.phone = phone;
		this.birthplace = birthplace;
		this.birthday = birthday;
		this.password = password;
		this.email = email;
	}

	public User(String name, Integer age, Integer gender, String address, String phone, String birthplace,
			Date birthday, String password, String photo, String nickname, String email) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.address = address;
		this.phone = phone;
		this.birthplace = birthplace;
		this.birthday = birthday;
		this.password = password;
		this.photo = photo;
		this.nickname = nickname;
		this.email = email;
	}

	public User() {
		super();
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", age=" + age + ", gender=" + gender + ", address=" + address
				+ ", phone=" + phone + ", birthplace=" + birthplace + ", birthday=" + birthday + ", password="
				+ password + ", photo=" + photo + ", nickname=" + nickname + "email" + email + "]";
	}

}
