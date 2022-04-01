package com.springcore;


public class Employee {
	private int empId;
	private String empName;
	private String address;
	public int getEmpId() {
		return this.empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return this.empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getAddress() {
		return this.address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Employee() {
	}
	
	
//	public Employee(int empId, String empName, String address) {
//		super();
//		this.empId = empId;
//		this.empName = empName;
//		this.address = address;
//	}
	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empName=" + empName + ", address=" + address + "]";
	}
	
	

}
