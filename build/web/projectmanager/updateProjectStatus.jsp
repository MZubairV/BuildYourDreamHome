<%-- 
    Document   : addImages
    Created on : 14 Aug, 2017, 4:05:09 PM
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
        <title>Update Project Status</title>
    </head>
    <body>
        <%@include file="projectManagerHeader.jsp" %>
        <div class="container" align="center">
            <form action="../servletUpdateProjectStatus" method="post"  enctype="multipart/form-data">
                
                <table>
                    <tr>                        
                        <td>Description</td>
                        <td><input type="text" name="description"></td>
                    </tr>                                    
                    <tr>
                        <td>Upload image</td>
                        <td><input type="file" name="file" style="font-size: 24px;"></td>
                    </tr>
                    <td><input type="hidden" name="projectid" value="<%=request.getParameter("projectid")%>"></td>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Update Status" style="font-size: 24px;width: 300px"></td>
                    </tr>
                </table>
            </form>

        </div>
        <%@include file="../footer.jsp" %>
</html>
