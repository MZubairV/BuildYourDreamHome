<%-- 
    Document   : viewProject
    Created on : 21 Aug, 2017, 9:26:06 PM
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
            String regid=(String) session.getAttribute("regid");
            ConnectionSetup con = new ConnectionSetup();
            String query = "select * from project where status='started' and userid="+regid;
            ResultSet rs = con.selectData(query);
        %>

        <div class="container" align="center">
            <table border="1" cellpadding="5" class="table" >
                <caption><h2>List of Projects</h2></caption>
                <tr>
                    <th>Name</th>
                    <th>coast</th>
                    <th>Started Date</th>
                    <th>Status</th>
                </tr>


                <%
                    while (rs.next()) {
                %>

                <tr>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("coast")%></td>
                    <td><%=rs.getString("DOStart")%></td>
                    <td><%=rs.getString("status")%></td> 
                    <td>
                        <form action="projectHistory.jsp" method="post">
<!--                            <select name="status">
                                <option value="2">Approve</option>
                                <option value="3">Reject</option>
                            </select>-->
                            <input type="hidden" name="planid" hidden="true" value="<%=rs.getString("planid") %>" />
                            <input type="hidden" name="projectid" hidden="true" value="<%=rs.getString("id") %>" />
                            <input type="submit" value="View Project Details"  >
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
