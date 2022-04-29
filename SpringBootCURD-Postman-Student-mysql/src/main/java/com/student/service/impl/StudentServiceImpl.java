/**
 * 
 */
package com.student.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.entity.Student;
import com.student.repo.StudentRepo;
import com.student.service.StudentService;

/**
 * @author Ganesh
 *
 */
@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentRepo stdRepo;
	@Override
	public Student saveStudent(Student std) {
		Student std1 = stdRepo.save(std);
		return std1;
	}

	@Override
	public Student updateStudent(Student std) {
		Student std1 = stdRepo.save(std);
		return std1;
	}

	@Override
	public void deleteStudent(Integer stdId) {
		stdRepo.deleteById(stdId);
		
	}

	@Override
	public Student getStudent(Integer stdId) {
		Optional<Student> std = stdRepo.findById(stdId);
		Student stdRes = std.get();
		return stdRes;
	}

	@Override
	public List<Student> getAllStudent() {
		List<Student> stdList = stdRepo.findAll();
		return stdList;
	}

}
