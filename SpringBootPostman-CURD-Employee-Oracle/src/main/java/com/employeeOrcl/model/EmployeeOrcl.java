package com.employeeOrcl.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class EmployeeOrcl {
	@Id
	@Column(name="eid")
	  private Integer empId;
	  private String empname;
	  private String empMail;
	  private String empAdress;
	  private Integer empMobileNumber;
	  private String empCity;
	  private String empState;
	  private String empGender;
	  private Float empSalary;
	public EmployeeOrcl() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EmployeeOrcl(Integer empId, String empname, String empMail, String empAdress, Integer empMobileNumber,
			String empCity, String empState, String empGender, Float empSalary) {
		super();
		this.empId = empId;
		this.empname = empname;
		this.empMail = empMail;
		this.empAdress = empAdress;
		this.empMobileNumber = empMobileNumber;
		this.empCity = empCity;
		this.empState = empState;
		this.empGender = empGender;
		this.empSalary = empSalary;
	}
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getEmpMail() {
		return empMail;
	}
	public void setEmpMail(String empMail) {
		this.empMail = empMail;
	}
	public String getEmpAdress() {
		return empAdress;
	}
	public void setEmpAdress(String empAdress) {
		this.empAdress = empAdress;
	}
	public Integer getEmpMobileNumber() {
		return empMobileNumber;
	}
	public void setEmpMobileNumber(Integer empMobileNumber) {
		this.empMobileNumber = empMobileNumber;
	}
	public String getEmpCity() {
		return empCity;
	}
	public void setEmpCity(String empCity) {
		this.empCity = empCity;
	}
	public String getEmpState() {
		return empState;
	}
	public void setEmpState(String empState) {
		this.empState = empState;
	}
	public String getEmpGender() {
		return empGender;
	}
	public void setEmpGender(String empGender) {
		this.empGender = empGender;
	}
	public Float getEmpSalary() {
		return empSalary;
	}
	public void setEmpSalary(Float empSalary) {
		this.empSalary = empSalary;
	}
	@Override
	public String toString() {
		return "EmployeeOrcl [empId=" + empId + ", empname=" + empname + ", empMail=" + empMail + ", empAdress=" + empAdress
				+ ", empMobileNumber=" + empMobileNumber + ", empCity=" + empCity + ", empState=" + empState
				+ ", empGender=" + empGender + ", empSalary=" + empSalary + "]";
	}
	  
	  
}
