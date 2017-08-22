package com.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Authorities;
import com.model.Cart;
import com.model.Customer;
import com.model.User;
@Repository
public class Customerdaoimpl implements Customerdao {
	@Autowired
	private SessionFactory sessionfactory;
	public void registercustomer(Customer customer) {
		User user=customer.getUser();
		user.setEnabled(true);
		String username=customer.getUser().getUserName();
		Authorities authorities=new Authorities();
		authorities.setRole("ROLE_USER");
		authorities.setUsername(username);
		Session session=sessionfactory.getCurrentSession();
		session.save(authorities);
		Cart cart=new Cart();
		cart.setCustomer(customer);
		customer.setCart(cart);
		session.save(customer);
	}

	public User validateusername(String username) {
		Session session=sessionfactory.getCurrentSession();
		Query query=session.createQuery("from User where userName=?");
		query.setString(0, username);
		User user =(User)query.uniqueResult();
		return user;
	}

	public Customer validateemail(String email) {
		Session session=sessionfactory.getCurrentSession();
		Query query=session.createQuery("from Customer where Email=?");
		query.setString(0, email);
		Customer customer=(Customer)query.uniqueResult();
		return customer;
	}

	public Customer getcustomerbyusername(String username) {
		Session session=sessionfactory.getCurrentSession();
		Query query=session.createQuery("from Customer where user.userName = ?");
		query.setString(0, username);
		Customer Customer=(Customer)query.uniqueResult();
		return Customer;
	}

}
