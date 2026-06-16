<%-- 
    Document   : main.jsp
    Created on : May 12, 2026, 11:55:49 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
    </head>
    <body>
        <h1>Login Successful</h1>

        <%
            String username = request.getParameter("username");
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
        %>

        <table border="1">
            <tr>
                <td>Username</td>
                <td><%= username%></td>
            </tr>

            <tr>
                <td>First Name</td>
                <td><%= firstname%></td>
            </tr>

            <tr>
                <td>Last Name</td>
                <td><%= lastname%></td>
            </tr>
        </table>
    </body>
</html>
