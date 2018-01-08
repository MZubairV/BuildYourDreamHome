<%-- 
    Document   : choosBuilder
    Created on : 17 Aug, 2017, 1:46:18 PM
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
        <title>Request Builder</title>
    </head>
    <body>
        <%@include file="userHeader.jsp" %>
        <%
            String regid=(String) session.getAttribute("regid");
            ConnectionSetup con = new ConnectionSetup();
            String query = "SELECT * FROM BuildYourDreamHome.project where status='plan selected' and userid="+regid ;
            ResultSet rs = con.selectData(query);
        %>

        <div class="container" align="center">
            <table border="1" cellpadding="5" class="table" >
                <caption><h2>Choose Builder</h2></caption>
                <tr>
                    <th>Plan Id</th>
                    <th>Architect Id</th>
                    <th>Status</th>
                    <th>Plan Selected Date</th>
                    
                </tr>


                <%
                    while (rs.next()) {
                %>

                <tr>
                    <td><%=rs.getString("planid")%></td>
                    <td><%=rs.getString("architectid")%></td>
                    <td><%=rs.getString("status")%></td>
                    <td><%=rs.getString("planselectdate")%></td>
                    <td>
                        <form action="listOfBuilder.jsp" method="post">
                            <input type="hidden" name="projectid" value="<%=rs.getString("id") %>" />
                            <input type="submit" value="Choose Builder"  >
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
