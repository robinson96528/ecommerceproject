package com.service;

import com.model.Cart;
import com.model.Cartitem;

public interface Cartitemservicelayer {
	void addcartitem(Cartitem Cartitem);
	void removecartitem(int cartitemid);
	void removeallcartitem(int cartid);
	Cart getCart(int cartId);
}
