package com.PostMan.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.PostMan.model.Student;
import com.PostMan.repo.StudentRepo;

@RestController
public class StudentController {

	@Autowired
	private StudentRepo stdRepo;
	
	@PostMapping("/save")
	public Student saveStudent(@RequestBody Student student) {
		return stdRepo.save(student);
	}
	
	@PutMapping("/update/{stdId}")
	public Student updateStudent(@RequestBody Student student,@PathVariable Integer stdId) {
		Optional<Student> optional=stdRepo.findById(stdId);
		Student student1=optional.get();
		student1.setStdId(stdId);
		student1.setStdName(student.getStdName());
		student1.setCourse(student.getCourse());
		return stdRepo.save(student1);  // here also use save 
	}
	
	@DeleteMapping("/delete/{stdId}")
	public void deleteStudent(@PathVariable Integer stdId) {
		stdRepo.deleteById(stdId);
	}

	@GetMapping("/get/{stdId}")
	public Student findById(@PathVariable Integer stdId) {
		
		return stdRepo.findById(stdId).get();
	}
	
	@GetMapping("/getAll")
	public List<Student> findAll() {
		
		return stdRepo.findAll();
	}
	
	
}