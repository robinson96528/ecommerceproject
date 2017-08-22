package com.dao;

import com.model.Cart;
import com.model.Cartitem;

public interface Cartitemdao {
	void addcartitem(Cartitem cartitem);
	void removecartitem(int cartitemid);
	public void removeallcartitem(int cartid);
	public Cart getCart(int cartId);
}
