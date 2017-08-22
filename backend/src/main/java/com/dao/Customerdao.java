package com.dao;

import com.model.Customer;
import com.model.User;

public interface Customerdao {
	void registercustomer(Customer customer);
	User validateusername(String username);
	Customer validateemail(String email);
	public Customer getcustomerbyusername(String username);
}
