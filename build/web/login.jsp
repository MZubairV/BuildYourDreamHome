<%-- 
    Document   : login
    Created on : 2 Aug, 2017, 8:24:24 AM
    Author     : mzv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/page.css">
        <script type="text/javascript" src="js/validateLogin.js"></script>
        <title>Login</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
        <div align="center">
            <form name="frmLogin" action="servletLogin" method="POST" onsubmit="return validateLogin()">
                <table  cellpadding="5" >
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" placeholder="Enter your email address" size="35" style="font-size: 25px"</td>
                        <td><span id="emailloc"></span></td></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pwd" placeholder="Enter password" size="35" style="font-size: 25px" </td>
                        <td><span id="pwdloc"></span></td></td>

                    </tr>
                    <tr>
                        <td></td>
                        <td align="center"><input type="submit" value="Login" style="font-size: 25px"</td>
                    </tr>
                </table>
            </form>
        </div>
        </div>
        <%@include file="footer.jsp" %>
</html>
