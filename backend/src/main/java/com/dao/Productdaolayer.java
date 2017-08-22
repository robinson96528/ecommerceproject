package com.dao;

import java.util.List;

import com.model.Category;
import com.model.Product;

public interface Productdaolayer {
	void saveproduct(Product product);
	public List<Product> getallproducts();
	Product getproductbyid(int id);
	void deleteproduct(Product product);
	void editproduct(Product product);
	List<Category> getallcategories();
}
