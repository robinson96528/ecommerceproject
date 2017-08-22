package com.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.model.Category;
import com.model.Product;
import com.service.Productservicelayer;

@Controller
public class Productcontroller {
	@Autowired
	private Productservicelayer productservicelayer;
	@RequestMapping("/admin/getproductform")
	public String getproductform(Model model)
	{
		List<Category> categories=productservicelayer.getallcategories();
		model.addAttribute("product", new Product());
		model.addAttribute("categories", categories);
		return "productform";
	}
	@RequestMapping("/admin/saveproduct")
	public String saveproduct(@Valid @ModelAttribute(name="product") Product product,BindingResult results,Model model)
	{
		if(results.hasErrors())
		{
			List<Category> categories=productservicelayer.getallcategories();
			model.addAttribute("categories", categories);
			return "productform";
		}
		productservicelayer.saveproduct(product);
		MultipartFile image=product.getImage();
		Path path=Paths.get("F:/Users/ROBINSON/workspace/projectfrontend/src/main/webapp/WEB-INF/resources/" +product.getId()+".png");
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/all/product/getallproduct";
	}
	@RequestMapping("/all/product/getallproduct")
	public String getallproduct(Model model){
		List<Product> productobject=productservicelayer.getallproducts();
		model.addAttribute("product", productobject);
		return "productlist";
	}
	@RequestMapping("/all/product/viewproduct/{id}")
	public String getproductbyid(@PathVariable int id,Model model){
		Product product=productservicelayer.getproductbyid(id);
		model.addAttribute("productobj", product);
		return "viewproduct";
	}
	@RequestMapping("/admin/product/geteditform/{id}")
	public String geteditform(@PathVariable int id,Model model){
		List<Category> category=productservicelayer.getallcategories();
		model.addAttribute("categories",category);
		Product product=productservicelayer.getproductbyid(id);
		model.addAttribute("products",product);
		return "editform";
	}
	@RequestMapping("/admin/product/editproduct")
	public String editproduct(@Valid @ModelAttribute(name="products") Product product,BindingResult result,Model model){
		if(result.hasErrors())
		{
			List<Category> Category=productservicelayer.getallcategories();
			model.addAttribute("categories", Category);
			return "editform";
		}
		productservicelayer.editproduct(product);
		MultipartFile image=product.getImage();
		Path path=Paths.get("F:/Users/ROBINSON/workspace/projectfrontend/src/main/webapp/WEB-INF/resources/" +product.getId()+".png");
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/all/product/getallproduct";
	}
	@RequestMapping("/all/product/searchbycategory")
	public String searchbycategory(@RequestParam String searchCondition, Model model)
	{
		model.addAttribute("categories",productservicelayer.getallcategories());
		model.addAttribute("products", productservicelayer.getallproducts());
		if(searchCondition.equals("all")){
			model.addAttribute("searchCondition", "");
		}
			else{
				model.addAttribute("searchCondition", searchCondition);
			}
			return "productlist";
		}
}

