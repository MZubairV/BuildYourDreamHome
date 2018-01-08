<%-- 
    Document   : viewPlanDetailsCompletly
    Created on : 21 Aug, 2017, 5:59:11 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="userHeader.jsp" %>
        <%
            String planreqid = request.getParameter("planreqid");
            String planid = request.getParameter("planid");
            
            ConnectionSetup con = new ConnectionSetup();
            String query = "select * from plan where id=" + planid;
            ResultSet rs = con.selectData(query);
        %>
        <div class="container">
            <%
                while (rs.next()) {
            %>
            <div align="center" style="background-color: whitesmoke;">
                <div style="background-color: red;height: 5px"></div>
                <h1><%="Plan Name   :" + rs.getString("name")%></h1>
                <h3><%="Plan Type   :" + rs.getString("type")%></h3>
                <h3><%="Bedrooms    :" + rs.getString("bedroom")%></h3>
                <h3><%="Bathroom    :" + rs.getString("bathroom")%></h3>
                <h3><%="No of Floors:" + rs.getString("stories")%></h3>
                <h3><%="Total Area  :" + rs.getString("area")%></h3>

                <form action="../servletBuildRequestSend" method="post">
                    <input type="hidden"  name="planreqid" value="<%= planreqid %>"/>
                    <input type="submit" value="Send Build Request" style="font-size: 30px;background-color: limegreen;color: black;">
                </form>
                <div style="background-color: red;height: 5px"></div>

                <div style="height: 425px ; width: 425px ; float: left;border-style: outset;border-width: 25px;border-color: whitesmoke;background-color: whitesmoke">
                    <h2>Main image</h2>
                    <div style="height: 400px; background-image:url('../uploadedImages/<%=rs.getString("image")%>');background-size: 100%;background-repeat: no-repeat"></div>



                </div>



                <%
                    }
                %>

                <%
                    String queryplanpic = "select * from planpic where planid=" + planid;
                    ResultSet rspic = con.selectData(queryplanpic);
                    while (rspic.next()) {
                %>


                <div style="height: 425px ; width: 425px ; float: left;border-style: outset;border-width: 25px;border-color: whitesmoke;background-color: whitesmoke">
                    <h2><%=rspic.getString(3)%></h2>
                    <div style="height: 400px; background-image:url('../uploadedImages/<%=rspic.getString(4)%>');background-size: 100%;background-repeat: no-repeat"></div>



                </div>

                <%
                    }
                %>
                
            </div>

            <%@include file="../footer.jsp" %>
    </body>
</html>

