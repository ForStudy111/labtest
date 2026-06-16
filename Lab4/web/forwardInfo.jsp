<%-- 
    Document   : forwardInfo
    Created on : Apr 21, 2026, 4:18:54 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Forwarded Information</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <%
            String name = request.getParameter("uname");
            String email = request.getParameter("email");
            String nationality = request.getParameter("nationality");
            String background = request.getParameter("background");
        %>

        <div class="container">
            <h1>Using jsp:forward to display user info</h1>
            <div class="card">
                <h2 class="form-title">Forwarded Info</h2>
                
                <p>Name: <%= name %></p>
                <p>Email: <%= email %></p>
                <p>Nationality: <%= nationality %></p>
                <p>Background: <%= background %></p>
            </div>
        </div>
    </body>
</html>
