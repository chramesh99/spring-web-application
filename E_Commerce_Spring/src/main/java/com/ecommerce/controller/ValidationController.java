package com.ecommerce.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ecommerce.api.ProductDetails;
import com.ecommerce.api.User;
import com.ecommerce.api.UserCart;
import com.ecommerce.api.UserOrder;
import com.ecommerce.service.UserService;

@Controller
public class ValidationController {
	static String userName = "";
	@Autowired
	private UserService userService;

	@RequestMapping(path = "/userlogin", method = RequestMethod.POST)
	public String showLoginForm(@ModelAttribute User user, Model model) {
		int i = this.userService.insert(user);
		if (i == 1) {
			return "login-sucess";
		} else if (i == 2) {
			return "login_existing_user";
		} else {
			return "login_fail";
		}
	}

	@RequestMapping(path = "/login", method = RequestMethod.POST)
	public String showHomePage(@ModelAttribute User user, Model model, HttpSession session) {
		int i = this.userService.login(user);
		if (i == 1) {
			userName = user.getUserName();
			session.setAttribute("username", userName);
			return "login_success_page";
		}
		return "login_fail_page";
	}

	@RequestMapping("/productlistpage")
	public String showProductListPage(@ModelAttribute ProductDetails productDetails, Model model) {
		List<ProductDetails> productDetailsList = this.userService.showProductListPage(productDetails);
		model.addAttribute("productDetailsList", productDetailsList);
		return "product_list_page";
	}

	@RequestMapping("/logout")
	public String logout(Model model, HttpSession session) {
		session.removeAttribute("username");
		return "home";
	}

	@RequestMapping("/productdescriptionpage/{id}")
	public String showProductDescriptionpage(@PathVariable("id") int id, @ModelAttribute ProductDetails productDetails,
			Model model) {
		ProductDetails pd = this.userService.getProductDetailsById(id);
		model.addAttribute("p", pd);
		return "product_description_page";
	}

	@RequestMapping("/cartpage/{id}")
	public String addProductToCart(@PathVariable("id") int id, @ModelAttribute ProductDetails productDetails,
			@ModelAttribute UserCart userCart, Model model, HttpSession session) {
		this.userService.addProductToCart(id, userCart, session.getAttribute("username").toString());
		return "redirect:/displaycart";// to change the url
	}

	@RequestMapping("/displaycart")
	public String getUserProducts(@ModelAttribute UserCart userCart, Model model, HttpSession session) {
		if (session.getAttribute("username") != null) {
			List<UserCart> uc = this.userService.getUserProducts(userCart, session.getAttribute("username").toString());
			model.addAttribute("uc", uc);
			return "display_cart";
		}
		return "redirect:/login";
	}

	@RequestMapping("/paymentpage")
	public String showPaymentPage() {
		return "payment_page";
	}

	@RequestMapping("/success")
	public String showSuccesspage(UserOrder userOrder, HttpSession session, UserCart userCart) {
		this.userService.addProductToOrder(userOrder, session.getAttribute("username").toString(), userCart);
		return "redirect:/displayorders";
	}

	@RequestMapping("/displayorders")
	public String getUserOrder(@ModelAttribute UserOrder userOrder, Model model, HttpSession session) {
		if (session.getAttribute("username") != null) {
			List<UserOrder> uo = this.userService.getUserOrders(userOrder, session.getAttribute("username").toString());
			model.addAttribute("uo", uo);
			return "display_orders";
		}
		return "redirect:/login";
	}

	@RequestMapping("/home_page")
	public String toHome() {
		return "homepage";
	}

	@RequestMapping("/cartdelete/{id}")
	public String deleteSingleProductFromCart(@PathVariable("id") int productId, HttpSession session) {
		this.userService.deleteSingleProductFromCart(session.getAttribute("username").toString(), productId);
		return "redirect:/displaycart";
	}

}
