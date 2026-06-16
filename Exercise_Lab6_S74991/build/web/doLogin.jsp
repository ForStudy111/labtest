<%-- 
    Document   : doLogin
    Created on : May 12, 2026, 11:32:58 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process User</title>
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            try {
                ResultSet result = null;

                Class.forName("com.mysql.jdbc.Driver");

                String myURL = "jdbc:mysql://localhost:3307/csa3023";
                Connection myConnection = DriverManager.getConnection(myURL, "root", "");

                String sInsertQry = "SELECT * FROM userprofile WHERE username=? AND password=?";

                PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);

                myPS.setString(1, username);
                myPS.setString(2, password);

                result = myPS.executeQuery();

                if (result.next()) {
                    String firstname = result.getString("firstname");
                    String lastname = result.getString("lastname");

                    response.sendRedirect(
                            "main.jsp?username=" + username
                            + "&firstname=" + firstname
                            + "&lastname=" + lastname
                    );
                    
                } else {
                
                    response.sendRedirect(
                            "login.jsp?msg=Invalid username or password..!"
                    );
                }

                myConnection.close();
                
            } catch (Exception e) {
                out.println("Error : " + e.getMessage());
            }
        %>
    </body>
</html>
