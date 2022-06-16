<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
    <style>
        .container{
            width: 100;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-content: center;
            align-items: center;
            /* margin-top: 100px; */
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
        .continue{
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
            width: 400px;
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
            padding: 50px;
        }
        .content input{
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: none;
            border-bottom: 2px solid lightgrey;
        }
        .new{
            text-decoration: none;
            color: #2874f0;
            font-weight: 500;
        }
    </style>
</head>
<body>
	<div class="container">
        <div class="sign_up">
            <div class="content">
                <form action="login" method="post">
                    <input type="text" name="userName" placeholder="Enter Mobile number/User name">
                    <input type="password" name="password" placeholder="Enter password">
                    <p style="text-align: left;">By continuing, you agree to Flipkart's <a href="#"> Terms of Use </a> and <a href="#">Privacy Policy</a>.</p>
                    <input type="submit" class="continue" value="Login">
                </form>
                <p>OR</p>
                <a href="#" class="existing_user"><button class="btn">Request OTP</button></a><br><br><br>
                <a href="sign_up_page.html" class="new">New to Flipkart? Create an account</a>
            </div>
        </div>
    </div>
</body>
</html>