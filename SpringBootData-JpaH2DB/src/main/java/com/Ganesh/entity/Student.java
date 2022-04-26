package com.Ganesh.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student")
public class Student implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int stdId;
	private String stdName;
	private double stdFee;

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Student(String stdName, double stdFee) {
		this.stdName = stdName;
		this.stdFee = stdFee;
	}

	public void setStdId(int stdId) {
		this.stdId = stdId;
	}
	public String getStdName() {
		return stdName;
	}
	public void setStdName(String stdName) {
		this.stdName = stdName;
	}
	public double getStdFee() {
		return stdFee;
	}
	public void setStdFee(double stdFee) {
		this.stdFee = stdFee;
	}
	@Override
	public String toString() {
		return "Student [stdId=" + stdId + ", stdName=" + stdName + ", stdFee=" + stdFee + "]";
	}
	

}
