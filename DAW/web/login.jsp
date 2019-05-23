<%-- 
    Document   : login
    Created on : Apr 5, 2019, 10:25:34 AM
    Author     : PirthviSingh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <script src="jquery-3.3.1.js"></script>
        <link rel="stylesheet" type="text/css" href="design.css">  
        <script type="text/javascript" src="myjava.js"></script>
    </head>
    <body>
        <div  class="up"> 
            <div>

                <ul id="reg">
                    <li id="register" class="upp">Register</li>
                    <a href="login.jsp"><li id="upp">Login</li></a>
                </ul>

            </div>
        </div>
        <div id="but">
            <a href="Home"><button id="home">HOME</button></a>
            <button id="men" onclick="gender('M')">MEN</button>
            <button id="women" onclick="gender('F')">WOMEN</button>

            <button id="todd" onclick="gender('K')">INFANTS|TODDLERS</button>
            <button id="cntct">CONTACT US</button></div>
        <span>
            <input id="search" type="search" placeholder="Search the entire store...." style="margin-right:-5px;" onkeyup="search()" onmouseout="out()"/></span>
        <span id="se">

        </span>
        <button id="sb" class='fas fa-search-location' style="margin-left:0px;"></button>
        <a href="Cart.jsp"> <button id="sb" class='fas fa-shopping-cart' > ${total} item(s) <span class='far fa-money-bill-alt'>-${price} </span></button></a>

        <hr id="lineone">
        <img id="logo" src="Home/DAWlogo.png"/>

        

        <div class="box" style="width: 500px; height: 250px; position: absolute; left: 190px;">
            <div class="heading">
                Register Account
            </div>
            <h1 style="margin: 20px; font-family:serif;">New Customer</h1>
            <h4 style="margin: 20px;">Register Account</h4>
            <div style="margin: 20px; margin-bottom: 5px;">
                By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.
            </div>
            <a href="Register.jsp"> <button style="padding: 5px; color: white; margin-left:  20px; border:1px solid; border-radius: 20px; background-color: darkblue;">Register</button>
                </a>
        </div>
        <form action="Login" method="post">
        <div class="box" style="width: 500px; height: 300px; position: absolute; left: 750px;">
            
            <div class="heading">
                Login
            </div>
            
            <h5 style="margin: 20px;">I am a returning customer</h5>
            <div style="margin-top: 20px; margin-left: 20px;">Email Adrress</div>
            
            <input style=" margin: 10px;margin-left:  20px;margin-bottom: 0px; width:90%; height: 30px;" type="text" name="email" placeholder="E-mail"/>
            <div style="margin-top: 20px; margin-left: 20px;">Password</div>
            <input style=" margin: 10px;margin-left:  20px; width:90%; height: 30px;" type="password" name="passl" placeholder="Password"/>
        <input type="submit" value="Login" style="padding: 5px; padding-right: 10px; padding-left: 10px; color: white; margin-left:  20px; border:1px solid; border-radius: 20px; background-color: darkblue;">
        
        </div>
            </form>
        
        
    </body>
</html>
