package com.student.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student2")
public class Student {
	@Id
	private Integer stdId;
	@Column(name="sname")
	private String stdName;
	@Column(name="scourse")
	private String stdCourse;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(Integer stdId, String stdName, String stdCourse) {
		super();
		this.stdId = stdId;
		this.stdName = stdName;
		this.stdCourse = stdCourse;
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
	public String getStdCourse() {
		return stdCourse;
	}
	public void setStdCourse(String stdCourse) {
		this.stdCourse = stdCourse;
	}
	@Override
	public String toString() {
		return "Student [stdId=" + stdId + ", stdName=" + stdName + ", stdCourse=" + stdCourse + "]";
	}
	

}
