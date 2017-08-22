package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Cart;
import com.model.Cartitem;

@Repository
public class Cartitemdaoimpl implements Cartitemdao {
	@Autowired
	private SessionFactory sessionfactory;
	public void addcartitem(Cartitem cartitem) {
		Session session=sessionfactory.getCurrentSession();
		session.saveOrUpdate(cartitem);
	}

	public void removecartitem(int cartitemid) {
		Session session=sessionfactory.getCurrentSession();
		Cartitem cartitem=(Cartitem)session.get(Cartitem.class,cartitemid);
		session.delete(cartitem);

	}

	public void removeallcartitem(int cartid) {
		Session session=sessionfactory.getCurrentSession();
		Cart cart=(Cart)session.get(Cart.class,cartid);
		List<Cartitem> cartitems=cart.getCartItems();
		for(Cartitem cartitem:cartitems)
		{
			session.delete(cartitem);
		}
	}

	public Cart getCart(int cartId) {
		Session session=sessionfactory.getCurrentSession();
		Cart cart=(Cart)session.get(Cart.class, cartId);
		return cart;
	}

}
