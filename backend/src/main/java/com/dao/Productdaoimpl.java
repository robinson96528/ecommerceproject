package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Category;
import com.model.Product;

@Repository
public class Productdaoimpl implements Productdaolayer {
	@Autowired
	private SessionFactory sessionFactory; 
	public void saveproduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		session.save(product);
	}

	public List<Product> getallproducts() {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Product");
		List<Product> product=query.list();
		return product;
	}

	public Product getproductbyid(int id) {
		Session session=sessionFactory.getCurrentSession();
		Product product=(Product)session.get(Product.class, id);
		return product;
	}

	public void deleteproduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(product);
	}

	public void editproduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		session.update(product);
	}

	public List<Category> getallcategories() {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Category");
		List<Category> Categories=query.list();
		return Categories;
	}

}
