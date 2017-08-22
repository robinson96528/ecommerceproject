package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.Productservicelayer;


@Controller
public class Homecontroller {
	@Autowired
	private Productservicelayer productservicelayer;
	@RequestMapping("/home")
	public String homepage(HttpSession httpsession)
	{
		httpsession.setAttribute("categories",productservicelayer.getallcategories());
		return "home";
	}
	@RequestMapping("/login")
	public String loginpage()
	{
		return "login";
	}
	@RequestMapping("/aboutus")
	public String aboutus()
	{
		return "about";
	}
}


