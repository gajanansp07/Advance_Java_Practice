package com.employee.service;

import java.util.List;

import com.employee.model.Employee;

public interface EmployeeService {
	Employee saveEmp(Employee entity);
	Employee updateEmp(Employee entity);
	void deleteEmp(Integer empId);
	List<Employee> getAllEmp();
}
