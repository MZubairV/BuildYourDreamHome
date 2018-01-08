<%-- 
    Document   : selectPM
    Created on : 18 Aug, 2017, 1:51:02 AM
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
        <title>select Project Managers</title>
    </head>
    <body>
        <%@include file="builderHeader.jsp" %>
        <%
            ConnectionSetup con = new ConnectionSetup();
            String query = "SELECT * FROM projectManager where status='available' and builderid="+session.getAttribute("regid");
            ResultSet rs = con.selectData(query);
        %>

        <div class="container" align="center">
            <table border="1" cellpadding="5">
                <caption><h2>List of Project Managers</h2></caption>
                <tr>
                    <th>ID</th>
                    <th>Reg ID</th>
                    <th>Builder ID</th>
                    <th>Status</th>
                </tr>


                <%
                    while (rs.next()) {
                %>

                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                <td>
                    <form action="../servletPMSelected" method="post">
                            <input type="hidden" name="pmid" value="<%=rs.getString("regid")%>" />
                            <input type="hidden" name="projectid" value="<%= request.getParameter("projectid") %>" />
                            <input type="submit" value="Start Project" style="font-size: 20px;background-color: darkgreen">
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
          