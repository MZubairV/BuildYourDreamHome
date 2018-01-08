<%-- 
    Document   : adminHeader
    Created on : 4 Aug, 2017, 3:38:55 PM
    Author     : mzv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/menu.css">
    </head>
    <body>
        
        <div  style="background-color: #baf1a9;">
            <img src="../images/icon.jpg" height="100px" width="100px" style="float: left">
            <h1 style="color: #000cff" >BuildYourDreamHome.com</h1>
        </div>
        <div id="menu" style="height:65px;background-color: #1da7d8; ">

            <ul>
                <li><a href="adminHome.jsp"><h3>Admin Home</h3></a></li>
                <li><a href="manageUser.jsp"><h3>Manage Customer</h3></a></li>
                <li><a href="manageArchitect.jsp"><h3>Manage Architect</h3></a></li>
                <li><a href="manageBuilder.jsp"><h3>Manage Builder</h3></a></li>
                <li><a href="viewPlan.jsp"><h3>View Plan</h3></a></li>
                <li><a href="viewProject.jsp"><h3>View Project</h3></a></li>
                <li><a href="../logout.jsp"><h3>Logout</h3></a></li>
            </ul>
        </div> 

    </body>
</html>
