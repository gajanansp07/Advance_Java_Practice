package com.student.service;

import java.util.List;

import com.student.entity.Student;

public interface StudentService {
	public Student saveStudent(Student std);
	public Student updateStudent(Student std);
	public void deleteStudent(Integer stdId);
	public Student getStudent(Integer stdId);
	public List<Student> getAllStudent();

}
