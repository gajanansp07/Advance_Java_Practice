package com.Ganesh;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.Ganesh.entity.Student;
import com.Ganesh.repo.StudentRepo;

@SpringBootApplication
public class SpringBootDataJpaH2DbApplication implements CommandLineRunner {
	@Autowired
	private StudentRepo std;

	public static void main(String[] args) {
		SpringApplication.run(SpringBootDataJpaH2DbApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		// TODO Auto-generated method stub
		Student s1 = new Student("Ganesh",4000.0d);
		
		std.save(s1);
		
	}

}