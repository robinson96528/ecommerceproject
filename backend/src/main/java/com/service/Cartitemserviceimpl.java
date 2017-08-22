package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.Cartitemdao;
import com.model.Cart;
import com.model.Cartitem;
@Service
@Transactional

public class Cartitemserviceimpl implements Cartitemservicelayer {
	@Autowired
	private Cartitemdao cartitemdao;
	public void addcartitem(Cartitem Cartitem) {
		cartitemdao.addcartitem(Cartitem);
	}

	public void removecartitem(int cartitemid) {
		cartitemdao.removecartitem(cartitemid);
	}

	public void removeallcartitem(int cartid) {
		cartitemdao.removeallcartitem(cartid);
	}

	public Cart getCart(int cartId) {
		return cartitemdao.getCart(cartId);
	}

}
