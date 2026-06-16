<%-- 
    Document   : processRegistration
    Created on : Apr 14, 2026, 4:46:25 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process Registration</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
   
        <%
            // Retrieve the form data
            String name = request.getParameter("stuName");
            String matric = request.getParameter("stuMatric");
            String club = request.getParameter("stuClub");

            // Get the existing list from the session, or create a new one if it doesn't exist
            ArrayList<String[]> memberList = (ArrayList<String[]>) session.getAttribute("savedMembers");
            if (memberList == null) {
                memberList = new ArrayList<String[]>();
            }

            // Add the new registration as an array: {Name, Matric, Club}
            if (name != null && !name.isEmpty()) {
                memberList.add(new String[]{name, matric, club});
                session.setAttribute("savedMembers", memberList); // Save back to session
            }
        %>
    
        <h3>Registration Successful!</h3>
        <p>Welcome to the club, <b><%= name %></b>!</p>
        <p><a href="memberDirectory.jsp">View Updated Directory</a></p>

        <%@include file="footer.jsp"%>
    </body>
</html>
