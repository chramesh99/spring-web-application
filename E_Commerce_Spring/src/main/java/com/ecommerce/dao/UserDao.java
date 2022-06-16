package com.ecommerce.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.ecommerce.api.ProductDetails;
import com.ecommerce.api.User;
import com.ecommerce.api.UserCart;
import com.ecommerce.api.UserOrder;

@Repository("userDao")
public class UserDao {
	static int userId;
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public int insert(User u) {
		int count = 0;
		String password = u.getPassword();
		String confirm_password = u.getConfirmPassword();
		System.out.println("password and confirm password" + password.equals(confirm_password));
		if (password.equals(confirm_password)) {
			List<User> users = this.hibernateTemplate.loadAll(User.class);
			for (User x : users) {
				if (u.getUserName().equals(x.getUserName())) {
					count++;
				}
				System.out.println("count is:----- " + count);
			}
			if (count < 1) {
				this.hibernateTemplate.save(u);
				return 1;
			} else if (count >= 1) {
				return 2;
			} else {
				return 1;
			}
		} else {
			return 3;
		}

	}

	public int login(User user) {
		String userName = user.getUserName();
		String password = user.getPassword();
		List<User> users = this.hibernateTemplate.loadAll(User.class);
		for (User x : users) {
			String dbuserName = x.getUserName();
			String dbpassword = x.getPassword();
			if ((dbuserName.equals(userName)) && (dbpassword.equals(password))) {
				userId = x.getId();
				return 1;
			}
		}
		return 0;
	}

	public List<ProductDetails> productListPage(ProductDetails productDetails) {
		List<ProductDetails> productDetailsList = this.hibernateTemplate.loadAll(ProductDetails.class);
		return productDetailsList;
	}

	public ProductDetails getProductByID(int id) {
		ProductDetails productDetails = this.hibernateTemplate.get(ProductDetails.class, id);
		return productDetails;
	}

	public User getUserByUserName(String userName) {
		List<User> users = this.hibernateTemplate.loadAll(User.class);
		for (User x : users) {
			String dbuserName = x.getUserName();
			if (dbuserName.equals(userName)) {
				return x;
			}
		}
		return null;
	}
	
	public UserCart cartProduct(int productId,String userName) {
		System.out.println("in dao method");
		UserCart userCart = new UserCart();
		ProductDetails product = this.hibernateTemplate.get(ProductDetails.class, productId);
		User user = getUserByUserName(userName);
		userCart.setProductId(product.getProductId());
		userCart.setpName(product.getpName());
		userCart.setpPrice(product.getpPrice());
		userCart.setPimageurl(product.getPimageurl());
		userCart.setQuanity(1);
		userCart.setUser(user);
		return userCart;
	}

	public boolean addProductToCart(String userName,int productId) {
		User user = getUserByUserName(userName);
		List<UserCart> userCart = this.hibernateTemplate.loadAll(UserCart.class);
		for (UserCart x : userCart) {
			if ((user.getId() == x.getUser().getId()) && (productId == x.getProductId())) {
				x.setQuanity(x.getQuanity()+1);
				this.hibernateTemplate.update(x);
				return true;
			}
		}
		this.hibernateTemplate.save(cartProduct(productId, userName));
		return false;
	}

	public void addProductToOrder(UserCart userCart, String userName) {
		UserOrder userOrder = new UserOrder();
		userOrder.setProductId(userCart.getProductId());
		userOrder.setpName(userCart.getpName());
		userOrder.setpPrice(userCart.getpPrice());
		userOrder.setPimageurl(userCart.getPimageurl());
		userOrder.setQuanity(userCart.getQuanity());
		userOrder.setUser(userCart.getUser());
		this.hibernateTemplate.save(userOrder);
	}

	public List<UserCart> getUserProducts(String userName) {
		User user = getUserByUserName(userName);
		List<UserCart> userCart = this.hibernateTemplate.loadAll(UserCart.class);
		List<UserCart> uc = new ArrayList<>();
		for (UserCart x : userCart) {
			if (user.getId() == x.getUser().getId()) {
				uc.add(x);
			}
		}
		return uc;
	}

	public List<UserOrder> getUserOrders(String userName) {
		User user = getUserByUserName(userName);
		List<UserOrder> userOrder = this.hibernateTemplate.loadAll(UserOrder.class);
		List<UserOrder> uc = new ArrayList<>();
		for (UserOrder x : userOrder) {
			if (user.getId() == x.getUser().getId()) {
				uc.add(x);
			}
		}
		return uc;
	}
	
	public void batchAddProductsToOrder(String userName) {
		User user = getUserByUserName(userName);
		List<UserCart> userCart = this.hibernateTemplate.loadAll(UserCart.class);
		List<UserCart> deleteUserCart = new ArrayList<>();
		for (UserCart x : userCart) {
			if (user.getId() == x.getUser().getId()) {
				deleteUserCart.add(x);
				addProductToOrder(x,userName);
			}
		}
		this.hibernateTemplate.deleteAll(deleteUserCart);
	}
	
	public void deleteSingleProductFromCart(String userName,int productId) {
		User user = getUserByUserName(userName);
		List<UserCart> userCart = this.hibernateTemplate.loadAll(UserCart.class);
		for (UserCart x : userCart) {
			if ((user.getId() == x.getUser().getId()) && (productId == x.getProductId())) {
				this.hibernateTemplate.delete(x);
			}
		}
	}
}
