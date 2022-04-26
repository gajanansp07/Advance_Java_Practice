package com.Sathya.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="books")
public class Book implements Serializable {

	@Id
	@Column(name="bid")
	private int bookId;
	@Column(name="isbn", unique=true,columnDefinition="varchar(20)",nullable=false)
	private String isbn;
	@Column(name="authName", columnDefinition="varchar(20)")
	private String autherName;
	@Column(name="bName", columnDefinition="varchar(20)")
	private String bookTitle;
	@Column(name="status", nullable=false)
	private boolean status;
	@Column(name="bprice", columnDefinition="float check(bprice>20 and bprice<2000)")
	private int price;

//PDC+PPC+PSM+PGM+toString()
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}

public Book(String isbn, String autherName, String bookTitle, boolean status, int price) {
	super();
	this.isbn = isbn;
	this.autherName = autherName;
	this.bookTitle = bookTitle;
	this.status = status;
	this.price = price;
}

public int getBookId() {
	return bookId;
}

public void setBookId(int bookId) {
	this.bookId = bookId;
}

public String getIsbn() {
	return isbn;
}

public void setIsbn(String isbn) {
	this.isbn = isbn;
}

public String getAutherName() {
	return autherName;
}

public void setAutherName(String autherName) {
	this.autherName = autherName;
}

public String getBookTitle() {
	return bookTitle;
}

public void setBookTitle(String bookTitle) {
	this.bookTitle = bookTitle;
}

public boolean isStatus() {
	return status;
}

public void setStatus(boolean status) {
	this.status = status;
}

public int getPrice() {
	return price;
}

public void setPrice(int price) {
	this.price = price;
}

@Override
public String toString() {
	return "Book [bookId=" + bookId + ", isbn=" + isbn + ", autherName=" + autherName + ", bookTitle=" + bookTitle
			+ ", status=" + status + ", price=" + price + "]";
}

}
