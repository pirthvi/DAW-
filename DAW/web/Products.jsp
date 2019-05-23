<%-- 
    Document   : Products
    Created on : Feb 25, 2019, 7:42:29 PM
    Author     : PirthviSingh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
        <script src="jquery-3.3.1.js"></script>
        <link rel="stylesheet" type="text/css" href="design.css"> 
        <link rel="stylesheet" type="text/css" href="Products.css"> 
        <script type="text/javascript" src="myjava.js"></script>  

        <style>
            #search{
                width: 200px;
                height: 25px;
                margin-left: 600px;
                margin-top: 80px;
                border: 1px solid;
                border-color: darkblue;
            }
            #sb{
                background-color: darkblue;
                color: white;
                padding: 5px 10px;
            }

            #lineone{
                border: solid 2px darkblue;
                width: 920px;
                position: absolute;
                top: 110px;
                left: 10px;

            }  
        </style>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
        <script>

            $(document).ready(function () {
                $("body").click(function () {
                    $("#se").html(" ");
                    $("#se").css("display", "none");

                });
                $("#sortp").click(function () {

                    var min = document.getElementById("min").value;
                    var max = document.getElementById("max").value;
                    var sd = min.length + "" + min + "" + max + "" + max.length;
                    if (min <= max) {
                        req = new XMLHttpRequest();
                        req.open('GET', 'SortByPrice?price=' + sd, true);
                        req.send();
                        req.onreadystatechange = function ()
                        {
                            if (req.readyState == 4) {

                                window.location.href = "Products.jsp";
                            }
                        }
                    } else {
                        alert("Please insert Correct Price");
                    }


                });
                $("#register").click(function () {
                    window.location.href = "Register.jsp";
                });


            });
            function search() {
                var k = document.getElementById("search").value;
                // alert(k);

                $("#se").css("display", "block");

                $.ajax({
                    type: "GET",
                    url: "Search?s=" + k,
                    headers: {
                        Accept: "application/json; charset=utf-8",
                        "Content-Type": "application/json; charset=utf-8"
                    },
                    success: function (result) {
                        var kkk = "";
                        var p = $.parseJSON(result);
                        $("#se").html("");
                        for (var v = 0; v < p.length; v++) {
                            var pp = $("#se").html();
                            p[v].name = p[v].name.toLowerCase();
                            var kLength = p[v].name.indexOf(k);
                            var first = p[v].name.slice(0, kLength);
                            var last = p[v].name.slice(kLength + k.length, p[v].name.length);


                            $("#se").html(pp + "<div id='ok' onclick=searchpro('" + v + "')> <img id='img' src= '" + p[v].manfImage + " ' > " + first + "<mark>" + k + "</mark>" + last + "</div> ");
                            //alert(first);
                            //alert(k);
                            //alert(last);

                        }

                    }


                });



                $("#se").css("color", "darblue");

            }
            function out() {
                // $("#se").html("");
            }
            function searchpro(j) {
                var req = new XMLHttpRequest();
                req.open("GET", "SearchDetail?p=" + j, true);
                req.send();
                req.onreadystatechange = function () {
                    if (req.readyState == 4) {
                        window.location.href = "product.jsp";
                    }
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
            <hr id="lineone">
        <span>
            <input id="search" type="search" placeholder="Search the entire store...." style=" width: 420px; " onkeyup="search()" onmouseout="out()"/></span>

        <button id="sb" class='fas fa-search-location' style="margin-left:0px;">Search</button>
        <a href="Cart.jsp"> <button id="sb" class='fas fa-shopping-cart' > ${total} item(s) <span class='far fa-money-bill-alt'>-${price} </span></button></a>

        
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
            <span id="se"  >

            </span>
            <div class="heading">
                Products(s) for ${type}  


            </div>

            <c:forEach var="p" items="${pro}">  

                <div class="content" onclick="detail('${p.model}')">

                    <div class="name" onclick="detail('${p.model}')" > ${p.name}  </div>
                    <div class="image" onclick="detail('${p.model}')" ><img src="${p.manfImage}" width="100%" height="100%"></div>
                    <div class="price"> Rs :${p.price}</div>
                    <div class="tags"><img src="${p.brandimg}" width="100%" height="100%"></div>
                    <div class="model"> Model : ${p.model}</div>
                    <div class="info"><button id="butg" onclick="detail('${p.model}')">More Info</button></div>
                </div>
            </c:forEach> 




            <ul id="next">
                <li id="nex"><</li>
                <li id="nx" onclick="nextp('1', '${c}')">1</li>
                <li id="nx" onclick="nextp('2', '${c}')">2</li>
                <li id="nx"  onclick="nextp('3', '${c}')">3</li>
                <li id="nx" onclick="nextp('4', '${c}')">4</li>
                <li id="nx" onclick="nextp('5', '${c}')">5</li>
                <li id="nx" onclick="nextp('6', '${c}')">6</li>
                <li id="nx" onclick="nextp('7', '${c}')">7</li>
                <li id="nx" onclick="nextp('8', '${c}')">8</li>
                <li id="nx" onclick="nextp('9', '${c}')">9</li>

                <li i onclick="hell()">></li>

            </ul>




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
                <option value="HugoBoss">HugoBoss</option>
                <option value="HSY Studio">HSY Studio</option>
                <option value="ChenOne">ChenOne</option>
                <option value="Addidas"> Addidas</option>
                <option value="Nike">Nike</option>
                <option value="Vincci">Vincci</option>
                <option value="Puma">Puma</option>
                <option value="Armani">Armani</option>
            </select> 

        </div>
        <div id="minmax">
            <input class="mn" id="min"  type="text" placeholder="Min Price"/>
            <input class="mn" id="max" type="text" placeholder="Max Price"/>
            <button id="sortp"  style="width:20px; height: 30px; background-color: darkblue; color: white;">&#10161;</button>
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
</html>
