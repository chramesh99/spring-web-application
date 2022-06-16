<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.ecommerce.*" %>
<%@ page import="com.ecommerce.dao.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.container{
            width: 600px;
            height: 250px;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            padding: 50px;
            /* border: 1px solid black; */
        }
        .content img{
            height: 350px;
        }
        .description{
            width: 600px;
            height: 250px;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            padding: 50px;
            /* border: 1px solid black; */
        }
        .btn{
            display: flex;
            flex-direction: row;
        }
        .btn .cart{
            width: 150px;
            height: 50px;
            background-color: white;
            border: 1px solid black;
            border-radius: 3px;
            color: black;
            cursor: pointer;
            box-shadow: 0 1px 2px 0 rgb(0 0 0 / 20%);
        }
        .btn .buy{
            width: 150px;
            height: 50px;
            background-color: #fb641b;
            border: 1px solid black;
            border-radius: 3px;
            color: white;
            cursor: pointer;
            box-shadow: 0 1px 2px 0 rgb(0 0 0 / 20%);
        }
        input{
            padding: 5px;
            width: 200px;
            height: 30px;
            box-sizing: border-box;
            border: none;
            border-bottom: 2px solid lightgrey;
            margin-top: 100px;
        }
        .info{
            margin-left: 50px;
        }
</style>
</head>
<body>
		<div class='container'>
			<div class='content'>
				<img src="${p.getPimageurl()}" alt="image"/>
			</div>
			<div class='info'>
				<p>${p.getpName()}</p>
				<p><b>Price:${p.getpPrice()}</b></p>
				<p>
					<b>Coupons for you</b>
					<p>
						Special PriceGet extra 30% off up to 50/- on 1 item(s) (price inclusive of discount)TandC
					</p>
					<input type="tel" placeholder='Enter delivery pincode'> <a href='#' style='text-decoration: none; color: black;'>Check</a>
				</p>
			</div>
		</div>
		<div class='description'>
			<p>${p.getpDescription() }</p>
			<div class='btn'>
				<a href= "cartpage/${plp.getProductId()}"><button class='cart'>Add Cart</button></a>&nbsp;&nbsp;
				<a href= "cartpage/${plp.getProductId()}"><button class='buy'>Buy Now</button></a>
			</div>
		</div>

</body>
</html>