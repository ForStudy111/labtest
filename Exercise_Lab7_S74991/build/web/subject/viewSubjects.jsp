<%-- 
    Document   : viewSubjects
    Created on : May 20, 2026, 10:30:45 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.lab.dao.SubjectDAO"%>
<%@page import="com.lab.bean.SubjectBean"%>
<%@page import="com.lab.bean.StudentBean"%>

<%
    // Session Security & Identity Checking
    StudentBean user = (StudentBean) session.getAttribute("loggedUser");
    if (user == null) {
        response.sendRedirect("../login.html");
        return;
    }

    SubjectDAO dao = new SubjectDAO();
    List<SubjectBean> list = dao.getAllSubjects(user.getMatricNo());
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Subjects</title>
    </head>
    <body>
        <h2>My Registered Subjects</h2>
        <a href="registerSubject.jsp">Add New Subject</a> | <a href="../dashboard.jsp">Back to Dashboard</a>
        <br><br>

        <table border="1" cellpadding="5">
            <tr>
                <th>ID</th>
                <th>Subject Code</th>
                <th>Subject Name</th>
                <th>Action</th>
            </tr>
            
            <%
                // Loop using standard Java Scriptlets
                for (SubjectBean s : list) {
            %>
            
            <tr>
                <td><%= s.getId()%></td>
                <td><%= s.getSubjectCode()%></td>
                <td><%= s.getSubjectName()%></td>
                <td>
                    <a href="../SubjectServlet?action=edit&id=<%=s.getId()%>">Edit</a> | 
                    <a href="../SubjectServlet?action=delete&id=<%=s.getId()%>" onclick="return confirm('Delete this subject?');">Delete</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
