package com.dao;

import com.model.Cart;
import com.model.CustomerOrder;

public interface Customerorderdao {
	CustomerOrder createOrder(Cart cart);
}
