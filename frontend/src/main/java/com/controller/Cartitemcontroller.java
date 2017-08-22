package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Cart;
import com.model.Cartitem;
import com.model.Customer;
import com.model.Product;
import com.service.Cartitemservicelayer;
import com.service.Customerservicelayer;
import com.service.Productservicelayer;

@Controller
public class Cartitemcontroller {
	@Autowired
	private Customerservicelayer customerservicelayer;
	@Autowired
	private Cartitemservicelayer cartitemservicelayer;
	@Autowired
	private Productservicelayer productservicelayer;
	@RequestMapping("/cart/addtocart/{id}")
	public String addcartitem(@PathVariable int id,@RequestParam int units,Model model)
	{
		Product product=productservicelayer.getproductbyid(id);
		User user =(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();String Username=user.getUsername();
		Customer customer=customerservicelayer.getcustomerbyusername(Username);
		Cart cart=customer.getCart();
		List<Cartitem> cartitems=cart.getCartItems();
		System.out.println(cart.getCartItems().size());
		for(Cartitem cartitem:cartitems)
		{
			System.out.println(cartitem.getProduct().getId());
			System.out.println(id);
			if(cartitem.getProduct().getId()==id)
			{
				cartitem.setQuantity(units);
				cartitem.setTotalPrice(product.getPrice()*units);
				cartitemservicelayer.addcartitem(cartitem);
				return "redirect:/cart/getcart";
			}
		}
		Cartitem cartitem=new Cartitem();
		cartitem.setQuantity(units);
		cartitem.setTotalPrice(product.getPrice()*units);
		cartitem.setProduct(product);
		cartitem.setCart(cart);
		cartitemservicelayer.addcartitem(cartitem);
		return "redirect:/cart/getcart";
	}
	@RequestMapping("/cart/getcart")
	public String getcart(Model model)
	{
		User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String Username=user.getUsername();
		//System.out.println(Username);
		Customer customer=customerservicelayer.getcustomerbyusername(Username);
		//System.out.println(Customer);
		Cart cart=customer.getCart();
		model.addAttribute("cart", cart);
		return "cart";
	}
	@RequestMapping("/cart/removecartitem/{cartitemid}")
	public String removecartitem(@PathVariable int cartitemid)
	{
		cartitemservicelayer.removecartitem(cartitemid);
		return "redirect:/cart/getcart";
	}
	@RequestMapping("/cart/clearcart/{cartid}")
	public String clearcart(@PathVariable("cartid") int cartid)
	{
		cartitemservicelayer.removeallcartitem(cartid);
		return "redirect:/cart/getcart";
	}

}
