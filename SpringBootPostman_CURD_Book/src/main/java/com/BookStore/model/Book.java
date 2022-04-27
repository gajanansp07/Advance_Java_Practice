package com.BookStore.model;

import java.io.Serializable;

public class Book implements Serializable{
	private int id;
	private int sbin;
	private String title;
	private String auther;
	private boolean status;
	private double price;
	private String Publisheddate;
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Book(int sbin, String title, String auther, boolean status, double price, String publisheddate) {
		super();
		this.sbin = sbin;
		this.title = title;
		this.auther = auther;
		this.status = status;
		this.price = price;
		Publisheddate = publisheddate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSbin() {
		return sbin;
	}
	public void setSbin(int sbin) {
		this.sbin = sbin;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuther() {
		return auther;
	}
	public void setAuther(String auther) {
		this.auther = auther;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getPublisheddate() {
		return Publisheddate;
	}
	public void setPublisheddate(String publisheddate) {
		Publisheddate = publisheddate;
	}
	@Override
	public String toString() {
		return "Book [id=" + id + ", sbin=" + sbin + ", title=" + title + ", auther=" + auther + ", status=" + status
				+ ", price=" + price + ", Publisheddate=" + Publisheddate + "]";
	}
	

}
