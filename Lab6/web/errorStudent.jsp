<%-- 
    Document   : errorStudent
    Created on : May 13, 2026, 2:48:47 AM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <form id="errorFrm" action="insertStudent.jsp" method="post">
            <h1>Lab 6 Task 3 Perform creating and retrieving records via JSP page</h1> 
            <p> Check error when inserting record...!</p>
            <p><jsp:expression> exception.getMessage()</jsp:expression></p>
            <br>
        </form>
    </body>
</html>
