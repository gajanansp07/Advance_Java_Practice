package com.employeeOrcl.service;

import java.util.List;

import com.employeeOrcl.model.EmployeeOrcl;

public interface EmployeeOrclService {
	EmployeeOrcl saveEmp(EmployeeOrcl entity);
	EmployeeOrcl updateEmp(EmployeeOrcl entity);
	void deleteEmp(Integer empId);
	List<EmployeeOrcl> getAllEmp();

}
