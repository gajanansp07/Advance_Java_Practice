package com.employeeOrcl.controler;

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

import com.employeeOrcl.model.EmployeeOrcl;
import com.employeeOrcl.service.EmployeeOrclService;

@RestController
public class EmployeeOrclController {

@Autowired
private EmployeeOrclService empService;

@PostMapping("/save")
public ResponseEntity<EmployeeOrcl> saveEmployee(@RequestBody EmployeeOrcl emp){
	EmployeeOrcl e = empService.saveEmp(emp);
	return ResponseEntity.ok(e);
}

@PutMapping("/update")
public ResponseEntity<EmployeeOrcl> updateEmployee(@RequestBody EmployeeOrcl emp){
	EmployeeOrcl e = empService.updateEmp(emp);
	return ResponseEntity.ok(e);
}
@DeleteMapping("/delete/{empId}")
public ResponseEntity<?> deleteEmployee(@PathVariable("empId") Integer empId){
	empService.deleteEmp(empId);
	return ResponseEntity.ok(empId + " id Employee is deleted");
}
@GetMapping("/ShowAll")
public ResponseEntity<List<EmployeeOrcl>> showAllEmployee(){
	List <EmployeeOrcl> allEmp = empService.getAllEmp();
	return ResponseEntity.ok(allEmp);
}
}
