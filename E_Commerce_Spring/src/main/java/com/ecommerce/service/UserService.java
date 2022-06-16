package com.ecommerce.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ecommerce.api.ProductDetails;
import com.ecommerce.api.User;
import com.ecommerce.api.UserCart;
import com.ecommerce.api.UserOrder;
import com.ecommerce.dao.UserDao;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	
	@Transactional
	public int insert(User user) {
		int i = this.userDao.insert(user);
		return i;
	}
	
	public int login(User user) {
		int i = this.userDao.login(user);
		return i;
	}
	
	public List<ProductDetails> showProductListPage(ProductDetails productDetails) {
		List<ProductDetails> productDetailsList = this.userDao.productListPage(productDetails);
		return productDetailsList;
	}
	
	public ProductDetails getProductDetailsById(int id) {
		return this.userDao.getProductByID(id);
	}
	
	@Transactional
	public void addProductToCart(int productId,UserCart userCart,String userName) {
		System.out.println("in service method");
		this.userDao.addProductToCart(userName,productId);
	}
	
	public List<UserCart> getUserProducts(UserCart userCart,String userName) {
		List<UserCart> uc = this.userDao.getUserProducts(userName);
		return uc;
	}
	@Transactional
	public void addProductToOrder(UserOrder userOrder, String userName, UserCart userCart) {
		this.userDao.batchAddProductsToOrder(userName);
		
	}
	
	public List<UserOrder> getUserOrders(UserOrder userOrder,String userName) {
		List<UserOrder> uc = this.userDao.getUserOrders(userName);
		return uc;
	}
	
	@Transactional
	public void deleteSingleProductFromCart(String userName,int productId) {
		this.userDao.deleteSingleProductFromCart(userName, productId);
	}
	
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	
	
}
