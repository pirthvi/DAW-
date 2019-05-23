<%-- 
    Document   : Cart
    Created on : Feb 28, 2019, 6:01:35 PM
    Author     : PirthviSingh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cart</title>
        <script src="jquery-3.3.1.js"></script>
        <link rel="stylesheet" type="text/css" href="design.css">  
        <script type="text/javascript" src="myjava.js"></script>
        <script type="text/javascript" src="product.js"></script>
        <style>
     
            
            .box{
   
    border-radius:20px;
    height:1300px;
    width:820px;
    border:1px solid blue;
    overflow:hidden;
    position: absolute;
    top: 210px;
    left: 330px;
    background: white;
    overflow: scroll;
}
        </style>

    </head>
    <body>
        <div  class="up"> 
            <div>

                <ul id="reg">
                    <li id="upp">Register</li>
                    <li id="upp">Login</li>
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
        <button id="sb"> ${total} item(s) <span class='far fa-money-bill-alt'>-${price} </span></button>

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
                     <c:forEach var="k" items="${cart}">  
          <div style="float: right;margin-right: 350px; margin-top: 50px;">${k.name}
              <div >
                  Size of products
              </div>
              <div>
                  Price: ${k.price}
              </div>    
          </div> 
              
          <div style="  margin-left: 0px;"> <img id="prod" src="${k.manfImage}" ></div>
          
          
                        
            
 </c:forEach> 
          <hr style="border: 1px solid; border-color: black; width: 100%">
          <div style="margin-left: 100px; margin-top: 10px;">
          <div>Total Price:${price}</div>
          
          </div>
          <div>
              <form action="BuyNow">
              <input type="submit" value="Buy Now"  style="background: darkblue; color: white; border-radius: 20px; padding: 5px; padding-right: 10px; padding-left: 10px; margin-left: 0px;">
          </form>
              </div>
          <br>
          <br>
          </div>
                 
  


    
</body>
</html>
