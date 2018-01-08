<%-- 
    Document   : confirmBuilder
    Created on : 18 Aug, 2017, 12:11:33 AM
    Author     : mzv
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.ConnectionSetup"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/page.css">
        <title>Confirm Builder</title>
    </head>
    <body>
        <%@include file="userHeader.jsp" %>
        <%
            String regid = (String) session.getAttribute("regid");
            String costReqId = request.getParameter("costReqId");
            String planname = request.getParameter("planname");
            String cost = request.getParameter("cost");
            String image =request.getParameter("image");
            String builderid = request.getParameter("builderid");
            String projectid = request.getParameter("projectid");

            ConnectionSetup con = new ConnectionSetup();
            String queryupdateproject = "UPDATE `BuildYourDreamHome`.`project` SET `builderId`='" + builderid + "', `name`='" + planname + "', `coast`='" + cost + "', `status`='builder selecter' WHERE `id`=" + projectid;
           
        %>

        <div class="container" align="center">
            <div align="center" style="border-style: outset;border-width: 25px;border-color: #baf1a9;background-color: lightgray">
                <h2><%="Plan Name:" + planname%></h2>
                <h2><b><%="Cost :" + cost%></b></h2>
                <div style="height: 550px ;width: 550px; background-image:url('../uploadedImages/<%= image%>');background-size: 100%;background-repeat: no-repeat"></div>
                <form action="paypal.jsp" method="post">
                    <input type="hidden" name="queryupdateproject" value="<%= queryupdateproject%>">   
                    <input type="hidden" name="cost" value="<%= cost%>">
                    <input type="submit" value="Pay cash" style="font-size: 30px;background-color: lightcoral">
                </form>
            </div>






        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>
