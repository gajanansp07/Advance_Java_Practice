package com.test.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.entity.TestStudent;
import com.test.rep.TestStudentRepo;
import com.test.service.TestStudentService;

@Service
public class TestStudentServiceImp implements TestStudentService {
	
	@Autowired
	private TestStudentRepo stdRepo;

	@Override
	public TestStudent saveStd(TestStudent entity) {
		// TODO Auto-generated method stub
		
		return stdRepo.save(entity);
	}

	@Override
	public TestStudent updateStd(TestStudent entity) {
		// TODO Auto-generated method stub
		return stdRepo.save(entity);
	}

	@Override
	public void deleteStd(int stdId) {
		// TODO Auto-generated method stub
		stdRepo.deleteById(stdId);
	}

	@Override
	public List<TestStudent> getAll() {
		// TODO Auto-generated method stub
		return (List<TestStudent>) stdRepo.findAll();
	}

}
