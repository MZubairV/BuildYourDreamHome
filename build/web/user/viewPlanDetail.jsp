<%-- 
    Document   : viewPlanDetail
    Created on : 14 Aug, 2017, 5:24:27 PM
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
        <title>View Plan Details</title>
    </head>
    <body>
        <%@include file="userHeader.jsp" %>
        <%
            String planid = request.getParameter("planid");
            ConnectionSetup con = new ConnectionSetup();
            String query = "select * from plan where id=" + planid;
            ResultSet rs = con.selectData(query);
        %>
        <div class="container">
            <%
                while (rs.next()) {
            %>
            <div align="center" style="background-color: whitesmoke;">
                <h1><%="Plan Name   :" + rs.getString("name")%></h1>
                <h3><%="Plan Type   :" + rs.getString("type")%></h3>
                <h3><%="Bedrooms    :" + rs.getString("bedroom")%></h3>
                <h3><%="Bathroom    :" + rs.getString("bathroom")%></h3>
                <h3><%="No of Floors:" + rs.getString("stories")%></h3>
                <h3><%="Total Area  :" + rs.getString("area")%></h3>
                <form action="../servletPlanRequestSend" method="post">
                    <input type="hidden" name="planid" value="<%= rs.getString("id")%>">
                    <input type="submit" value="Send plan request" style="font-size: 30px;width: 600px;background-color: darkgreen;color: black">
                </form>
                <div style="height: 600px;width: 600px; background-image:url('../uploadedImages/<%=rs.getString("image")%>');background-size: 100%;background-repeat: no-repeat">
                </div>
                
            </div>

            <%
                }
            %>

            
        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>
