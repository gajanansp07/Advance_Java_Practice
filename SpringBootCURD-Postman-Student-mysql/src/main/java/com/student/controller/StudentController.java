package com.student.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.student.entity.Student;
import com.student.service.StudentService;

@RestController
public class StudentController {
	@Autowired
	private StudentService stdServ;
	
	@PostMapping("/saveStd")
	public String saveStudent(@RequestBody Student stdMdl) {
		Student std1 = stdServ.saveStudent(stdMdl);
		String msg;
		if(std1!=null) {
			msg = "Student Added Scusessful in DataBase ...";
		}else {
			msg = "Student Not Added Scusessful in DataBase";
		}
		return msg;
	}
	
	@PutMapping("/updateStd/{stdId}")
	public Student updateStudent(@RequestBody Student stdModl, @PathVariable Integer stdId) {
//		Student stdRes = stdServ.getStudent(stdId);
		Student std1 = new Student();
		std1.setStdId(stdId);
		std1.setStdName(stdModl.getStdName());
		std1.setStdCourse(stdModl.getStdCourse());
		Student std2 = stdServ.updateStudent(std1);
		return std2;
	}
	@GetMapping("/get/{stdId}")
	public Student findById(@RequestBody Integer stdId) {
		Student stdent = stdServ.getStudent(stdId);
		Student stdModel = new Student();
		
		if(stdent != null) {
			BeanUtils.copyProperties(stdent, stdModel);
		}
		return stdModel;
	}
	@GetMapping("/getAll")
	public List<Student> findAll() {
		List<Student> studentList = stdServ.getAllStudent();
		List<Student> stdentModelList=new ArrayList<>();
		Student studentModel = null;
		for(Student entity:studentList) {
			Student model=new Student();
			BeanUtils.copyProperties(entity, model);
			stdentModelList.add(model);
		}
		return stdentModelList;
	}

	@DeleteMapping("/delete/{stdId}")
	public void deleteStudent(@PathVariable Integer stdId) {
		stdServ.deleteStudent(stdId);
	}	

}
	