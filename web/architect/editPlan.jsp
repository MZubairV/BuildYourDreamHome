<%-- 
    Document   : editPlan
    Created on : 14 Aug, 2017, 11:13:09 AM
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
        <title>Edit Plan</title>
    </head>
    <body>
        <%@include file="architectHeader.jsp" %>
        <%
            String planid = request.getParameter("planid");
            
            ConnectionSetup con = new ConnectionSetup();
            String query = "select * from plan where id="+planid;
            ResultSet rs = con.selectData(query);
        %>
        <div class="container">
            <%
                while (rs.next()) {
            %>
            <div align="center" style=" height: 700px;background-color: darkgray">
                <h2><%="Plan Name   :" + rs.getString("name")%></h2>
                <h4><%="Plan Type   :" + rs.getString("type")%></h4>
                <h4><%="Bedrooms    :" + rs.getString("bedroom")%></h4>
                <h4><%="Bathroom    :" + rs.getString("bathroom")%></h4>
                <h4><%="No of Floors:" + rs.getString("stories")%></h4>
                <h4><%="Total Area  :" + rs.getString("area")%></h4>
                <div style="height: 500px;width: 500px; background-image:url('../uploadedImages/<%=rs.getString("image") %>');background-size: 100%;background-repeat: no-repeat"></div>
                
                
                
            </div>

            <%
                }
            %>

        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>
