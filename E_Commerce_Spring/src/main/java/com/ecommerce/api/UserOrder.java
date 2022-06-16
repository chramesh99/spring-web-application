package com.ecommerce.api;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class UserOrder {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@JoinColumn
	private int id;
	private int productId;
	private String pName;
	private float pPrice;
	private String pimageurl;
	private int quanity;
	@ManyToOne
	private User user;

	public UserOrder() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

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

	public int getQuanity() {
		return quanity;
	}

	public void setQuanity(int quanity) {
		this.quanity = quanity;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "UserCart [productId=" + productId + ", pName=" + pName + ", pPrice=" + pPrice + ", pimageurl="
				+ pimageurl + ", quanity=" + quanity + "]";
	}
}
