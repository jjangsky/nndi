package com.nndi.model.commondto;

import java.io.Serializable;

public class BookInfoDTO implements Serializable {

	private static final long serialVersionUID = -6760741967291450792L;

	private int number;
	private String KindsCode;
	private String name;
	private String writer;
	private String locationCode;
	private String isbn;
	private String serchYN;
	private String publisher;
	public BookInfoDTO() {
	}
	public BookInfoDTO(int number, String kindsCode, String name, String writer, String locationCode, String isbn,
			String serchYN, String publisher) {
		this.number = number;
		KindsCode = kindsCode;
		this.name = name;
		this.writer = writer;
		this.locationCode = locationCode;
		this.isbn = isbn;
		this.serchYN = serchYN;
		this.publisher = publisher;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public int getNumber() {
		return number;
	}
	public String getKindsCode() {
		return KindsCode;
	}
	public String getName() {
		return name;
	}
	public String getWriter() {
		return writer;
	}
	public String getLocationCode() {
		return locationCode;
	}
	public String getIsbn() {
		return isbn;
	}
	public String getSerchYN() {
		return serchYN;
	}
	public String getPublisher() {
		return publisher;
	}
	@Override
	public String toString() {
		return "BookInfoDTO [number=" + number + ", KindsCode=" + KindsCode + ", name=" + name + ", writer=" + writer
				+ ", locationCode=" + locationCode + ", isbn=" + isbn + ", serchYN=" + serchYN + ", publisher="
				+ publisher + "]";
	}
	
	
	
	
	
}
