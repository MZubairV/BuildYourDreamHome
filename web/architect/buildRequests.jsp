<%-- 
    Document   : buildRequests
    Created on : 17 Aug, 2017, 10:49:00 AM
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
        <title> Build Requests</title>
    </head>
    <body>
        <%@include file="architectHeader.jsp" %>
        <%
            ConnectionSetup con = new ConnectionSetup();
            String regid = (String) session.getAttribute("regid");
            String query = "SELECT buildRequests.id,planReqId,requestdate,buildRequests.status,message FROM buildRequests join registration where buildRequests.status='pending' and registration.id=" + regid;
            ResultSet rs = con.selectData(query);
        %>

        <div class="container" align="center">
            <table border="1" cellpadding="5" class="table" >
                <caption><h2>Build Requests</h2></caption>
                <tr>
                    <th>Request Id</th>
                    <th>Plan Id</th>
                    <th>Request Date</th>
                    <th>Status</th>
                    <!--<th>Message from User</th>-->
                    <th>Respond</th>

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
                        <form action="../servletPlanAccepted" method="post">
                            <select name="status">
                                <option value="approved">Approve</option>
                                <option value="rejected">Reject</option>
                            </select>
                            <input type="hidden" name="buildReqId" value="<%=rs.getString("buildRequests.id")%>" />
                            <input type="hidden" name="planReqId" value="<%=rs.getString("planReqId")%>" />
                            <input type="submit" value="Respond"  >
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
