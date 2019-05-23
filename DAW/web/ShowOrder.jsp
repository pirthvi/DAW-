<%-- 
    Document   : ShowOrder
    Created on : Apr 6, 2019, 6:49:21 PM
    Author     : PirthviSingh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <c:forEach var="j" items="${orders}">
                <div>
                    ${j.PId}  ${j.id} ${j.userId}
                </div>
            </c:forEach>
        </h1>
    </body>
</html>
