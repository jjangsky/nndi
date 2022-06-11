package com.nndi.model.joindto.client;

import java.util.Date;

public class ClassAndClasspaymentDTO {

	private int clsNum;
	private String clsName;
	private java.util.Date clsStartDay;
	
	public ClassAndClasspaymentDTO() {
	}
	
	public ClassAndClasspaymentDTO(int clsNum, String clsName, Date clsStartDay) {
		this.clsNum = clsNum;
		this.clsName = clsName;
		this.clsStartDay = clsStartDay;
	}
	
	public int getClsNum() {
		return clsNum;
	}
	public void setClsNum(int clsNum) {
		this.clsNum = clsNum;
	}
	public String getClsName() {
		return clsName;
	}
	public void setClsName(String clsName) {
		this.clsName = clsName;
	}
	public java.util.Date getClsStartDay() {
		return clsStartDay;
	}
	public void setClsStartDay(java.util.Date clsStartDay) {
		this.clsStartDay = clsStartDay;
	}
	@Override
	public String toString() {
		return "ClassAndClasspaymentDTO [clsNum=" + clsNum + ", clsName=" + clsName + ", clsStartDay=" + clsStartDay
				+ "]";
	}
	
	
	
}
