package com.test.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.test.entity.TestStudent;

public interface TestStudentService {
	TestStudent saveStd(TestStudent entity);
	TestStudent updateStd(TestStudent entity);
	void deleteStd(int stdId);
	List<TestStudent> getAll();

}
