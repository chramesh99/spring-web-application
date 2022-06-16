package com.ecommerce.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class EcommerceController {
	@RequestMapping("/home")
	public String showHomePage(Model model) {
		return "home";
	}
	@RequestMapping("/login")
	public String showLoginForm(Model model) {
		return "login";
	}
	@RequestMapping("/sign_up_page")
	public String showRegistrationForm(Model model) {
		return "sign_up_page";
	}
}
