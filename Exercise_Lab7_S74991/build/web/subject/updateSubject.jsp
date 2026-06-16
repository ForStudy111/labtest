<%-- 
    Document   : updateSubject
    Created on : May 20, 2026, 10:52:56 AM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.lab.bean.SubjectBean"%>

<%
    // Retrieve the specific subject data passed from the Servlet
    SubjectBean subject = (SubjectBean) request.getAttribute("subject");
    if (subject == null) {
        response.sendRedirect("subject/viewSubjects.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Subject</title>
    </head>
    <body>
        <h2>Update Subject Details</h2>
        <form action="SubjectServlet" method="POST">
            <input type="hidden" name="action" value="update">
            <input type="hidden" name="id" value="<%= subject.getId()%>">

            Subject Code: <input type="text" name="subjectCode" value="<%= subject.getSubjectCode()%>" required><br><br>
            Subject Name: <input type="text" name="subjectName" value="<%= subject.getSubjectName()%>" required><br><br>

            <input type="submit" value="Update">
        </form>
        <br>
        <a href="subject/viewSubjects.jsp">Cancel</a>
    </body>
</html>
