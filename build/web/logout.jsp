<%-- 
    Document   : logout
    Created on : 5 Aug, 2017, 10:39:05 PM
    Author     : mzv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%session.invalidate();
         response.sendRedirect("index.jsp");
        %>
    </body>
</html>
