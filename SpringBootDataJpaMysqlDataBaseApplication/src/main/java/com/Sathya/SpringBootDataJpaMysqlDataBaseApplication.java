package com.Sathya;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.Sathya.entity.Book;
import com.Sathya.repo.BookRepo;

@SpringBootApplication
public class SpringBootDataJpaMysqlDataBaseApplication implements CommandLineRunner {
	@Autowired
	private BookRepo obj;

	public static void main(String[] args) {
		SpringApplication.run(SpringBootDataJpaMysqlDataBaseApplication.class, args);
	}
	
	@Override
	public void run(String...args) throws Exception{
		
		Book b1 =new Book("Ganesh","JPA","ROD",true,500);
		
		obj.save(b1);
		
		
		System.out.println("---------------------------");
		obj.findAll().forEach(boj->{
				System.out.println(obj);
			});
	}

}