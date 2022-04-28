package com.employee.repo;

import java.io.Serializable;

import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.stereotype.Repository;

import com.employee.model.Employee;
@Repository
public interface EmployeeRepo extends JpaRepositoryImplementation<Employee, Serializable> {

}
