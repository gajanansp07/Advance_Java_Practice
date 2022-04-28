package com.employeeOrcl.repo;

import java.io.Serializable;

import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.stereotype.Repository;

import com.employeeOrcl.model.EmployeeOrcl;

@Repository
public interface EmployeeOrclRepo extends JpaRepositoryImplementation<EmployeeOrcl, Serializable> {

}
