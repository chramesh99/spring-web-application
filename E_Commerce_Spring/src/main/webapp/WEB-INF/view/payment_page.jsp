<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
<style>
        .content{
            width: 500px;
            height: 350px;
        }
        .container{
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-content: center;
            align-items: center;
        }
        .buy{
            width: 100%;
            height: 50px;
            background-color: #fb641b;
            border: 1px solid black;
            border-radius: 3px;
            color: white;
            cursor: pointer;
        }
        .cart{
            width: 100%;
            height: 50px;
            background-color: white;
            border: 1px solid black;
            border-radius: 3px;
            color: black;
            cursor: pointer;
        }
    </style>
</head>
<body>
	<div class='container'>
        <div class='content'>
            <a href='#'><button class='cart'>Select Address</button></a><br><br>
            <h1>Payment</h1>
            <input type='radio' name='Payment' value='UPI'><b>UPI</b><br><br>
            <input type='radio' name='Payment' value='card'><b>Dedit/Credit Card</b><br><br>
            <input type='radio' name='Payment' value='netbanking'><b>Net Banking</b><br><br>
            <input type='radio' name='Payment' value='cash'><b>Cash on Delivery</b><br><br>
            <a href='success'><button class='buy'>Proceed to pay</button></a>
        </div>
    </div>
</body>
</html>