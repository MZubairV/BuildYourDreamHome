<%-- 
    Document   : listOfBuilder
    Created on : 17 Aug, 2017, 2:04:19 PM
    Author     : mzv
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.ConnectionSetup"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" type="text/css" href="../css/page.css">
            <title>List of Builder</title>
        </head>
        <body>
            <%@include file="userHeader.jsp" %>
            <%  
                String projectid=request.getParameter("projectid");
                ConnectionSetup con = new ConnectionSetup();
                String query = "select * from registration join builder on registration.id=regid;";
                ResultSet rs = con.selectData(query);
            %>
            <div class="container">
                <%
                    while (rs.next()) {
                %>
                <div align="center" style="height: 250px ; width: 425px ; float: left;border-style: outset;border-width: 25px;border-color: darkmagenta;background-color: lightgray">
                    <h2><%="Builder Name:" + rs.getString("name")%></h2>
                    <div style="background-color: red;height: 3px "></div>
                    <h4><%="Website     :" + rs.getString("website")%></h4>
                    <h4><%="email     :" + rs.getString("email")%></h4>
                    <h4><%="Mobile     :" + rs.getString("mobile")%></h4>
                    <h4><%="place     :" + rs.getString("place")%></h4>
                    <h4><%="district:" + rs.getString("district")%></h4>
                    <h4><%="state:" + rs.getString("state")%></h4>
                    <h4><%="country:" + rs.getString("country")%></h4>
                    <div style="background-color: red;height: 3px "></div>
                    
                    <form action="../servletCostRequestUtB" method="post">
                        <input type="hidden" name="builderid" value="<%=rs.getString("registration.id")%>"> 
                        <input type="hidden" name="projectid" value="<%= projectid%>"> 
                        <input type="submit" value="Request Total Coast" style="font-size: 30px;background-color: limegreen;color: black;">
                    </form>
                </div>

                <%
                    }
                %>

            </div>
            <%@include file="../footer.jsp" %>
        </body>
    </html>
</html>
