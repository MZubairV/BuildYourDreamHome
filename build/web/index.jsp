<%-- 
    Document   : index
    Created on : 2 Aug, 2017, 11:21:29 AM
    Author     : mzv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/page.css">
        <title>BuildYourDreamHome</title>
    </head>
    <body>
        <%  
            int isLogged = 0;
            session.setAttribute("isLogged", isLogged);
        %>
        <div>  
            <%@include file="header.jsp" %>
            <div class="container">
                <h2 align="center" style="color:black ; color: black">
                    <br><br>BuildYourDreamHome help the user to select a plans from various architects and choose a builder to build the home.
                    <br><br>In BuildYourDreamHome payment is done through online so user does not have any risk.
                    <br><br>User can analyze the expense of the construction of his home.
                    <br><br>The user can chat with the architect and builder so that he can convey his ideas properly over the time.
                </h2>
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
