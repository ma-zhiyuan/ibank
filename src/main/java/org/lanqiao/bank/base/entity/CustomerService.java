/**
 * 
 */
package org.lanqiao.bank.base.entity;

/**
 * @ClassName: CustomService
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-刘晓莉
 * @time 2017年4月24日 下午7:54:02
 */
public class CustomerService {
	// 客服编号
	private Integer no;
	// 客服姓名
	private String name;
	// 客服年龄
	private Integer age;
	// 客服性别
	private Integer gender;// （0/1）
	// 客服电话
	private String phone;
	// 客服邮箱
	private String email;
	// 客服密码
	private String password;
	// 客服照片
	private String photo;
	// 客服状态
	private int state; // 1为激活状态，0为未激活状态
	// 激活码
	private String code;

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public CustomerService() {
		super();
	}

	/**
	 * @return the state
	 */
	public int getState() {
		return state;
	}

	/**
	 * @param state
	 *            the state to set
	 */
	public void setState(int state) {
		this.state = state;
	}

	/**
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code
	 *            the code to set
	 */
	public void setCode(String code) {
		this.code = code;
	}

	public CustomerService(Integer no, String name, Integer age, Integer gender, String phone, String email,
			String password, String photo) {
		super();
		this.no = no;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.password = password;
		this.photo = photo;
	}

	public CustomerService(String name, Integer age, Integer gender, String phone, String email, String password,
			String photo) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.password = password;
		this.photo = photo;
	}

	public CustomerService(Integer no, String name, Integer age, Integer gender, String phone, String email,
			String photo) {
		super();
		this.no = no;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.photo = photo;
	}

	@Override
	public String toString() {
		return "CustomerService [no=" + no + ", name=" + name + ", age=" + age + ", gender=" + gender + ", phone="
				+ phone + ", email=" + email + ", password=" + password + ", photo=" + photo + ", state=" + state
				+ ", code=" + code + "]";
	}

	

}
