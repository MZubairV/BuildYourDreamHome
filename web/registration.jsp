<%-- 
    Document   : registration
    Created on : 30 Jul, 2017, 11:25:27 PM
    Author     : mzv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/page.css">
        <script type="text/javascript" src="js/registration.js"></script> 
        <style>
            input[type='text'] { font-size: 24px; }
            .container table tr td {font-size: 24px;}
        </style>
        <title>Registration</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container" align="center">                       
            <form name="frmRegistration" action="servletRegistration" method="post" onsubmit="return validate()">
                <table>
                    <caption><h2>Registration form</h2></caption>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="name" placeholder="Enter name of User or Architect or Builder">
                        <span id="nameloc"></span></td>
                    </tr>
                    <tr>
                        <td>Mobile</td>
                        <td><input type="text" name="mobile" placeholder="Enter your mobile number">
                        <span id="mobloc"></span></td>
                    </tr>
                    <tr>
                        <td>Country</td>
                        <td><input type="text" name="country">
                        <span id="countryloc"></span></td>
                    </tr>
                    <tr>
                        <td>State</td>
                        <td><input type="text" name="state">
                        <span id="stateloc"></span></td>
                    </tr>
                    <tr>
                        <td>Districr</td>
                        <td><input type="text" name="district">
                        <span id="districtloc"></span></td>
                    </tr>
                    <tr>
                        <td>Place</td>
                        <td><input type="text" name="place">
                        <span id="placeloc"></span></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email">
                        <span id="emailloc"></span></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="text" name="pwd1"></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="text" name="pwd2">
                        <span id="pwdloc"></span></td>
                    </tr>
                    <tr>
                        <td>roll</td>
                        <td>
                        <select name="roll" style="font-size: 24px;width: 300px">
                                <option value="1">User</option>
                                <option value="2">Architect</option>
                                <option value="3">Builder</option>
                        </select>
                        </td>
                    </tr>
                    <tr><td> &nbsp; </td></tr>
                    <tr align="center" >
                        <td colspan="2"><input type="submit" value="Register" style="font-size: 24px;width: 200px;background-color: blue;color: black"></td>
                    </tr>
                </table>
            </form>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
