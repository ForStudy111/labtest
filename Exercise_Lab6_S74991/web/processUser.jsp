<%-- 
    Document   : processUser
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
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");

        try
        {
            int result;
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myURL = "jdbc:mysql://localhost:3307/csa3023";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "");
            
            
            String sInsertQry = "INSERT INTO userprofile VALUES (?, ?, ?, ?)";
            
            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
           
            myPS.setString(1, username);
            myPS.setString(2, password);
            myPS.setString(3, firstname);
            myPS.setString(4, lastname);

            result = myPS.executeUpdate();

            if(result > 0)
            {
                out.println("<h2>Record successfully inserted!</h2>");
            }

            myConnection.close();
        }
        
        catch(Exception e)
        {
            out.println("Error : " + e.getMessage());
        }
        %>
    </body>
</html>
