package com.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Cart;
import com.model.Customer;
import com.model.CustomerOrder;
import com.model.Shippingaddress;
import com.service.Cartitemservicelayer;
import com.service.Customerorderservicelayer;

@Controller
public class Customerordercontroller {
	@Autowired
	private Cartitemservicelayer cartitemservicelayer;
	@Autowired
	private Customerorderservicelayer customerorderservicelayer;
	@RequestMapping("/cart/shippingaddressform/{cartId}")
	public String getShippingAddress(@PathVariable int cartId,Model model){
		Cart cart=cartitemservicelayer.getCart(cartId);
		Customer customer=cart.getCustomer();
		model.addAttribute("shippingAddress",customer.getShippingAddress());
		model.addAttribute("cartid",cartId);
		return "shippingaddressform";
	}
	@RequestMapping("/cart/order/{cartId}")
public String createOrder(@PathVariable int cartId,@ModelAttribute Shippingaddress shippingAddress,Model model){
		Cart cart=cartitemservicelayer.getCart(cartId);
		Customer customer=cart.getCustomer();
		customer.setShippingAddress(shippingAddress);
		cart.setCustomer(customer);
	CustomerOrder customerOrder=customerorderservicelayer.createOrder(cart);
	model.addAttribute("order",customerOrder);
	model.addAttribute("cartid",cartId);
	return "orderdetails";
}
	@RequestMapping("/cart/confirm/{id}")
public String confirm(@ModelAttribute CustomerOrder order,@PathVariable int id){
	cartitemservicelayer.removeallcartitem(id);
	return "thanks";
}

}
