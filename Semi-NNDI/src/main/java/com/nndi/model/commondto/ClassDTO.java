package com.nndi.model.commondto;

import java.io.Serializable;
import java.sql.Date;

public class ClassDTO implements Serializable {

	private static final long serialVersionUID = 5431130540889267348L;

	private String clsNum;
	private String tcrNo;
	private String cenName;
	private String clsName;
	private int clsApplyCnt;
	private int clsMaxCnt;
	private java.sql.Date clsStartDay;
	private java.sql.Date clsEndDay;
	private String clsExplain;
	private int clsTime;
	private int clsCost;
	private String clsDay;
	private String clsStartYn;
	private String clsCategoryName;
	private String clsRecoAge;
	private String clsRunTime;
	
	public ClassDTO() {
	}

	public ClassDTO(String clsNum, String tcrNo, String cenName, String clsName, int clsApplyCnt, int clsMaxCnt,
			Date clsStartDay, Date clsEndDay, String clsExplain, int clsTime, int clsCost, String clsDay,
			String clsStartYn, String clsCategoryName, String clsRecoAge, String clsRunTime) {
		super();
		this.clsNum = clsNum;
		this.tcrNo = tcrNo;
		this.cenName = cenName;
		this.clsName = clsName;
		this.clsApplyCnt = clsApplyCnt;
		this.clsMaxCnt = clsMaxCnt;
		this.clsStartDay = clsStartDay;
		this.clsEndDay = clsEndDay;
		this.clsExplain = clsExplain;
		this.clsTime = clsTime;
		this.clsCost = clsCost;
		this.clsDay = clsDay;
		this.clsStartYn = clsStartYn;
		this.clsCategoryName = clsCategoryName;
		this.clsRecoAge = clsRecoAge;
		this.clsRunTime = clsRunTime;
	}

	public String getClsNum() {
		return clsNum;
	}

	public void setClsNum(String clsNum) {
		this.clsNum = clsNum;
	}

	public String getTcrNo() {
		return tcrNo;
	}

	public void setTcrNo(String tcrNo) {
		this.tcrNo = tcrNo;
	}

	public String getCenName() {
		return cenName;
	}

	public void setCenName(String cenName) {
		this.cenName = cenName;
	}

	public String getClsName() {
		return clsName;
	}

	public void setClsName(String clsName) {
		this.clsName = clsName;
	}

	public int getClsApplyCnt() {
		return clsApplyCnt;
	}

	public void setClsApplyCnt(int clsApplyCnt) {
		this.clsApplyCnt = clsApplyCnt;
	}

	public int getClsMaxCnt() {
		return clsMaxCnt;
	}

	public void setClsMaxCnt(int clsMaxCnt) {
		this.clsMaxCnt = clsMaxCnt;
	}

	public java.sql.Date getClsStartDay() {
		return clsStartDay;
	}

	public void setClsStartDay(java.sql.Date clsStartDay) {
		this.clsStartDay = clsStartDay;
	}

	public java.sql.Date getClsEndDay() {
		return clsEndDay;
	}

	public void setClsEndDay(java.sql.Date clsEndDay) {
		this.clsEndDay = clsEndDay;
	}

	public String getClsExplain() {
		return clsExplain;
	}

	public void setClsExplain(String clsExplain) {
		this.clsExplain = clsExplain;
	}

	public int getClsTime() {
		return clsTime;
	}

	public void setClsTime(int clsTime) {
		this.clsTime = clsTime;
	}

	public int getClsCost() {
		return clsCost;
	}

	public void setClsCost(int clsCost) {
		this.clsCost = clsCost;
	}

	public String getClsDay() {
		return clsDay;
	}

	public void setClsDay(String clsDay) {
		this.clsDay = clsDay;
	}

	public String getClsStartYn() {
		return clsStartYn;
	}

	public void setClsStartYn(String clsStartYn) {
		this.clsStartYn = clsStartYn;
	}

	public String getClsCategoryName() {
		return clsCategoryName;
	}

	public void setClsCategoryName(String clsCategoryName) {
		this.clsCategoryName = clsCategoryName;
	}

	public String getClsRecoAge() {
		return clsRecoAge;
	}

	public void setClsRecoAge(String clsRecoAge) {
		this.clsRecoAge = clsRecoAge;
	}

	public String getClsRunTime() {
		return clsRunTime;
	}

	public void setClsRunTime(String clsRunTime) {
		this.clsRunTime = clsRunTime;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ClassDTO [clsNum=" + clsNum + ", tcrNo=" + tcrNo + ", cenName=" + cenName + ", clsName=" + clsName
				+ ", clsApplyCnt=" + clsApplyCnt + ", clsMaxCnt=" + clsMaxCnt + ", clsStartDay=" + clsStartDay
				+ ", clsEndDay=" + clsEndDay + ", clsExplain=" + clsExplain + ", clsTime=" + clsTime + ", clsCost="
				+ clsCost + ", clsDay=" + clsDay + ", clsStartYn=" + clsStartYn + ", clsCategoryName=" + clsCategoryName
				+ ", clsRecoAge=" + clsRecoAge + ", clsRunTime=" + clsRunTime + "]";
	}

	
	
	
	
}
