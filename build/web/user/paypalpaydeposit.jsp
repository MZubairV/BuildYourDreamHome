<%-- 
    Document   : paypalResponse
    Created on : 10 Mar, 2016, 4:39:00 PM
    Author     : Jhone
--%>

<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String regid=request.getParameter("val");
        DBConnection db=new DBConnection();
        int a=0;
        a=db.setamount(regid);
        if(a>0)
        {
            response.sendRedirect("userhome.jsp");
        }
        
        %>
    </body>
</html>
