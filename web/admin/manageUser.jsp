<%-- 
    Document   : manageCustomer
    Created on : 2 Aug, 2017, 3:04:45 PM
    Author     : mzv
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.ConnectionSetup" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/page.css">

        <title>Manage Builder</title>
    </head>
    <body>
        <%@include file="adminHeader.jsp" %>
        <%
            ConnectionSetup con = new ConnectionSetup();
            String query = "select user.id,registration.id,name,mobile,country,state,district,place,email,pwd,rollname,statusName from registration join user on registration.id = user.regid join roll on registration.roll = roll.id join status on registration.status = status.id";
            ResultSet rs = con.selectData(query);
        %>

        <div class="container" align="center">
            <table border="1" cellpadding="5" class="table" >
                <caption><h2>Manage User</h2></caption>
                <tr>
                    <th>UserID</th>
                    <th>RegID</th>
                    <th>Name</th>
                    <th>Mobile</th>
                    <th>Country</th>
                    <th>State</th>
                    <th>district</th>
                    <th>Place</th>
                    <th>Email</th>
                    <th>PWD</th>
                    <th>Roll</th>
                    <th>Status</th>
                    <th>Change Status</th>
                </tr>


                <%
                    while (rs.next()) {
                %>

                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td><%=rs.getString(8)%></td>
                    <td><%=rs.getString(9)%></td>
                    <td><%=rs.getString(10)%></td>
                    <td><%=rs.getString(11)%></td>
                    <td><%=rs.getString(12)%></td>
                    <td>
                        <form action="../servletChangeStatus" method="post">
                            <select name="status">
                                <option value="2">Approve</option>
                                <option value="3">Reject</option>
                            </select>
                            <input type="hidden" name="regid" hidden="true" value="<%=rs.getString(2) %>" />
                            <input type="submit" value="SET"  >
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
