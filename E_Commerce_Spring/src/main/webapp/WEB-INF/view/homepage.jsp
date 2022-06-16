<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    .header{
        background-color: #2874f0;
        width: 100%;
        height: 70px;
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
        width: 100px;
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
    .products_ul{
        display: flex;
        justify-content: space-around;
        margin-top: 1px;
    }
    .products_ul img{
        width: 80px;
        height: 80px;
    }
    .products_ul a{
        color: black;
    }
    .products_ul a:hover{
        color: black;
    }
    .products{
        height: 100px;
    }
    .products_items{
        border: 1px solid black;
        height: 200px;
        padding: 80px;
        padding-left: 1350px;
    }
    .products_items .products_items_btn{
        background-color: antiquewhite;
        width: 200px;
        height: 50px;
        padding: 10px;
        border: 1px solid black;
        border-radius: 5px;
    }
</style>
</head>
<body>
<div class="main">
    <div class="header">
        <ul>
            <li><a><img src="#" alt="Flipkart"></a></li>
            <li class="list"><a><i class="fa-solid fa-magnifying-glass" id="search"></i><input type="text" placeholder="Search for products, brands and more"></a></li>
            <li class="dropdown"><a href="#"><button class="btn">Account</button></a>
                <div class="dropdown-content">
                    <a href="ProfileServlet"><i class="fa-solid fa-user">&nbsp;&nbsp;&nbsp;</i>My Profile</a>
                    <a href="#">Flipkart Plus Zone</a>
                    <a href="displayorders">Orders</a>
                    <a href="displaywishlist.jsp">Wishlist</a>
                    <a href="#">Rewards</a>
                    <a href="#"><i class="fa-solid fa-wallet"></i>Gift Cards</a>
                    <a href="logout"><i class="fa-solid fa-wallet"></i>Logout</a>
                </div>
            </li>
            <li><a href="#">More</a></li>
            <li><a href="displaycart"><i class="fa-solid fa-cart-arrow-down">&nbsp;&nbsp;&nbsp;</i>Cart</a></li>
        </ul>
    </div>
    <div class="products">
        <ul class="products_ul">
            <li class="products_li"><a href="#"><img src="mobile.jpg" alt=""><br>&nbsp;&nbsp;&nbsp;Mobiles</a></li>
            <li class="products_li"><a href="#"><img src="fashion.jpg" alt=""><br>&nbsp;&nbsp;&nbsp;Fashion</a></li>
            <li class="products_li"><a href="#"><img src="electronics.jpg" alt=""><br>&nbsp;Electronics</a></li>
            <li class="products_li"><a href="#"><img src="home.jpg" alt=""><br>&nbsp;&nbsp;&nbsp;&nbsp;Home</a></li>
            <li class="products_li"><a href="#"><img src="travel.jpg" alt=""><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Travel</a></li>
            <li class="products_li"><a href="#"><img src="appliances.jpg" alt=""><br>&nbsp;Appliances</a></li>
            <li class="products_li"><a href="#"><img src="furniture.jpg" alt=""><br>&nbsp;&nbsp;&nbsp;Furniture</a></li>
            <li class="products_li"><a href="#"><img src="beauty.jpg" alt=""><br>&nbsp;Beauty,Toys</a></li>
            <li class="products_li"><a href="#"><img src="grocery.jpg" alt=""><br>&nbsp;&nbsp;&nbsp;Grocery</a></li>
        </ul>
    </div><br><hr>
    <div class="products_items">
        <a href="productlistpage"><button class="products_items_btn">Men Products</button></a>
    </div>
    <div class="products_items">
        <a href="#"><button class="products_items_btn">Women Products</button></a>
    </div>
    <div class="products_items">
        <a href="#"><button class="products_items_btn">Kids Products</button></a>
    </div>
</div>
</body>
</html>