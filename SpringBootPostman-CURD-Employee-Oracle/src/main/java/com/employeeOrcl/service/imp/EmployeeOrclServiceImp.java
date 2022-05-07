package com.employeeOrcl.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employeeOrcl.model.EmployeeOrcl;
import com.employeeOrcl.repo.EmployeeOrclRepo;
import com.employeeOrcl.service.EmployeeOrclService;

@Service
public class EmployeeOrclServiceImp implements EmployeeOrclService {
	@Autowired
	private EmployeeOrclRepo empRepo;
	@Override
	public EmployeeOrcl saveEmp(EmployeeOrcl entity) {
		return empRepo.save(entity);
	}

	@Override
	public EmployeeOrcl updateEmp(EmployeeOrcl entity) {
		return empRepo.save(entity);
	}

	@Override
	public void deleteEmp(Integer empId) {
		empRepo.deleteById(empId);
	}

	@Override
	public List<EmployeeOrcl> getAllEmp() {
		return empRepo.findAll();
	}

}
