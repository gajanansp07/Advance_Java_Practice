package com.BookStore.repo;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import com.BookStore.model.Book;

public interface BookRepo extends JpaRepository<Book, Serializable> {

}
