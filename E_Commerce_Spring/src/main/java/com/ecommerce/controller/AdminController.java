package com.ecommerce.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ecommerce.api.ProductDetails;
import com.ecommerce.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/AddProduct")
	public String showAddProductPage(@ModelAttribute ProductDetails productDetails,Model model) {
		return "add_product";
	}
	
	@RequestMapping(path = "/AddProductServlet", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute ProductDetails productDetails,Model model) {
		int i = this.adminService.addProduct(productDetails);
		if(i >= 1) {
			return "add_product_success";
		}
		else {
			return "add_product_fail";
		}
	}

}
