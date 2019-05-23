           s="0";
          
           
           $(document).ready(function () {
                $("#s").click(function () {
                    $("#s").css("background-color", "orange");
                    $("#l").css("background-color", "darkgreen");
                    $("#m").css("background-color", "darkgreen");
                    $("#xl").css("background-color", "darkgreen");
                    s="1";
                });
                $("#l").click(function () {
                    $("#l").css("background-color", "orange");
                    $("#s").css("background-color", "darkgreen");
                    $("#m").css("background-color", "darkgreen");
                    $("#xl").css("background-color", "darkgreen");
                    s="3";
                });
                $("#m").click(function () {
                    $("#m").css("background-color", "orange");

                    $("#s").css("background-color", "darkgreen");
                    $("#l").css("background-color", "darkgreen");
                    $("#xl").css("background-color", "darkgreen");
                    s="2";
                });
                $("#xl").click(function () {
                    $("#xl").css("background-color", "orange");


                    $("#s").css("background-color", "darkgreen");
                    $("#l").css("background-color", "darkgreen");
                    $("#m").css("background-color", "darkgreen");
                    s="4";
                });
                  $("#inc").click(function () {
                     j = $("#qt").html();
                     n = new Number(j);
                    n = n + 1;
                    $("#qt").html(n);
                   
                });
                $("#dec").click(function () {
                     j = $("#qt").html();

                     n = new Number(j);
                    if (n > 0) {
                        n = n - 1;
                        $("#qt").html(n);
                    }

                });

               });
  
function sendProduct(det){
    
    j = $("#qt").html();
   
     req = new XMLHttpRequest();
    req.open('GET', 'AddToCart?p=' + s+j, true);
    req.send();
     req.onreadystatechange = function ()
    {
        if (req.readyState == 4) {
          
            window.location.href = "product.jsp";
        }
    }
    
   }