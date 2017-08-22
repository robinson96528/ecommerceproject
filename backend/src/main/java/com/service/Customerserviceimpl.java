package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.Customerdao;
import com.model.Customer;
import com.model.User;
@Service
@Transactional
public class Customerserviceimpl implements Customerservicelayer {
	@Autowired
	private Customerdao customerdao;
	public void registercustomer(Customer customer) {
		customerdao.registercustomer(customer);
	}

	public User validateusername(String username) {
		return customerdao.validateusername(username);
	}

	public Customer validateemail(String email) {
		return customerdao.validateemail(email);
	}

	public Customer getcustomerbyusername(String username) {
		return customerdao.getcustomerbyusername(username);
	}

}
