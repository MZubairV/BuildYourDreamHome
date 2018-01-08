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
        <title>View Plan Detail</title>
    </head>
    <body>
        <%@include file="adminHeader.jsp" %>
        <%
            String planid = request.getParameter("planid");
            ConnectionSetup con = new ConnectionSetup();
            String query = "select * from plan where id=" + planid;
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
                    <td><%=rs.getString("cost")%></td>
                    <td><%=rs.getString("DOStart")%></td>
                    <td><%=rs.getString("status")%></td> 
                    <td>
                        <form action="" method="post">
<!--                            <select name="status">
                                <option value="2">Approve</option>
                                <option value="3">Reject</option>
                            </select>-->
                            <input type="hidden" name="regid" hidden="true" value="<%=rs.getString(2) %>" />
                            <input type="submit" value="??????"  >
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
