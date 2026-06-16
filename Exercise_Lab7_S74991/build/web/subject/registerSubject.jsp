<%-- 
    Document   : registerSubject
    Created on : May 20, 2026, 10:20:31 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Subject</title>
    </head>
    <body>
        <h2>Register Subject</h2>
        <form action="../SubjectServlet" method="POST">
            <input type="hidden" name="action" value="add"> 
            
            Subject Code: <input type="text" name="subjectCode" required><br><br>
            Subject Name: <input type="text" name="subjectName" required><br><br>

            <input type="submit" value="Register">
        </form>
        <br>
        <a href="viewSubjects.jsp">View My Subjects</a> | <a href="../dashboard.jsp">Back to Dashboard</a>
    </body>
</html>
