<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List Page</title>
<style type="text/css">
body {
	padding: 3px;
}

.content {
	border: 1px solid black;
	width: 250px;
	height: 270px;
	padding: 5px;
	margin-right: 10px;
}

.content img {
	display: block;
	margin-left: auto;
	margin-right: auto;
	height: 100px;
}

.content p {
	white-space: nowrap;
	text-align: center;
	overflow: hidden;
	text-overflow: ellipsis;
}

.content .cart {
	float: left;
	width: 50%;
	height: 50px;
	background-color: white;
	border: 1px solid black;
	border-radius: 3px;
	color: black;
	cursor: pointer;
}

.content .buy {
	width: 50%;
	height: 50px;
	background-color: #fb641b;
	border: 1px solid black;
	border-radius: 3px;
	color: white;
	cursor: pointer;
	margin-top: -18px;
}

.content a {
	text-decoration: none;
	color: black;
}

.btn {
	margin-top: 15px;
}
</style>
</head>
<body>
	<c:forEach items="${productDetailsList}" var="plp">
		<div class="content" style="float: left;">
			<a href="productdescriptionpage/${plp.getProductId()}"> 
				<img src="${plp.getPimageurl()}" alt="image" />
				<p>${plp.getpName()}</p>
				<p>${plp.getpDescription()}</p>
				<p>Price: ${plp.getpPrice()}</p>
				<div class='btn'>
					<a href="cartpage/${plp.getProductId()}"><button class='cart'>Add Cart</button></a> 
					<a href="cartpage/${plp.getProductId()}"><button class='buy' style="margin-top: -1px;">Buy Now</button></a>
				</div>
			</a>
		</div>
	</c:forEach>
</body>
</html>