package com.ecommerce.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.ecommerce.api.ProductDetails;

@Repository("adminDao")
public class AdminDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	public int addProduct(ProductDetails productDetails) {
		String pname = productDetails.getpName();
		String pdesc = productDetails.getpDescription();
		float pprice = productDetails.getpPrice();
		String imageurl = productDetails.getPimageurl();
		String gender = productDetails.getGender();
		System.out.println("in addPrtoduct method"+pname+pdesc+pprice+imageurl+gender);
		int i = (int) this.hibernateTemplate.save(productDetails);
		System.out.println("the rows affected is " + i);
		return i;
	}
	
}
