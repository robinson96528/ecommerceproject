package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.Customerorderdao;
import com.model.Cart;
import com.model.CustomerOrder;
@Service
@Transactional

public class Customerorderserviceimpl implements Customerorderservicelayer {
	@Autowired
	private Customerorderdao customerOrderDao;	
		public CustomerOrder createOrder(Cart cart) {
		return customerOrderDao.createOrder(cart);
	}

}
