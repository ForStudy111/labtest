<%-- 
    Document   : login
    Created on : May 12, 2026, 11:46:48 PM
    Author     : wpy92
--%>

<%
String message = request.getParameter("msg");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>User Login</h1>
        <%
            if (message != null) {
        %>

        <p style="color:red;">
            <%= message%>
        </p>

        <%
            }
        %>

        <form action="doLogin.jsp" method="post">

            <table>

                <tr>
                    <td><label for="username">Username:</label></td>
                    <td><input type="text" id="username" name="username" required></td>
                </tr>

                <tr>
                    <td><label for="password">Password:</label></td>
                    <td><input type="password" id="password" name="password" required></td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Login">
                        <input type="reset" value="Cancel">
                    </td>
                </tr>

            </table>
        </form>
    </body>
</html>
