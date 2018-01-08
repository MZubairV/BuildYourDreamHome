<%-- 
    Document   : addPlan
    Created on : 5 Aug, 2017, 11:16:31 PM
    Author     : mzv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/page.css">
        <style>
            input[type='text'] { font-size: 24px; }
            .container table tr td {font-size: 24px;}
        </style>
        <title>Add Plan</title>
    </head>
    <body>
        <%@include file="architectHeader.jsp" %>
        <div class="container" align="center">
            <form action="../servletAddPlan" method="post"  enctype="multipart/form-data">
                <table>
                    <tr>                        
                        <td>Name of Plan</td>
                        <td><input type="text" name="name"></td>
                    </tr>
                    <tr>   
                        <td>Type of Plan</td>
                        <td><input type="text" name="type"></td>
                    </tr>
                    <tr>   
                        <td>Area</td>
                        <td><input type="text" name="area"></td>
                    </tr>
                    <tr>   
                        <td>No of Bedrooms</td>
                        <td><input type="text" name="bedrooms"></td>
                    </tr>
                    <tr>   
                        <td>No of Bathrooms</td>
                        <td><input type="text" name="bathrooms"></td>
                    </tr>
                    <tr>   
                        <td>No of Floors</td>
                        <td><input type="text" name="noFloor"></td>
                    </tr>                    
                    <tr>
                        <td>Upload plan</td>
                        <td><input type="file" name="file" style="font-size: 24px;width: 400px"></td>
                    </tr>
                    <tr align="center">
                        <td colspan="2"><input type="submit" value="Add Plan" style="font-size: 24px;width: 300px"></td>
                    </tr>
                </table>
            </form>

        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>
