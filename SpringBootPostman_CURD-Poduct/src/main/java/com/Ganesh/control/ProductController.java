package com.Ganesh.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.Ganesh.model.Product;
import com.Ganesh.repo.ProductRepo;

@RestController
public class ProductController {
	
	@Autowired
	private ProductRepo pRep;
	
	@PostMapping("/save")
	public Product saveProduct(@RequestBody Product product) {
		return pRep.save(product);
	}

}
