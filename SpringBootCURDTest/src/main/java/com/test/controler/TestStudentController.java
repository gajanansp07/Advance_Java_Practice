package com.test.controler;

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

import com.test.entity.TestStudent;
import com.test.service.TestStudentService;

@RestController
public class TestStudentController {
	
	@Autowired
	private TestStudentService stdSer;

	@PostMapping("/save")
	public ResponseEntity<TestStudent> saveStd(@RequestBody TestStudent obj){
		TestStudent s = stdSer.saveStd(obj);
		return ResponseEntity.ok(s);
	}
	
	@PutMapping("/update")
	public ResponseEntity<TestStudent> updateStd(@RequestBody TestStudent obj){
		TestStudent s = stdSer.updateStd(obj);
		return ResponseEntity.ok(s);
	}
	
	@DeleteMapping("/delete/{stdId}")
	public ResponseEntity<?> deleteStd(@PathVariable("stdId") Integer stdId){
		stdSer.deleteStd(stdId);
		return ResponseEntity.ok(stdId+" Recored Deleted Successful");
	}
	
	@GetMapping("/showall")
	public ResponseEntity<List<TestStudent>> showAllEmployee(){
		List <TestStudent> allStd = stdSer.getAll();
		return ResponseEntity.ok(allStd);
	}
}
