




function nextp(n, cat) {

//alert(n+"heee "+cat);
    $.ajax({
        type: "GET",
        url: "NewProducts?f=" + n,
        headers: {
            Accept: "application/json; charset=utf-8",
            "Content-Type": "application/json; charset=utf-8"
        },
        success: function (result) {

            window.location.href = "Products.jsp";



        }
    });
}




function detail(m) {

    req = new XMLHttpRequest();
    req.open('GET', 'Prodetail?p=' + m, true);
    req.send();
    req.onreadystatechange = function ()
    {
        if (req.readyState == 4) {

            window.location.href = "product.jsp";
        }
    }
}
function solo(k) {
    catg = k;
    req = new XMLHttpRequest();
    req.open('GET', 'Alone?c=' + k, true);
    req.send();
    req.onreadystatechange = function ()
    {
        if (req.readyState == 4) {
            window.location.href = "Products.jsp";
        }
    }
}
function gender(g) {
    gend = g;
    req = new XMLHttpRequest();
    req.open('GET', 'Gender?g=' + g, true);
    req.send();
    req.onreadystatechange = function ()
    {
        if (req.readyState == 4) {
            window.location.href = "Products.jsp";

        }
    }

}
function brand(brnd) {

    req = new XMLHttpRequest();
    req.open('GET', 'Brand?g=' + brnd, true);
    req.send();
    req.onreadystatechange = function ()
    {
        if (req.readyState == 4) {

            window.location.href = "Products.jsp";
        }
    }

}
ok = 1;
function hell() {
    ok++;
    alert(ok + " the hgjg");

    j = "<li i onclick=" + "" + "hell()" + ">></li>";
    l = "<li id=" + "nex" + "><</li>";
    k = "";
    for (var i=10; i< 20; i++) {
       // var kk=ok*10;
        alert(ok);

        $("#next").html(k + "<li  onclick=" + "nextp(" + i + "," +"'"+"${c}"+"'"+")>" + i + "</li>");
        k = $("#next").html();
        alert(k);

    }

    $("#next").html(k + j);

}



