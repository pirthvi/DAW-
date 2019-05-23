<%-- 
    Document   : Home
    Created on : Feb 21, 2019, 11:28:39 PM
    Author     : PirthviSingh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
           
        </style>
        <script src="jquery-3.3.1.js" ></script>
        <script src="hellog.js"></script>
        <script type="text/javascript" src="myjava.js"></script> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DAW</title>
        <link rel="stylesheet" type="text/css" href="design.css"> 
        <link rel="stylesheet" type="text/css" href="Home.css"> 
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
            <a href="newjsp.jsp"><button id="home">HOME</button></a>
            <button id="men" onclick="gender('M')">MEN</button>
            <button id="women" onclick="gender('F')">WOMEN</button>

            <button id="todd" onclick="gender('K')">INFANTS|TODDLERS</button>
            <button id="cntct">CONTACT US</button></div>


        <span>
            <input id="search" type="search" placeholder="Search the entire store...."/></span>
        <button id="sb">Search</button>
        <button id="sb">${total} item(s)-$0.00</button>

        <hr id="lineone">
        <div id="pic">


        </div>
        <img id="logo" src="Home/DAWlogo.png"/>
        <img id='slide' src='Home/team-952x220.jpg'/>
        <div id="cat">
            <span id="catg">Categories</span>
            <table>
                <tr><th onclick="gender(' ')"> &#10095; All Categories<hr/></th></tr>
                <tr><th onclick="solo('Tshirts')">T-Shirts<hr/></th></tr>
                <tr><th onclick="solo('Polo')">Polos<hr/></th></tr>
                <tr><th onclick="solo('Fleece')">Fleece<hr/></th></tr>
                <tr><th onclick="solo('Woven')"> Woven Shirts<hr/></th></tr>
                <tr><th onclick="solo('Outwear')">Outerwear<hr/></th></tr>
                <tr><th onclick="solo('Pants')">Pants<hr/></th></tr>
                <tr><th onclick="solo('Shorts')">Shorts<hr/></th></tr>
                <tr><th onclick="solo('Kntitlayering')"> Knits and Layering<hr/></th></tr>
                <tr><th onclick="solo('Headwear')">Headwear<hr/></th></tr>
                <tr><th onclick="solo('Bags')"> Bags and Accessories<hr/></th></tr>
            </table>
        </div>

        <span id="lat">

            <span id="feat">Featered Products</span>
            <span class="one">${p[0].name} </span>
            <span class="two"> ${p[1].name} </span>
            <span class="three">${p[2].name} </span>
            <span class="four">${p[3].name}</span>






            <img id="imgs" src='${p[1].manfImage}'/>
            <img id="imgs" src='${p[2].manfImage}'/>
            <img id="imgs" src='${p[3].manfImage}'/>
            <img id="imgs" src='${p[4].manfImage}'/>

            <div class="onep">
                <div class="price">Price:$4.94</div>
                <div class="cimg"><img id="brand" src="${images[0]}"/></div>
                <div>Model #:jffd</div>
                <div>
                    <input class="pbut" type="submit" value="More info" onclick="detail()" ></div>
            </div>
            <div class="twop">
                <div class="price">Price: $29.56</div>
                <div class="cimg"><img id="brand" src="${images[1]}"/></div>
                <div>Model #: 06420</div>
                <div>
                    <input class="pbut" type="submit" value="More info" onclick="detail()" ></div>
            </div>
            <div class="threep">
                <div class="price">Price: $29.56</div>
                <div class="cimg"><<img id="brand" src="${images[2]}"/></div>
                <div>Model #: 06420</div>
                <div>
                    <input class="pbut" type="submit" value="More info"  onclick="detail()"></div>
            </div>
            <div class="fourp">
                <div class="price">Price: $29.56</div>
                <div class="cimg"><img id="brand" src="${images[3]}"/></div>
                <div>Model #: 06420</div>
                <div>
                    <input class="pbut" type="submit" value="More info" onclick="detail()" ></div>
            </div>
        </span>
        <div id="manf">
            <span id='mcat'> Manufacturer</span>
            <select  id="sctmanf" style="">  
                <option value=>Select Manufacturer</option>  
                <option value="pakistan">Gul Ahmed</option>  
                <option value="africa">Sana Safinaz</option>  
                <option value="china">Warda</option>  
                <option value="other">Alkaram</option> 
                <option>Firdos Lawn</option>
                <option>Khadi</option>
                <option>Ego</option>
                <option>Bareeze</option>
                <option>HSY Studio</option>
                <option>ChenOne</option>
                <option>Addidas</option>
                <option>Nike</option>
                <option>Vincci</option>
                <option>Puma</option>
                <option>Armani</option>
            </select>  

        </div>


        <div id='bestsell'>
            <span id="feat">Bestsellers</span>
            <img id="imgs" src='${p[4].manfImage}'/>
            <img id="imgs" src='${p[5].manfImage}'/>
            <img id="imgs" src='${p[6].manfImage}'/>
            <img id="imgs" src='${p[7].manfImage}'/>



            <span class="one">05052BP - Ladie's Keepsake Vintage Jersey </span>
            <span class="two">06420 - Men's Industry Shirt </span>
            <span class="three">01919E - Ladies' Eco-Mock Twist Locker Room  </span>
            <span class="four">01936E1 - Ladies' Sleeveless Eco-Jersey  </span>

            <div class="onep">
                <div class="price">Price:$4.94</div>
                <div class="cimg"><img id="brand" src="${images[4]}"/></div>
                <div>Model #: 05052BP</div>
                <div>
                    <input class="pbut" type="submit" value="More info" onclick="detail()" ></div>
            </div>
            <div class="twop">
                <div class="price">Price: $29.56</div>
                <div class="cimg"><img id="brand" src="${images[5]}"/></div>
                <div>Model #: 06420</div>
                <div>
                    <input class="pbut" type="submit" value="More info" onclick="detail()" onclick="detail()" ></div>
            </div>
            <div class="threep">
                <div class="price">Price: $29.56</div>
                <div class="cimg"><img id="brand" src="${images[6]}"/></div>
                <div>Model #: 06420</div>
                <div>
                    <input class="pbut" type="submit" value="More info" onclick="detail()" ></div>
            </div>
            <div class="fourp">
                <div class="price">Price: $29.56</div>
                <div class="cimg"><img id="brand" src="${images[7]}"/></div>
                <div>Model #: 06420</div>
                <div>
                    <input class="pbut" type="submit" value="More info" onclick="detail()"></div>
            </div>
        </div>
        <img id='adone' src="Home/roundbg-watch.jpg"/>



        <div>
            <img id="adone" src="Home/image-left-1-168x217.jpg"/>
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
            <img id='debit' src="Home/payment.png"/>
        </div>

    </body>
</html>

