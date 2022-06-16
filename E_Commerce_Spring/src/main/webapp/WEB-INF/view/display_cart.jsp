<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style>
        table{
            border-collapse: collapse;
            width: 100%;
        }
        th,td{
            padding: 8px;
            text-align: center;
            border-bottom: 1px solid #ddd;
            font-size: 19px;
        }
        img{
            width: 100px;
            height: 100px;
        }
        input{
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: none;
            border-bottom: 2px solid lightgrey;
        }
        .order{
            width: 120px ;
            height: 50px;
            background-color: #fb641b;
            border: 1px solid black;
            border-radius: 3px;
            color: white;
            cursor: pointer;
            box-shadow: 0 1px 2px 0 rgb(0 0 0 / 20%);
        }
        .cancel{
            width: 120px ;
            height: 50px;
            background-color: red;
            border: 1px solid black;
            border-radius: 3px;
            color: white;
            cursor: pointer;
            box-shadow: 0 1px 2px 0 rgb(0 0 0 / 20%);
        }
        .quantity{
            border: 1px solid black;
            border-radius: 16px;
            height: 30px;
            width: 200px;
            position: absolute;
            text-align: center;
            font-size: 30px;
        }
        .quantity a{
            text-align: center;
            text-decoration: none;
            color: black;
            font-size: 30px;
        }
        .checkout{
        	background-color: white;
        	color: black;
            width: 790px;
            height: 60px;
            background-color: #fb641b;
            border: 1px solid black;
            border-radius: 4px;
            color: white;
            cursor: pointer;
            font-size: 15px;
            box-shadow: 0 1px 2px 0 rgb(0 0 0 / 20%);
        }
     .header{
        background-color: #2874f0;
        height: 70px;
        width: 100%;
    }
    #search{
        position:absolute;
        margin-left: 420px;
        margin-top: 11px;
    }
    ul{
        list-style-type: none;
        display: flex;
        justify-content: space-around;
    }
    li{
        float: left;
       
    }
    li a{
        display: block;
        padding: 20px;
        text-decoration: none;
        color : white;
    }
    li a:hover{
        color: white;
    }
    input{
        width: 450px;
        height: 40px;
        border-radius: 3px;
        border: 1px solid white;
        border-color: transparent;
    }
    .btn{
    	border: 1px solid black;
        width: 100px;
        height: 40px;
        text-align: center;
        margin-top: -5px;
        /* margin-top: 15px; */
        background-color: white;
    }
    .dropdown{
            position: relative;
            display: inline-block;
        }
    .dropdown-content{
        display: none;
        position: absolute;
        background-color: white;
        min-width: 250px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }
    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }
    .dropdown:hover .dropdown-content {display: block;}
    .dropdown-content a:hover {background-color: #ddd; color: black;}
    .list{
        top: -5px; 
        position: relative;
    }
    </style>
</head>
<body>
	<div class="header">
        <ul>
            <li><a><img src="#" alt="Flipkart"></a></li>
            <li class="list"><a><i class="fa-solid fa-magnifying-glass" id="search"></i><input type="text" placeholder="Search for products, brands and more"></a></li>
            <li class="dropdown"><a href="#"><button class="btn">Menu</button></a>
                <div class="dropdown-content">
                    <a href="productlistpage.jsp"><i class="fa-solid fa-user">&nbsp;&nbsp;&nbsp;</i>Mens Product</a>
                    <a href="#">Womens</a>
                    <a href="#">Kids</a>
                    <a href="displayorders.jsp">Orders</a>
                    <a href="displaywishlist.jsp">WishList</a>
                    <a href="logout.jsp"><i class="fa-solid fa-wallet"></i>Logout</a>
                </div>
            </li>
            <li><a href="#">More</a></li>
            <li><a href="displaycart.jsp"><i class="fa-solid fa-cart-arrow-down">&nbsp;&nbsp;&nbsp;</i>Cart</a></li>
        </ul>
    </div><br><br>
	<table>
        <tr>
            <th></th>
            <th>Product Name</th>
            <th>Product Price</th>
            <th>quantity</th>
            <th>Cancel(or)BuyNow</th>
        </tr>
		<c:forEach items="${uc}" var="uc">
			<tr>
            	<td><img src="${uc.getPimageurl()}" alt='${uc.getpName()}'></td>
            	<td>${uc.getpName()}</td>
            	<td>${uc.getpPrice()*uc.getQuanity()}</td>
            	<td><div class="quantity" id="quantity"><a href="increment.jsp?id=${uc.getId() }" >+</a> &nbsp;&nbsp;&nbsp;&nbsp; ${uc.getQuanity()} &nbsp;&nbsp;&nbsp;&nbsp; <a href="decrement.jsp?id=${uc.getId() }">-</a></div></td>
            	<th><a href="wishlist.jsp?id=${uc.getId() }"><button class='order'>Add Wishlist</button></a>&nbsp;<a href="cartdelete/${uc.getProductId() }"><button class='cancel'>Delete</button></a></th>
        	</tr>
		</c:forEach>
	</table>
	<div>
        <a href="paymentpage"><Button class='checkout'>Checkout</Button></a>
        <a href="productlistpage" style="background-color: white;color: black;"><Button class='checkout'>Continue</Button></a>
    </div>
</body>
</html>