
<html>

    <head>
        <link rel="stylesheet" type="text/css" href="../css/page.css">
        <title>Pay through PayPal: http://www.TestAccount.com</title>
    </head>
    <!--<body onload="document.forms['paypalForm'].submit();">-->
    <body >
        <%
            //  
            //    int regid = (Integer) session.getAttribute("Regid");
            //          System.out.println("regid"+regid);
            int regid = 99999;
            String queryupdateproject = request.getParameter("queryupdateproject");
            String cost = request.getParameter("cost");


        %>
        <%@include file="userHeader.jsp" %>
        <div class="container" align="center">
            <div style="height: 100px"></div>
            <form align="center" name="paypalForm" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
                <input type="hidden" name="cmd" value="_xclick" />
                <input type="hidden" name="business" value="muhammedzubairv-facilitator@gmail.com" />
                <input type="hidden" name="password" value="7PCMH8SSRTBEMBA9" />
                <input type="hidden" name="custom" value="1123" />
                <input type="hidden" name="item_name" value="Deposite" />
                <input type="hidden" name="amount" value="1">
                <input type="hidden" name="rm" value="10" />
                <input type="hidden" name="return" value="http://localhost:9999/BuildYourDreamHome/servletUpdateProject?queryupdateproject=<%= queryupdateproject%>" />
                <input type="hidden" name="cancel_return" value="http://localhost:9999/BuildYourDreamHome/user/paymentCancelled.jsp" />
                <input type="hidden" name="cert_id" value="AFcWxV21C7fd0v3bYYYRCpSSRl31AWXlQiaNwWXnYQylgistNRByy3sI" />
                <input type="submit" value="pay" style="font-size: 24px;width: 300px;background-color: red"/>

            </form>
        </div>
    </body>
</html>