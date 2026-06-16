<%-- 
    Document   : subjectInfo
    Created on : Apr 21, 2026, 4:11:51 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Subject Information</title>
    </head>
    <body>
        <h1>Subject Information</h1>
        
        <p>Code: <%= request.getParameter("code") %></p>
        <p>Subject: <%= request.getParameter("subject") %></p>
        <p>Credit: <%= request.getParameter("credit") %></p>
        
    </body>
</html>
