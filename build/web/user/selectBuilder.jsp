<%-- 
    Document   : selectBuilder
    Created on : 17 Aug, 2017, 11:39:48 PM
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
        <title>Select Builders</title>
    </head>
    <body>
        <%@include file="userHeader.jsp" %>
          <%
            String regid=(String) session.getAttribute("regid");
            ConnectionSetup con = new ConnectionSetup();
            String query = "select plan.name,cost,image,costRequest.builderid,project.id from project join costRequest on project.id= costRequest.projectid join plan on plan.id= project.planid where project.status='plan selected' and costRequest.status='responded' and userId=" +regid;
            ResultSet rs = con.selectData(query);
        %>

        <div class="container" align="center">
            <table border="1" cellpadding="5" class="table" >
                <caption><h2>Choose Builder</h2></caption>
                <tr>
                    <th>Plan Name</th>
                    <th>Project cost </th>
                    
                    
                </tr>


                <%
                    while (rs.next()) {
                %>

                <tr>
                    <td><%=rs.getString("plan.name")%></td>
                    <td><%=rs.getString("cost")%></td>
                    <td>
                        <form action="confirmBuilder.jsp" method="post">
                            <input type="hidden" name="planname" value="<%=rs.getString("plan.name") %>" />
                            <input type="hidden" name="cost" value="<%=rs.getString("cost") %>" />
                            <input type="hidden" name="image" value="<%=rs.getString("image") %>" />
                            <input type="hidden" name="builderid" value="<%=rs.getString("costRequest.builderid") %>" />
                            <input type="hidden" name="projectid" value="<%=rs.getString("project.id") %>" />
                            
                            <input type="submit" value="Start Project"  >
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
