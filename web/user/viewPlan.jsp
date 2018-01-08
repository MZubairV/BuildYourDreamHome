<%-- 
    Document   : viewPlan
    Created on : 13 Aug, 2017, 11:42:14 PM
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
        <title>View Plans</title>
    </head>
    <body>
        <%@include file="userHeader.jsp" %>
        <%
            ConnectionSetup con = new ConnectionSetup();
            String query = "select * from plan;";
            ResultSet rs = con.selectData(query);
        %>
        <div class="container">
            <%
                while (rs.next()) {
            %>
            <div align="center" style="height: 425px ; width: 425px ; float: left;border-style: outset;border-width: 25px;border-color: darkmagenta;background-color: lightgray">
                <h2><%="Plan Name   :" + rs.getString("name")%></h2>
                <h4><%="Plan Type   :" + rs.getString("type")%></h4>
                <h4><%="Bedrooms    :" + rs.getString("bedroom")%></h4>
                <h4><%="Bathroom    :" + rs.getString("bathroom")%></h4>
                <h4><%="No of Floors:" + rs.getString("stories")%></h4>
                <h4><%="Total Area  :" + rs.getString("area")%></h4>
                <div style="height: 250px ; background-image:url('../uploadedImages/<%=rs.getString("image")%>');background-size: 100%;background-repeat: no-repeat"></div>
                <form action="viewPlanDetail.jsp" method="post">
                    <input type="hidden" name="planid" value="<%=rs.getString("id")%>">                    
                    <input type="submit" value="View plan details" style="font-size: 30px;width: 300px;background-color: limegreen;color: black;">
                </form>
            </div>

            <%
                }
            %>

        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>
