package com.nndi.model.commondto;

import java.io.Serializable;
import java.sql.Date;

public class MemberDeadDTO implements Serializable {

	private static final long serialVersionUID = -8966530417019152718L;

	private String no;
	private String phone;
	private String email;
	private String address;
	private String id;
	private String pwd;
	private java.util.Date birth;
	private String name;
	private String gender;
	
	public MemberDeadDTO() {
	}
	
	public MemberDeadDTO(String no, String phone, String email, String address, String id, String pwd, Date birth,
			String name, String gender) {
		this.no = no;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.id = id;
		this.pwd = pwd;
		this.birth = birth;
		this.name = name;
		this.gender = gender;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public java.util.Date getBirth() {
		return birth;
	}

	public void setBirth(java.util.Date birth) {
		this.birth = birth;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "MemberDeadDTO [no=" + no + ", phone=" + phone + ", email=" + email + ", address=" + address + ", id="
				+ id + ", pwd=" + pwd + ", birth=" + birth + ", name=" + name + ", gender=" + gender + "]";
	}
	
	
	
	
	
	
}
