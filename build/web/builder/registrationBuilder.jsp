<%-- 
    Document   : registrationBuilder
    Created on : 2 Aug, 2017, 8:42:54 AM
    Author     : mzv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complete Registration</title>
    </head>
    <body>
        <%@include file="builderHeader.jsp" %>
        <div>
            <form action="../servletRegistrationBuilder" method="POST">
                <table>
                    <tr>
                        <td>Owner</td>
                        <td><input type="text" name="owner" placeholder="name of owner"</td>
                    </tr>
                    <tr>
                        <td>Website</td>
                        <td><input type="text" name="website" placeholder="website address"</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="register"</td>
                    </tr>
                    
                </table>
            </form>
        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>
