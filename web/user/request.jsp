<%-- 
    Document   : request
    Created on : 16 Aug, 2017, 10:06:40 AM
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
        <title>Accepted Plans</title>
    </head>
    <body>
        <%@include file="userHeader.jsp" %>
        <%
            String regid = (String) session.getAttribute("regid");
            ConnectionSetup con = new ConnectionSetup();
            String query = "select * from planRequests where status='approved' and isProReqSend IS NULL and regid=" + regid;
            ResultSet rs = con.selectData(query);
        %>

        <div class="container" align="center">
            <table border="1" cellpadding="5" class="table" >
                <caption><h2>List of Architect accepted planss</h2></caption>
                <tr>
                    <th>Plan Id</th>
                    <th>Status</th>
                    <th>Request Date</th>
                    <th>Respond Date</th>
                    <th>Message from architect</th>
                </tr>


                <%
                    while (rs.next()) {
                %>

                <tr>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td>
<!--                        <form action="../servletBuildRequestSend" method="post">
                            <input type="hidden" name="planreqid" value="<%=rs.getString("planRequests.id")%>" />
                            <input type="text" placeholder="Enter message" hol name="msg"/>
                            <input type="submit" value="Build Request"  >
                        </form>-->
                            <form action="viewPlanDetailsCompletly.jsp">
                                <input type="hidden" name="planreqid" value="<%=rs.getString("planRequests.id")%>" />
                                <input type="hidden" name="planid" value="<%=rs.getString("planid")%>" />
                            <input type="submit" value="View accepted Plan" style="font-size: 18px;">
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
