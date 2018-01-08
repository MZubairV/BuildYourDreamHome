<%-- 
    Document   : addProjectManager
    Created on : 6 Aug, 2017, 3:48:42 PM
    Author     : mzv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/page.css">
        <style>
            input[type='text'] { font-size: 24px; }
            .container table tr td {font-size: 24px;}
        </style>
        <title>Add Project Manager</title>
    </head>
    <body>
        <%@include file="builderHeader.jsp" %>
        <div class="container" align="center">                       
            <form action="../servletRegistration" method="post">
                <table>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="name" placeholder="Enter name of User or Architect or Builder"></td>
                    </tr>
                    <tr>
                        <td>Mobile</td>
                        <td><input type="text" name="mobile" placeholder="Enter your mobile number"></td>
                    </tr>
                    <tr>
                        <td>Country</td>
                        <td><input type="text" name="country"></td>
                    </tr>
                    <tr>

                        <td>State</td>
                        <td><input type="text" name="state"></td>
                    </tr>
                    <tr>

                        <td>Districr</td>
                        <td><input type="text" name="district"></td>
                    </tr>
                    <tr>
                        <td>Place</td>
                        <td><input type="text" name="place"></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="text" name="pwd1"></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="text" name="pwd2"></td>
                        <td><p id="pwd2"></td>
                    </tr>
                    <input type="hidden" name="roll" value="4"
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Add ProjectManager" style="font-size: 24px;"></td>
                    </tr>
                </table>
            </form>
        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>
