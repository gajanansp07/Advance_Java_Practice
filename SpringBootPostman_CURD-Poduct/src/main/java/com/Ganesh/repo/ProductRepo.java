package com.Ganesh.repo;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Ganesh.model.Product;

public interface ProductRepo extends JpaRepository<Product, Serializable> {

}
