package com.service;

import java.util.List;

import com.model.Category;
import com.model.Product;

public interface Productservicelayer {
	void saveproduct(Product product);
	public List<Product> getallproducts();
	Product getproductbyid(int id);
	void deleteproduct(int id);
	void editproduct(Product product);
	List<Category> getallcategories();
}
