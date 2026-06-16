<%-- 
    Document   : ArrayList
    Created on : Apr 14, 2026, 3:52:34 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
    <title>Use Java ArrayList</title> 
</head>
<body>
    <h1>Use JSP Page Directive</h1> 

    <%
        // create the ArrayList object 
        ArrayList<String> studentList = new ArrayList<String>();

        // store student name
        studentList.add(0, "Mohamad Azam"); 
        studentList.add(1, "Peter Chong"); 
        studentList.add(2, "Rahimah Mansor"); 
        studentList.add(3, "Sri Devi"); 
        studentList.add(4, "Ng Hue Ween"); 
        studentList.add(5, "S. Nagarajan"); 

        // Display the total number of records 
        out.println("<p><font color='blue'>The number of records in ArrayList is " + studentList.size() + "</font></p>"); 

        // Use a loop to populate the list of students 
        for (int i = 0; i < studentList.size(); i++) { 
            out.println("<p><font color='blue'>Record " + (i + 1) + " is " + studentList.get(i) + "</font></p>"); 
        }
    %>

    <footer>&copy; 2026-Syaffiq</footer> 
</body>
</html>
