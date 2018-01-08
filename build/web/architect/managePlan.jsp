<%-- 
    Document   : managePlan
    Created on : 5 Aug, 2017, 11:11:48 PM
    Author     : mzv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/page.css">
        <link rel="stylesheet" type="text/css" href="../css/menuLeft.css">
        <title>Manage Plan</title>
    </head>
    <body>
        <%@include file="architectHeader.jsp" %>
        <div class="container">
            <div id="menuLeft" style="height:65px;">
                <ul>
                    <li><a href="addPlan.jsp"><h3>Add Plan</h3></a></li>
                    <li><a href="updatePlan.jsp"><h3>Update Plan</h3></a></li>
                </ul>
            </div>
        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>
