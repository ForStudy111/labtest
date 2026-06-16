<%-- 
    Document   : greeting.jsp
    Created on : Apr 2, 2026, 4:59:31 AM
    Author     : wpy92
--%>

<%@ page import="java.util.Date" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Greeting Page</title>
    </head>
    <body>
        <h1>Hello, <%= request.getAttribute("username") %>!</h1>
        
        <p> 
        <%
            Date currentDate = new Date();
            out.println("<p>Current date and time is " + currentDate.toString() + "</p>");
        %>
        
        <% response.setIntHeader("Refresh", 5); %>
    </body>
</html>
