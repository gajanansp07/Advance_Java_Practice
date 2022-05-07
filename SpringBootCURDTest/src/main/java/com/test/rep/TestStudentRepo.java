package com.test.rep;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.test.entity.TestStudent;

@Repository
public interface TestStudentRepo extends JpaRepository<TestStudent, Serializable> {

}
