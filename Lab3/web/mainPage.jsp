<%-- 
    Document   : mainPage
    Created on : Apr 14, 2026, 4:15:12 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 6: Include Directive</title>
    </head>
    <body style="text-align: center;">

        <!--Header-->
        <%@include file="headerPage.jsp" %>

        <div style="padding: 20px; color: red; text-align: left;">
            <h3><font color='black'>Using JSP Include Directive</font></h3>
            <p>
                Java Server Page (JSP) is a technology for controlling the content
                or appearance of Web pages through the use of servlets, small
                programs that are specified in the Web page and run on the Web server
                to modify the Web page before it is sent to the user who requested it.
            </p>
        </div>

        <!--Footer-->
        <%@include file="footerPage.jsp" %>

    </body>
</html>
