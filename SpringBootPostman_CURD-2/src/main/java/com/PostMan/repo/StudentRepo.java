package com.PostMan.repo;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import com.PostMan.model.Student;

public interface StudentRepo extends JpaRepository<Student, Serializable> {

}
