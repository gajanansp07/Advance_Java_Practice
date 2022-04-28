package com.employee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.employee.model.Employee;
import com.employee.service.EmployeeService;

@RestController
public class EmployeeController {
	@Autowired
	private EmployeeService empService;
	
	@PostMapping("/save")
	public ResponseEntity<Employee> saveEmployee(@RequestBody Employee emp){
		Employee e = empService.saveEmp(emp);
		return ResponseEntity.ok(e);
	}
	@PutMapping("/update")
	public ResponseEntity<Employee> updateEmployee(@RequestBody Employee emp){
		Employee e = empService.updateEmp(emp);
		return ResponseEntity.ok(e);
	}
	@DeleteMapping("/delete/{empId}")
	public ResponseEntity<?> deleteEmployee(@PathVariable("empId") Integer empId){
		empService.deleteEmp(empId);
		return ResponseEntity.ok(empId + " id Employee is deleted");
	}
	@GetMapping("/ShowAll")
	public ResponseEntity<List<Employee>> showAllEmployee(){
		List <Employee> allEmp = empService.getAllEmp();
		return ResponseEntity.ok(allEmp);
	}
	

}
