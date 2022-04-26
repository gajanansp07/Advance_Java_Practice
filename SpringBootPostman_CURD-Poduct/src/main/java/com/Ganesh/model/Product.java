package com.Ganesh.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Product")
public class Product {
	@Id
	@Column(name="pId")
	private int proId;
	private String proName;
	private double proPrice;
	private String proCreatedDate;
	private String proModifiedDate;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(String proName, double proPrice, String proCreatedDate, String proModifiedDate) {
		super();
		this.proName = proName;
		this.proPrice = proPrice;
		this.proCreatedDate = proCreatedDate;
		this.proModifiedDate = proModifiedDate;
	}
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public double getProPrice() {
		return proPrice;
	}
	public void setProPrice(double proPrice) {
		this.proPrice = proPrice;
	}
	public String getProCreatedDate() {
		return proCreatedDate;
	}
	public void setProCreatedDate(String proCreatedDate) {
		this.proCreatedDate = proCreatedDate;
	}
	public String getProModifiedDate() {
		return proModifiedDate;
	}
	public void setProModifiedDate(String proModifiedDate) {
		this.proModifiedDate = proModifiedDate;
	}
	@Override
	public String toString() {
		return "Product [proId=" + proId + ", proName=" + proName + ", proPrice=" + proPrice + ", proCreatedDate="
				+ proCreatedDate + ", proModifiedDate=" + proModifiedDate + "]";
	}
	
	
}
