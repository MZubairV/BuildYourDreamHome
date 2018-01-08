<%-- 
    Document   : coastReqUtB
    Created on : 17 Aug, 2017, 10:10:39 PM
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
        <title>coast Requests</title>
    </head>
    <body>
        <%@include file="builderHeader.jsp" %>
        <%
            ConnectionSetup con = new ConnectionSetup();
            String query = "SELECT * FROM costRequest where status is  null and builderid="+session.getAttribute("regid");
            ResultSet rs = con.selectData(query);
        %>

        <div class="container" align="center">
            <table border="1" cellpadding="5">
                <caption><h2>List of coast requests</h2></caption>
                <tr>
                    <th>ID</th>
                    <th>Project ID</th>
                    <th>Builder ID</th>
                </tr>


                <%
                    while (rs.next()) {
                %>

                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                <td>
                    <form action="respondCostRequest.jsp" method="post">
                            <input type="hidden" name="costReqId" value="<%=rs.getString(1)%>" />
                            <input type="hidden" name="projectid" value="<%=rs.getString(2)%>" />
                            <input type="submit" value="Respond" style="font-size: 20px;background-color: limegreen;color: black;">
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
          