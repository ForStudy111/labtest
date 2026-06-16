<%-- 
    Document   : useJavaObject
    Created on : Apr 2, 2026, 3:22:53 AM
    Author     : wpy92
--%>

<%@ page import="java.util.Date" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using Java Object in JSP Page</title>
    </head>
    <body>
        <h1>Display Current Date and Perform Auto Refresh</h1>
        <%
            Date currentDate = new Date();
            out.println("<p>Current date and time is " + currentDate.toString() + "</p>");
        %>
        
        <% response.setIntHeader("Refresh", 5); %>
    </body>
</html>
