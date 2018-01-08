<%-- 
    Document   : userHome
    Created on : 2 Aug, 2017, 11:31:47 AM
    Author     : mzv
--%>

<%@page import="db.ConnectionSetup"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/page.css">
        <title>User Home</title>
    </head>
    <body>
        <%@include file="userHeader.jsp" %>
        <%
            String regid = (String) session.getAttribute("regid");
            ConnectionSetup con = new ConnectionSetup();
            String query = "select * from registration join user on registration.id=regid where registration.id=" + regid;
            ResultSet rs = con.selectData(query);
        %>
        <div align="center" class="container">
            <%
                while (rs.next()) {
            %>
            <div align="center" style="height: 400px;width: 500px;border-style: outset;border-width: 5px;border-color: darkmagenta;background-color: lightgray">
                <h1>
                    <div style="border-style: outset;border-width: 5px;border-color: black;background-color: #baf1a9">
                        <%="Name   :" + rs.getString("name")%>
                    </div>
                </h1>
                <h1>
                    <div style="border-style: outset;border-width: 1px;border-color: black;background-color: white">
                        <%="Roll:User"%>
                    </div>
                </h1>
                <h1>
                    <div style="border-style: outset;border-width: 1px;border-color: black;background-color: white">
                        <%="Status  :" + rs.getString("status")%>
                    </div>
                </h1>
                <h1>
                    <div style="border-style: outset;border-width: 1px;border-color: black;background-color: white">
                        <%="Mobile   :" + rs.getString("mobile")%>
                    </div>
                </h1>
                <h1>
                    <div style="border-style: outset;border-width: 1px;border-color: black;background-color: white">
                        <%="Country    :" + rs.getString("country")%>
                    </div>
                </h1>
                <h1>
                    <div style="border-style: outset;border-width: 1px;border-color: black;background-color: white">
                        <%="state    :" + rs.getString("state")%>
                    </div>
                </h1>
                <h1>
                    <div style="border-style: outset;border-width: 1px;border-color: black;background-color: white">
                        <%="district:" + rs.getString("district")%>
                    </div>
                </h1>
                <h1>
                    <div style="border-style: outset;border-width: 1px;border-color: black;background-color: white">
                        <%="place  :" + rs.getString("place")%>
                    </div>
                </h1>
                <h1>
                    <div style="border-style: outset;border-width: 1px;border-color: black;background-color: white">
                        <%="email    :" + rs.getString("email")%>
                    </div>
                </h1>


            </div>

            <%
                }
            %>

        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>
