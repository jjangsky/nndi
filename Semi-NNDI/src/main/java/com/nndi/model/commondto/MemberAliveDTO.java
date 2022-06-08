package com.nndi.model.commondto;

import java.io.Serializable;
import java.sql.Date;

public class MemberAliveDTO implements Serializable{

	private static final long serialVersionUID = 6431236375029268196L;

	private String id;
	private Integer idQueNum;
	private String phone;
	private String email;
	private String address;
	private String pwd;
	private String name;
	private java.util.Date birth;
	private String idAnswer;
	private String gender;
	private java.sql.Date lastLogin;
	private String userStatus;
	private java.sql.Date outDate;
	private java.sql.Date enrollDate;
	
	public MemberAliveDTO(String id, Integer idQueNum, String phone, String email, String address, String pwd,
			String name, java.util.Date birth, String idAnswer, String gender, Date lastLogin, String userStatus,
			Date outDate, Date enrollDate) {
		this.id = id;
		this.idQueNum = idQueNum;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.pwd = pwd;
		this.name = name;
		this.birth = birth;
		this.idAnswer = idAnswer;
		this.gender = gender;
		this.lastLogin = lastLogin;
		this.userStatus = userStatus;
		this.outDate = outDate;
		this.enrollDate = enrollDate;
	}
	public MemberAliveDTO() {
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Integer getIdQueNum() {
		return idQueNum;
	}
	public void setIdQueNum(Integer idQueNum) {
		this.idQueNum = idQueNum;
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
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public java.util.Date getBirth() {
		return birth;
	}
	public void setBirth(java.util.Date birth) {
		this.birth = birth;
	}
	public String getIdAnswer() {
		return idAnswer;
	}
	public void setIdAnswer(String idAnswer) {
		this.idAnswer = idAnswer;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public java.sql.Date getLastLogin() {
		return lastLogin;
	}
	public void setLastLogin(java.sql.Date lastLogin) {
		this.lastLogin = lastLogin;
	}
	public String getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}
	public java.sql.Date getOutDate() {
		return outDate;
	}
	public void setOutDate(java.sql.Date outDate) {
		this.outDate = outDate;
	}
	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "MemberAliveDTO [id=" + id + ", idQueNum=" + idQueNum + ", phone=" + phone + ", email=" + email
				+ ", address=" + address + ", pwd=" + pwd + ", name=" + name + ", birth=" + birth + ", idAnswer="
				+ idAnswer + ", gender=" + gender + ", lastLogin=" + lastLogin + ", userStatus=" + userStatus
				+ ", outDate=" + outDate + ", enrollDate=" + enrollDate + "]";
	}
	

	
	
	
	

	
}
