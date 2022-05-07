package com.test.entity;

import javax.persistence.Entity;

@Entity
public class TestStudent {
	private Integer stdId;
	private String stdName;
	private String stdCouse;
	public TestStudent() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TestStudent(Integer stdId, String stdName, String stdCouse) {
		super();
		this.stdId = stdId;
		this.stdName = stdName;
		this.stdCouse = stdCouse;
	}
	public Integer getStdId() {
		return stdId;
	}
	public void setStdId(Integer stdId) {
		this.stdId = stdId;
	}
	public String getStdName() {
		return stdName;
	}
	public void setStdName(String stdName) {
		this.stdName = stdName;
	}
	public String getStdCouse() {
		return stdCouse;
	}
	public void setStdCouse(String stdCouse) {
		this.stdCouse = stdCouse;
	}
	
}
