<%-- 
    Document   : providePM
    Created on : 18 Aug, 2017, 1:39:13 AM
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
        <title>Project Requests</title>
    </head>
    <body>
        <%@include file="builderHeader.jsp" %>
        <%
            ConnectionSetup con = new ConnectionSetup();
            String query = "SELECT * FROM project where status='builder selecter' and builderid=" + session.getAttribute("regid");
            System.out.println(query);

            ResultSet rs = con.selectData(query);
        %>

        <div class="container" align="center">
            <table border="1" cellpadding="5">
                <caption><h2>List Project Requests</h2></caption>
                <tr>
                    <th>Name</th>
                    <th>Cost</th>
                    <th>Status</th>                    
                </tr>


                <%
                    while (rs.next()) {
                %>

                <tr>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("coast")%></td>
                    <td><%=rs.getString("status")%></td>
                    <td>
                        <form action="selectPM.jsp" method="post">
                            <input type="hidden" name="projectid" value="<%=rs.getString("project.id")%>" />
                            <input type="submit" value="Assign Project Manager" style="font-size: 24px;background-color: limegreen;color: black;">
                        </form>
                    </td>
                </tr>
                <%
                    }
                %>

            </table>
        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>
