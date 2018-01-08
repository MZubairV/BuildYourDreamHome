<%-- 
    Document   : getMsg
    Created on : 28 Aug, 2017, 2:23:13 PM
    Author     : mzv
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.ConnectionSetup"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String regid = (String) session.getAttribute("regid");
            String projectid = request.getParameter("projectid");
            ConnectionSetup con = new ConnectionSetup();
            ConnectionSetup con2 = new ConnectionSetup();
            String query = "select * from message where projoctid=" + projectid;
            ResultSet rs = con.selectData(query);
            while (rs.next()) {
                String messageMsg = rs.getString("msg");
                String messageRegid = rs.getString("regid");

                String queryReg = "select * from registration where id=" + messageRegid;
                ResultSet rsReg = con2.selectData(queryReg);
                while (rsReg.next()) {
                    String roll = rsReg.getString("roll");
                    if (roll.equals("1") && !regid.equals(messageRegid)) {
        %>
        <div align="left" style="background-color: greenyellow;"><% out.println(rsReg.getString("name") + " : " + messageMsg); %></div>
        <%
            }
            if (roll.equals("2") && !regid.equals(messageRegid)) {
        %>
        <div align="left" style="background-color: hotpink;"><% out.println(rsReg.getString("name") + " : " + messageMsg); %></div>
        <%
            }
            if (roll.equals("4") && !regid.equals(messageRegid)) {
        %>
        <div align="left" style="background-color: #a8a3f5;"><% out.println(rsReg.getString("name") + " : " + messageMsg); %></div>
        <%
            }
            if (regid.equals(messageRegid)) {
        %>
        <div align="right" style="background-color: whitesmoke;"><% out.println(messageMsg+" : "+rsReg.getString("name")); %></div>
        <%
                    }
                }
                rsReg.close();

            }
        %>
    </body>
</html>
