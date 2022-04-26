package com.DataJPAExam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.DataJPAExam.entity.Student;
import com.DataJPAExam.repo.StudentRepo;

@SpringBootApplication
public class SpringBootMvnDaotoDataBaseApplication implements CommandLineRunner {
	
	@Autowired
	private StudentRepo repo;

	public static void main(String[] args) {
		SpringApplication.run(SpringBootMvnDaotoDataBaseApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		
		Student s1 = new Student("Thami","Yevatmal","tmi@gmail.com");
		Student s2 = new Student("pooja","Yevatmal","poja@gmail.com");
		Student s3 = new Student("Sumaya","Hyderabad","sum@gmail.com");
		Student s4 = new Student("Adity","Pune","adi@gmail.com");
		
		repo.save(s1);
		repo.save(s2);
		repo.save(s3);
		repo.save(s4);
		
		
		
	}

}
