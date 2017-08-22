package com.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Customer;
import com.model.User;
import com.service.Customerservicelayer;


@Controller
public class Customercontroller {
	@Autowired
	private Customerservicelayer customerservicelayer;
	@RequestMapping("/all/registrationform")
	public String getregistrationfrom(Model model){
		model.addAttribute("customer",new Customer());
		return "register";
	}
	@RequestMapping("/all/savecustomer")
	public String registercustomer(@Valid @ModelAttribute(name="customer") Customer customer , BindingResult result , Model model)
	{
		if(result.hasErrors()){
			System.out.println("error occured");
			return "register";
		}
		User user=customerservicelayer.validateusername(customer.getUser().getUserName());
		//System.out.println(User);
		Customer duplicateCustomer=customerservicelayer.validateemail(customer.getEmail());
		System.out.println(duplicateCustomer);
		if(user!=null)
		{
			model.addAttribute("duplicateUsername","username already exit");
			return "register";
		}
		if(duplicateCustomer!=null)
		{
			model.addAttribute("duplicateCustomer","email already exit");
			return "register";
		}
		
		customerservicelayer.registercustomer(customer);
		return "home";
		
	}

	
}
