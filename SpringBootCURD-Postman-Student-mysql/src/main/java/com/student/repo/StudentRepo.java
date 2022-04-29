package com.student.repo;

import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.stereotype.Repository;

import com.student.entity.Student;
@Repository
public interface StudentRepo extends JpaRepositoryImplementation<Student, Integer> {

}
