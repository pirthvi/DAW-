<%-- 
    Document   : Register
    Created on : Mar 14, 2019, 11:13:32 AM
    Author     : PirthviSingh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <script src="jquery-3.3.1.js"></script>
        <link rel="stylesheet" type="text/css" href="design.css">  
        <script type="text/javascript" src="myjava.js"></script>  
        
        <script>

            function register() {

                var fname = document.getElementById("fname").value;
                var lname = document.getElementById("lname").value;
                var mob = document.getElementById("mob").value;
                var email = document.getElementById("email").value;
                var add1 = document.getElementById("add1").value;
                var add2 = document.getElementById("add2").value;
                var pcode = document.getElementById("pcode").value;
                var province = document.getElementById("province").value;
                var country = document.getElementById("country").value;
                var password = document.getElementById("pass1").value;
                var password2 = document.getElementById("pass2").value;
                var city = document.getElementById("city").value;
                if (password === password2) {
                    var url = "Register?fname=" + fname + "&lname=" + lname + "&mob=" + mob + "&email=" + email + "&add1=" + add1 + "&add2=" + add2 + "&password=" + password + "&pcode=" + pcode + "&province=" + province + "&country=" + country + "&city=" + city;
                    var req = new XMLHttpRequest();
                    req.open("GET", url, true);
                    req.send();
                } else {
                    $("#winfo").text("Password not Matched");
                }
            }
            function verfiyMob() {
                var k = document.getElementById("mob").value;

                if (k.length >= 11) {

                    var req = new XMLHttpRequest();
                    req.open("GET", "Register?mob=" + k, true);
                    req.send();
                    req.onreadystatechange = function ()
                    {
                        if (req.readyState == 4) {

                            $("#verify").text(req.responseText);

                        }
                    }

                }
            }
            function password() {

                var pass = document.getElementById("pass1").value;

                var len = pass.length;

                if (len <= 6) {

                    $("#pass").html("<span style='color:red; font-size:120%;' >Weak </span>");
                } else if ((len > 6) && (len <= 10)) {
                    $("#pass").html("<span style='color:limegreen; font-size:120%;' >Medium </span>");
                } else if ((len > 10) && (len <= 15)) {
                    $("#pass").html("<span style='color:darkgreen; font-size:120%;' >Strong </span>");
                } else {
                    $("#pass").html("<span style='color:blue; font-size:120%;' >Very Strong </span>");
                }
            }

        </script>
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

        <div id="cat">
            <span id="catg">Categories</span>
            <table>
                <tr><th style="font-family: Century; text-decoration: none;" class='fas fa-angle-double-right' onclick="gender('${gender}')">  All Categories<hr/></th></tr>
                <tr><th onclick="solo('Tshirts')"> &#10095; T-Shirts<hr/></th></tr>
                <tr><th onclick="solo('Fleece')"> &#10095; Fleece<hr/></th></tr>
                <tr><th onclick="solo('Polo')"> &#10095; Polos<hr/></th></tr>
                <tr><th onclick="solo('Woven')"> &#10095; Woven Shirts<hr/></th></tr>
                <tr><th onclick="solo('Outwear')"> &#10095; Outerwear<hr/></th></tr>
                <tr><th onclick="solo('Pants')"> &#10095; Pants<hr/></th></tr>
                <tr><th onclick="solo('Shorts')"> &#10095; Shorts<hr/></th></tr>
                <tr><th onclick="solo('Kntitlayering')"> &#10095;  Knits and Layering<hr/></th></tr>
                <tr><th onclick="solo('Headwear')"> &#10095; Headwear<hr/></th></tr>
                <tr><th onclick="solo('Bags')">  &#10095; Bags and Accessories<hr/></th></tr>
            </table>
        </div>

        <div class="box">
            <div class="heading">
                Register Account
            </div>
            <div style="margin: 10px; color: darkslategray; font-size: 100%;">
                If you already have an account with us, please <a style="text-decoration: none;" href="login.jsp">login</a> at the login page.
            </div>

            <div style="margin: 10px; font-size: 120%; color: black; margin-left: 20px;margin-top: 20px; margin-bottom: 0px;">
                Your Personal Details
            </div>
            <hr style="border: solid 1px; border-color: darkslategray; width: 98%; margin-left: 10px;margin-top: 5px;">
            <div style="display: inline-block; margin: 10px; margin-left: 50px; margin-top: 20px;">
                <span style="margin-right: 30px;">  First Name:</span> <span style="margin-left: 10px;"><input style="width: 470px; height: 30px;" type="text" placeholder="First Name" id="fname"  /></span>
            </div>
            <div style="display: inline-block; margin: 10px; margin-left: 50px; margin-top: 20px;">
                <span style="margin-right: 30px;">  Last Name:</span> <span style="margin-left: 10px;"><input style="width: 470px; height: 30px;" type="text" placeholder="Last Name" id="lname" /></span>
            </div>
            <div style="display: inline-block; margin: 10px; margin-left: 50px; margin-top: 20px;">
                <span style="margin-right: 30px;">  Mobile No#:</span> <span><input style="width: 470px; height: 30px;" type="text" placeholder="Mobile No" id="mob" onkeyup="verfiyMob()" /></span>
            </div>
            <div style="display: inline-block; margin: 10px; margin-left: 50px; margin-top: 20px;">
                <span style="margin-right: 30px;">Your Email</span> <span style="margin-left: 10px;"><input style="width: 470px; height: 30px;" type="text" placeholder="Email Address" id="email" /></span>
            </div>



            <%--Addressss--%>

            <div style="margin: 10px; font-size: 120%; color: black; margin-left: 20px;margin-top: 20px; margin-bottom: 0px;">
                Your Address
            </div>
            <hr style="border: solid 1px; border-color: darkslategray; width: 98%; margin-left: 10px;margin-top: 5px;">
            <div style="display: inline-block; margin: 10px; margin-left: 50px; margin-top: 20px;">
                <span style="margin-right: 30px;">  Address 1:</span> <span style="margin-left: 10px;"><input style="width: 470px; height: 30px;" type="text" placeholder="Address 1" id="add1" /></span>
            </div>
            <div style="display: inline-block; margin: 10px; margin-left: 50px; margin-top: 20px;">
                <span style="margin-right: 30px;">  Address 2:</span> <span style="margin-left: 10px;"><input style="width: 470px; height: 30px;" type="text" placeholder="Address 2" id="add2"  /></span>
            </div>
            <div style="display: inline-block; margin: 10px; margin-left: 50px; margin-top: 20px;">
                <span style="margin-right: 30px;"> City Name:</span> <span><input style="width: 470px; height: 30px;" type="text" placeholder="Your City" id="city" /></span>
            </div>
            <div style="display: inline-block; margin: 10px; margin-left: 50px; margin-top: 20px;">
                <span style="margin-right: 30px;">Post Code</span> <span style="margin-left: 10px;"><input style="width: 470px; height: 30px;" type="text" placeholder="Postal Code" id="pcode" /></span>
            </div>
            <div style="display: inline-block; margin: 10px; margin-left: 50px; margin-top: 20px;">
                <span style="margin-right: 30px;">Country  : </span> <span style="margin-left: 10px;">
                    <select style="width: 470px; height: 30px;" id="country"   />
                    <option>Select Country</option> 
                    <option>Pakistan</option>  
                    <option>UAE</option>  
                    <option>India</option>  
                    <option>Bangladesh</option>
                    <option>SriLanka</option>
                    <option>Afghanistan</option>

                    </select>
                </span>
            </div>

            <div style="display: inline-block; margin: 10px; margin-left: 50px; margin-top: 20px;">
                <span style="margin-right: 30px;">Province: </span> <span style="margin-left: 10px;">
                    <select style="width: 470px; height: 30px;" id="province"  />
                    <option>Select Province</option> 
                    <option>Sindh</option>  
                    <option>Punjab</option>  
                    <option>Khayber Pakthunkha</option>  
                    <option>Balochistan</option>

                    </select></span>
            </div>



            <div style="margin: 10px; font-size: 120%; color: black; margin-left: 20px;margin-top: 20px; margin-bottom: 0px;">
                Your Password
            </div>
            <hr style="border: solid 1px; border-color: darkslategray; width: 98%; margin-left: 10px;margin-top: 5px;">
            <div style="display: inline-block; margin: 10px; margin-left: 50px; margin-top: 20px;">
                <span style="margin-right: 30px;">  Password:</span> <span style="margin-left: 10px;"><input style="width: 470px; height: 30px;" type="password" placeholder="Password" id="pass1" onkeyup="password()" /></span>
            </div>
            <div style="display: inline-block; margin: 10px; margin-left: 50px; margin-top: 20px;">
                <span style="margin-right: 30px; width: 40px; word-wrap: break-word;">Password:</span> <span style="margin-left: 10px;"><input style="width: 470px; height: 30px;" type="Password" placeholder="Confrim Password " id="pass2" /></span>
            </div>

            <div style="margin:10px; margin-left: 700px; ">
                <input style="padding: 5px; border:1px solid; border-radius: 5px; color: white; background-color: darkblue;" type="submit" value="Register" onclick="register()"/></div>
        </div>
        <div style="position: absolute; top: 1150px; left: 980px; color: red;">
            <span id="winfo">

            </span>
        </div>
        <div style="position: absolute; top: 485px; left: 980px; color: red;">
            <span id="verify">

            </span>
        </div>
        <div id="pass" style="position: absolute; top: 1090px; left: 980px; color: red;">
            <span>

            </span>
        </div>
            

    </body>
</html>
