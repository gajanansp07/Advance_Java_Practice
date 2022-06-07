package com.test.service;

import java.util.List;

import com.test.entity.TestStudent;

public interface TestStudentService {
	TestStudent saveStd(TestStudent entity);
	TestStudent updateStd(TestStudent entity);
	void deleteStd(int stdId);
	List<TestStudent> getAll();

}
