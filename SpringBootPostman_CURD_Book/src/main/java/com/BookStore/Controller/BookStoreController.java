package com.BookStore.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.BookStore.model.Book;
import com.BookStore.repo.BookRepo;

@RestController
public class BookStoreController {
	@Autowired
	private BookRepo bokRepo;
	
	@PostMapping("/save")
	public Book saveBook(@RequestBody Book bok) {
		return bokRepo.save(bok);
	}
	
	@PutMapping("/update/{id}")
	public Book updateBook(@RequestBody Book b,@PathVariable Integer id) {
		Optional<Book> optional = bokRepo.findById(id);
		Book b1 = optional.get();
		b1.setId(id);
		b1.setSbin(b.getSbin());
		b1.setTitle(b.getTitle());
		b1.setStatus(true);
		b1.setAuther(b.getAuther());
		b1.setPrice(b.getPrice());
		b1.setPublisheddate(b.getPublisheddate());
		return bokRepo.save(b);
	}
	
	@DeleteMapping("/delete/{id}")
	public void deleteBook(@RequestBody Book b, @PathVariable Integer id) {
		bokRepo.deleteById(id);
	}
	
	@GetMapping("/get/{id}")
	public Book findBookById(@PathVariable Integer id) {
		return bokRepo.findById(id).get();
	}
	

	@GetMapping("/getAll")
	public List<Book>findAll() {
		
		return bokRepo.findAll();
	}

}
