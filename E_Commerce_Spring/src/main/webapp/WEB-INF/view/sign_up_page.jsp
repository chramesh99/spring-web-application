<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign_Up_Page</title>
    <style>
        .container{
            width: 100;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-content: center;
            align-items: center;
        }
        .sign_up{
            background-color: white;
            width: 500px;
            height: 500px;
            border: 1px solid black;
            border-radius: 5px;
            text-align: center;
            padding-top: auto;
        }
        input[type=submit]{
            width: 250px;
            height: 40px;
            background-color: #fb641b;
            border: 1px solid black;
            border-radius: 3px;
            color: white;
            text-transform: uppercase;
            cursor: pointer;
            box-shadow: 0 1px 2px 0 rgb(0 0 0 / 20%);
        }
        .existing_user .btn{
            width: 420px;
            height: 40px;
            background-color: white;
            border: 1px solid white;
            border-radius: 3px;
            color: #2874f0;
            text-transform: uppercase;
            cursor: pointer;
            box-shadow: 0 2px 4px 0 rgb(0 0 0 / 20%);
        }
        .content{
            padding: 40px;
        }
        .content input{
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: none;
            border-bottom: 2px solid lightgrey;
        }
    </style>
</head>
<body>
<div class="container">
        <div class="sign_up">
            <div class="content">
                <form action="userlogin" method="post">
                    <input type="text" name="userName" placeholder="User Name">
                    <input type="text" name="mobileNumber" placeholder="Mobile number">
                    <input type="password" name="password" placeholder="Set password">
                    <input type="password" name="confirmPassword" placeholder="Confirm password">
                    <p style="text-align: left;">By continuing, you agree to Flipkart's <a href="#"> Terms of Use </a> and <a href="#">Privacy Policy</a>.</p>
                    <input type="submit" value="submit">
                </form>
               
                <br><br>
                <a href="login.html" class="existing_user"><button class="btn">Existing User? Log in</button></a>
            </div>
        </div>
    </div>
</body>
</html>