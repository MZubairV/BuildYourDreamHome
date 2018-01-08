<%-- 
    Document   : registration
    Created on : 31 Jul, 2017, 12:04:20 PM
    Author     : mzv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/page.css">
        <title>Complete Registration</title>
    </head>
    <body>
        <%@include file="architectHeader.jsp" %>
        <div class="container">
            <form action="../servletRegistrationArchitect" method="post">
                <table>
                    <tr>                        
                        <td>Qualification</td>
                        <td><input type="text" name="qualification"></td>
                    </tr>
                    <tr>                        
                        <td>Experiance</td>
                        <td><input type="text" name="experiance"></td>
                    </tr>                    
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Register"></td>
                    </tr>
                </table>
            </form>
        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>
