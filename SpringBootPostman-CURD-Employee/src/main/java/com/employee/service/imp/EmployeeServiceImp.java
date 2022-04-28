package com.employee.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employee.model.Employee;
import com.employee.repo.EmployeeRepo;
import com.employee.service.EmployeeService;
@Service
public class EmployeeServiceImp implements EmployeeService {
	@Autowired
	private EmployeeRepo empRepo;

	@Override
	public Employee saveEmp(Employee entity) {
		return empRepo.save(entity);
	}

	@Override
	public Employee updateEmp(Employee entity) {
		return empRepo.save(entity);
	}

	@Override
	public void deleteEmp(Integer empId) {
		empRepo.deleteById(empId);
		}

	@Override
	public List<Employee> getAllEmp() {
		return empRepo.findAll();
	}

}
