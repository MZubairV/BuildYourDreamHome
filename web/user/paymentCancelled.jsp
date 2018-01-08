<%-- 
    Document   : userHome
    Created on : 2 Sep, 2017, 11:31:47 AM
    Author     : mzv
--%>

<%@page import="db.ConnectionSetup"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/page.css">
        <title>User Home</title>
    </head>
    <body>
        <%@include file="userHeader.jsp" %>
        <div align="center" class="container">
            <h1 style="color: red;background-color: black">Payment cancelled!</h1>
        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>
