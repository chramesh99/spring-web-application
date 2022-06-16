package com.ecommerce.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ecommerce.api.ProductDetails;
import com.ecommerce.dao.AdminDao;

@Service
public class AdminService {
	@Autowired
	private AdminDao adminDao;
	@Transactional
	public int addProduct(ProductDetails productDetails) {
		int i = this.adminDao.addProduct(productDetails);
		return i;
	}
	
}
