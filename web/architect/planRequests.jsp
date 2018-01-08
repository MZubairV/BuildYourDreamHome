<%-- 
    Document   : planRequests
    Created on : 16 Aug, 2017, 10:03:11 AM
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
        <title>Plan Requests</title>
    </head>
    <body>
        <%@include file="architectHeader.jsp" %>
        <%
            ConnectionSetup con = new ConnectionSetup();
            String regid = (String) session.getAttribute("regid");
            String query = "select registration.name,mobile,country,state,district,place,email,plan.name,type,bedroom,bathroom,stories,area,requestdate,planRequests.status,planRequests.id from plan join planRequests on plan.id = planRequests.planid join registration on planRequests.regid = registration.id where planRequests.status='pending' and architectId=" + regid;
            ResultSet rs = con.selectData(query);
        %>

        <div class="container" align="center">
            <table border="1" cellpadding="5" class="table" >
                <caption><h2>Plan Requests</h2></caption>
                <tr>
                    <th>Name</th>
                    <th>Mobile</th>
                    <!--                    <th>Country</th>
                                        <th>State</th>
                                        <th>district</th>-->
                    <th>Place</th>
                    <th>Email</th>
                    <th></th>
                    <th>Plan Name</th>
                    <th>Type</th>
                    <th>Bedroom</th>
                    <th>Bathroom</th>
                    <th>Stories</th>
                    <th>Area</th>
                    <th></th>
                    <th>Request Date</th>
                    <th>Status</th>
                    <th>Change Status</th>
                </tr>


                <%
                    while (rs.next()) {
                %>

                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>

                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td></td>
                    <td><%=rs.getString(8)%></td>
                    <td><%=rs.getString(9)%></td>
                    <td><%=rs.getString(10)%></td>
                    <td><%=rs.getString(11)%></td>
                    <td><%=rs.getString(12)%></td>
                    <td><%=rs.getString(13)%></td>   
                    <td></td>
                    <td><%=rs.getString(14)%></td>
                    <td><%=rs.getString(15)%></td>
                    <td>
                        <form action="../servletChangePlanReqStatus" method="post">
                            <input type="text" placeholder="Enter message" name="msg"/>
                            <select name="status">
                                <option value="approved">Approve</option>
                                <option value="rejected">Reject</option>
                            </select>
                            <input type="hidden" name="planreqid" value="<%=rs.getString("planRequests.id")%>" />
                            <input type="submit" value="Reply"  >
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
