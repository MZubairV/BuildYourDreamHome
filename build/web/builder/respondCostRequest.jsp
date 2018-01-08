<%-- 
    Document   : respondCostRequest
    Created on : 17 Aug, 2017, 10:49:52 PM
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
        <title>Respond Cost Request</title>
    </head>
    <body>
        <%@include file="builderHeader.jsp" %>
        <%
            String costReqId = request.getParameter("costReqId");
            String projectid = request.getParameter("projectid");
            ConnectionSetup con = new ConnectionSetup();
            String query = "select * from project where id=" + projectid;
            ResultSet rs = con.selectData(query);
            rs.next();
            String planid = rs.getString("planid");

            String queryplan = "select * from plan where id=" + planid;
            ResultSet rsp = con.selectData(queryplan);
        %>
        <div class="container">
            <%
                while (rsp.next()) {
            %>
            <div align="center" style="background-color: whitesmoke;">
                <div style="background-color: red;height: 3px;"></div>
                <h1><%="Plan Name   :" + rsp.getString("name")%></h1>
                <div style="background-color: red;height: 3px;"></div>
                <h3><%="Plan Type   :" + rsp.getString("type")%></h3>
                <h3><%="Bedrooms    :" + rsp.getString("bedroom")%></h3>
                <h3><%="Bathroom    :" + rsp.getString("bathroom")%></h3>
                <h3><%="No of Floors:" + rsp.getString("stories")%></h3>
                <h3><%="Total Area  :" + rsp.getString("area")%></h3>  
                <div style="background-color: red;height: 3px;"></div>

                <form action="../servletUpdateCostReq" method="post">
                    <input type="hidden" name="costreqid" value="<%= costReqId%>">
                    <input type="text" name="cost" placeholder="Enter total cost" style="font-size: 24px;width: 400px;">
                    <input type="submit" value="Send request"  style="font-size: 24px;width: 400px;background-color: limegreen;color: black;">
                </form>
                <div style="background-color: red;height: 3px;"></div>
                <div style="height: 600px;width: 600px; background-image:url('../uploadedImages/<%=rsp.getString("image")%>');background-size: 100%;background-repeat: no-repeat">
                </div>

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
