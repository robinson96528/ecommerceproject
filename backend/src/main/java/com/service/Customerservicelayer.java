package com.service;

import com.model.Customer;
import com.model.User;

public interface Customerservicelayer {
	void registercustomer(Customer customer);
	User validateusername(String username);
	Customer validateemail(String email);
	public Customer getcustomerbyusername(String username);
}
