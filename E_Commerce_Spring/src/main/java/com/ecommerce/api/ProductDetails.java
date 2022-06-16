package com.ecommerce.api;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ProductDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int productId;
	private String pName;
	private String pDescription;
	private float pPrice;
	private String pimageurl;
	private String gender;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpDescription() {
		return pDescription;
	}

	public void setpDescription(String pDescription) {
		this.pDescription = pDescription;
	}

	public float getpPrice() {
		return pPrice;
	}

	public void setpPrice(float pPrice) {
		this.pPrice = pPrice;
	}

	public String getPimageurl() {
		return pimageurl;
	}

	public void setPimageurl(String pimageurl) {
		this.pimageurl = pimageurl;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "ProductDetails [productId=" + productId + ", pName=" + pName + ", pDescription=" + pDescription
				+ ", pPrice=" + pPrice + ", pimageurl=" + pimageurl + ", gender=" + gender + "]";
	}

}
