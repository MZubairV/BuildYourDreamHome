<%-- 
    Document   : userInbox
    Created on : 16 Aug, 2017, 8:36:03 AM
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
        <title>Inbox</title>
        <script>
            setInterval(getmsg, 2000);
            function getmsg() {
                var projectid = document.getElementById("projectid").value;
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        document.getElementById("msgarea").innerHTML = this.responseText;
                    }
                };
                xhttp.open("GET", "getMsg.jsp?projectid=" + projectid, true);
                xhttp.send();
            }

            function sendmsg() {
                var msg = document.getElementById("msg").value;
                var projectid = document.getElementById("projectid").value;
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        document.getElementById("msgarea").innerHTML = this.responseText;
                    }
                };
                xhttp.open("GET", "sendMsg.jsp?projectid=" + projectid + "&msg=" + msg, true);
                xhttp.send();
                document.getElementById("msg").value = "";         
                            
            }

        </script>
    </head>
    <body onload="getmsg()">
        <%@include file="projectManagerHeader.jsp" %>
        <%
            String projectid = request.getParameter("projectid");
        %>
        <input type="hidden" value="<%= projectid%>" id="projectid">
        <div align="center"  class="container">
            <div style="min-height:520px; max-width:420px; border:3px solid grey;background-color: white">
                <div style="min-height:400px;max-width:400px;background-color: white;border:3px solid grey;border-color: blue;" id="msgarea" ></div>
                <div style="max-height:150px; max-width:400px;background-color: white;border:3px solid grey;border-color: red; ">
                    <input type="text" id="msg"  style="width:400px; height:50px;font-size: 24px"/>
                </div>
                <div style="border-color: red;border-width: 3px;">
                    <input type="submit"  id="msg" value="send" onclick="sendmsg()" style="font-size: 24px;width: 400px;height: 50px;background-color: darkgreen"/>
                </div>
            </div>
        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>
