package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.Productdaolayer;
import com.model.Category;
import com.model.Product;
@Service
@Transactional
public class Productserviceimpl implements Productservicelayer {
	@Autowired
	private Productdaolayer productDaolayer;
	public void saveproduct(Product product) {
		productDaolayer.saveproduct(product);
	}

	public List<Product> getallproducts() {
		return productDaolayer.getallproducts();
	}

	public Product getproductbyid(int id) {
		return productDaolayer.getproductbyid(id);
	}

	public void deleteproduct(int id) {
		Product product=productDaolayer.getproductbyid(id);
		productDaolayer.deleteproduct(product);
	}

	public void editproduct(Product product) {
		productDaolayer.editproduct(product);
	}

	public List<Category> getallcategories() {
		return productDaolayer.getallcategories();
	}

}
