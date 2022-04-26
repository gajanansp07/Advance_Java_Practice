package com.Ganesh.repo;

import java.io.Serializable;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Ganesh.entity.Student;

@Repository
public interface StudentRepo extends CrudRepository<Student,Serializable> {

}
