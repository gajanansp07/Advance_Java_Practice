package com.Sathya.repo;

import java.io.Serializable;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Sathya.entity.Book;

@Repository
public interface BookRepo extends CrudRepository<Book,Serializable> {

}
