<%-- 
    Document   : processStudent
    Created on : May 13, 2026, 2:29:50 AM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page errorPage="errorStudent.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process Author Page</title>
    </head>
    <body>
        <!-- Create an object for Student -->
        <jsp:useBean id="myStudent" class="Lab6.com.Student" scope="request"/>
        <h1>Lab 6 - Task 3</h1>

        <!-- Assign data entry from page insertStudent.jsp page into Student's bean -->
        <jsp:setProperty name="myStudent" property="*"/>

        <%
            int result;

            //Step 1: Load JCBC driver...
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Step 1: MySQL driver loaded...!");

            //Step 2: Establish the connection...
            String myURL = "jdbc:mysql://localhost:3307/csa3023";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "");
            System.out.println("Step 2: Database is connected...!");

            //Step 3: Create a PreparedStatement object...
            System.out.println("Step 3: Prepared Statements created...!");

            //Prepared SQL Query as a String...
            String sInsertQry = "INSERT INTO Student(stuno, stuname, stuprogram) VALUES (?, ?, ?)";
            System.out.println("\tSQL Query: " + sInsertQry);

            //Call method preparedStatement
            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);

            //Assign each value to respective columns for Book's table... (C-Create) 
            System.out.println("Step 4: Perform insertion of record...!");
            myPS.setString(1, myStudent.getStuno());
            myPS.setString(2, myStudent.getName());
            myPS.setString(3, myStudent.getProgram());

            //Step 4: Execute the query...
            result = myPS.executeUpdate();
            if (result > 0) {
                System.out.println("\tRecord successfully added into Book's table...!");
                out.print("<p>" + "Record with student no " + myStudent.getStuno()
                        + " successfully created..!" + "</p>");
                out.print("<p>" + "Details of record are: " + "</p>");
                out.print("<p>Student ID : " + myStudent.getStuno() + "</p>");
                out.print("<p>Name : " + myStudent.getName() + "</p>");
                out.print("<p>Program : " + myStudent.getProgram() + "</p>");
            }
            
            //Step 5: Close database connection...!
            System.out.println("Step 5: Close database connection...!");
            myConnection.close();
            System.out.println("");
            System.out.println("Database connection is closed...!");
        %>
    </body>
</html>
