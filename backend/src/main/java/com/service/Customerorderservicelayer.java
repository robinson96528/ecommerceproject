package com.service;

import com.model.Cart;
import com.model.CustomerOrder;

public interface Customerorderservicelayer {
	CustomerOrder createOrder(Cart cart);
}
