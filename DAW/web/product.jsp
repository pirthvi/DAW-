<%-- 
    Document   : productdet
    Created on : Feb 19, 2019, 10:48:52 AM
    Author     : PirthviSingh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="jquery-3.3.1.js"></script>
        <link rel="stylesheet" type="text/css" href="design.css">  
        <script type="text/javascript" src="myjava.js"></script>
        <script type="text/javascript" src="product.js"></script>
        <style>

            .box{
                height: 750px;
            }





            #pro{
                margin: 10px;
                border: 1px solid;
                padding: 60px;
                border-color: darkgreen;
                display: inline-block;

            }
            #options{
                position: absolute;
                top: 70px;
                left: 380px;
                font-size: 130%;
                color: grey;
            }
            #thad{
                background-color: darkgreen;
                color: white;
                padding: 10px;
                width: 50px;
                height: 25px

            }
            #qty{
                width:24px;
                height: 15px;

            }
            #ok{
                padding: 10px;
                width: 50px;
                height: 25px;
            }
            #cart{
                background-color: darkblue;
                font-size: 70%;
                border: 1px solid;
                border-color: darkblue;
                border-radius: 20px;
                padding-right:  10px;
                padding-left: 10px;
            }
            #col{
                background-color: rosybrown;
                margin: 10px;
                margin-top: 20px;
                border:1px solid;
                padding: 20px;
                border-radius: 120px;
                border-color: rosybrown;

            }
            #des{
                margin-left:  20px;
                margin-top:  50px;
                border: 1px solid;
                display: inline-block;
                padding: 15px;

                border-color: lightgray;
                border-bottom-color: white;
            }
            #desc{
                border: 1px solid;
                margin-left: 20px;
                padding: 20px;
                margin-right: 10px;
                border-color: lightgray;
                color:gray;
            }
            #footer{
                margin-top: 0px;
                width: 100%;
                background-color: darkgreen;
                height: 50px;
            }
            #cr{
                margin-left:  200px;
                padding-top:  90px;
                color: white;
            }
            #debit{
                margin-left: 800px;
                margin-top: 0px;
            }
            #about{
                margin-left: 200px;
                margin-top: 500px;
                margin-bottom: 0px;
                border:1px solid;
                width: 1020px;
                border-color: darkgreen;
                border-radius: 10px;
                height: 170px;
            }
            #info{
                position: relative;
                top: 30px;
                left: 220px;
            }
            #aboutus{
                position: relative;
                top: 40px;
                left: 220px
            }
            #privacy{
                position: relative;
                top: 50px;
                left: 220px
            }
            #shipping{
                position: relative;
                top: 60px;
                left: 220px
            }
            #myac{
                position: absolute;
                top: 1275px;
                left: 680px;
            }
            .size{
                background-color: darkgreen;
                color: white;
                padding: 5px;

            }
            .qty{
                padding: 0px;
                margin: 10px;
                background-color: darkgreen;
                color: white;
                padding-right: 10px;
                padding-left: 10px;
            }
            #s, #m, #l , #xl{
                color: white;
                padding: 10px;
            }
            #dec , #inc{
                padding: 5px;
            }
            #cart{
                color: white;
                padding: 5px;
            }
        </style>
        <script src="jquery-3.3.1.js"></script>
        <script>


        </script>
    </head>
    <body>
        <div  class="up"> 
            <div>

                <ul id="reg">
                    <li id="upp">Register</li>
                    <a href="login.jsp"><li id="upp">Login</li></a>
                </ul>


            </div></div>
        <div id="but">
            <a href="Home"><button id="home">HOME</button></a>
            <button id="men" onclick="gender('M')">MEN</button>
            <button id="women" onclick="gender('F')">WOMEN</button>

            <button id="todd" onclick="gender('K')">INFANTS|TODDLERS</button>
            <button id="cntct">CONTACT US</button></div>
        <span>
            <input id="search" type="search" placeholder="Search the entire store...."/></span>
        <button id="sb">Search</button>
        <a href="Cart.jsp"> <button id="sb">${total} item(s)-${price}</button></a>

        <hr id="lineone">
        <img id="logo" src="Home/DAWlogo.png"/>

        <div id="cat">
            <span id="catg">Categories</span>
            <table>
                <tr><th onclick="gender('${gender}')"> &#10161; All Categories<hr/></th></tr>
                <tr><th onclick="solo('Tshirts')"> &#10161; T-Shirts<hr/></th></tr>

                <tr><th onclick="solo('Polo')"> &#10161; Polos<hr/></th></tr>


                <tr><th onclick="solo('Woven')"> &#10161; Woven Shirts<hr/></th></tr>
                <tr><th onclick="solo('Outwear')"> &#10161; Outerwear<hr/></th></tr>
                <tr><th onclick="solo('Pants')"> &#10161; Pants<hr/></th></tr>
                <tr><th onclick="solo('Shorts')"> &#10161; Shorts<hr/></th></tr>
                <tr><th onclick="solo('Kntitlayering')"> &#10161;  Knits and Layering<hr/></th></tr>
                <tr><th onclick="solo('Headwear')"> &#10161; Headwear<hr/></th></tr>
                <tr><th onclick="solo('Bags')">  &#10161; Bags and Accessories<hr/></th></tr>
            </table>
        </div>

        <div class="box">

            <span id="feat">Featered Products</span>
            <div>
                <img id='pro' src="${solo.manfImage}"></div>
            <div id='options'>
                Brand:${solo.brands}
                <div>
                    Prdouct Code:${solo.model}
                </div>
                <br/>
                <h3 style="color:black;">Available Options</h3>
                <br>
                Colors:<select style="padding:5px; border: 1px solid; border-radius: 5px;">
                    <option>Colors</option>
                </select>
                <div style="margin:10px;">
                    <button id="s" class="size">S</button>
                    <button id="m" class="size">M</button>
                    <button id="l" class="size">L</button>
                    <button id="xl" class="size">XL</button>
                </div>
                <div>
                    Quantity: <span style="color:black;"><button id="dec" class="qty">-</button><span id="qt">1</span><button id="inc" class="qty">+</button></span>
                </div>



                <div>
                    <button id='cart' onclick="sendProduct('${solo.model}')">Add to Cart</button>
                    <a href="Cart.jsp"> <button id='cart'>View Cart & Checkout</button></a>
                </div>


            </div>
            <div><h4 style="margin:5px;">Colors</h4></div>
            <div style="color:grey; margin: 10px; margin-bottom: 30px;">*Product color displayed may vary from the actual<br> product color due to your monitor collaborations</div>
            <div>
                <span id='col'></span>
                <span id='col'></span>
                <span id='col'></span>
                <span id='col'></span>
            </div>
            <div id="des">
                Description
            </div>
            <div id="desc">
                this is dummy text the text will come soon u will see there
                this is dummy text the text will come soon u will see there
                this is dummy text the text will come soon u will see there
                this is dummy text the text will come soon u will see there
            </div>
        </div>
        <div id="manf">
            <span id='mcat'> Manufacturer</span>
            <select  id="sctmanf" style="" onchange="brand(this.value)">  
                <option value=>Select Manufacturer</option>  
                <option value="GulAhmed">GulAhmed</option>  
                <option value="Sana Safinaz">SanaSafinaz</option>  
                <option value="Warda">Warda</option>  
                <option value="Alkaram">Alkaram</option> 
                <option value="Levis">Levis</option> 
                <option value="Khaadi">Khaadi</option>
                <option value="Ego">Ego</option>
                <option value="Bareeze">Bareeze</option>
                <option value="HSY Studio">HSY Studio</option>
                <option value="ChenOne">ChenOne</option>
                <option value="Addidas"> Addidas</option>
                <option value="Nike">Nike</option>
                <option value="Vincci">Vincci</option>
                <option value="Puma">Puma</option>
                <option value="Armani">Armani</option>
            </select> 

        </div>
        <div id='about'>
            <h3 id='info'>Information</h3>
            <div id='aboutus'>About us</div>
            <div id='privacy'>Privacy Poicy</div>
            <div id='shipping'>Shipping and Return Policy</div>

            <h3 id='myac'>My Account</h3>


        </div>
        <div id="footer">
            <span id='cr'>  Copy Right Pirthvi Singh</span>
            <img id='debit' src="payment.png"/>
        </div>

    </body>
</body>
</html>
