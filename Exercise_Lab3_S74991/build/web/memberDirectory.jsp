<%-- 
    Document   : memberDirectory
    Created on : Apr 14, 2026, 4:47:37 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Member Directory</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        
        <h2>Club Member Directory</h2>

        <table border="1" width="80%">
            
            <tr bgcolor="#ffe4c4">
                <th>No.</th>
                <th>Name</th>
                <th>Matric No</th>
                <th>Club</th>
            </tr>
            
            <%
                // Static Committee Members 
                ArrayList<String[]> list = new ArrayList<String[]>();
                list.add(new String[]{"Ahmad Zaki", "S75453", "CS Club"});
                list.add(new String[]{"Siti Sarah", "S73292", "Math Society"});
                list.add(new String[]{"Lim Wei Han", "S80901", "AI League"});
                list.add(new String[]{"Ravi Kumar", "S69223", "CS Club"});
                list.add(new String[]{"Nurul Izzah", "S77013", "AI League"});

                // Pull the "Saved" members from the session
                ArrayList<String[]> registered = (ArrayList<String[]>) session.getAttribute("savedMembers");
                if (registered != null) {
                    list.addAll(registered);
                }

                // Loop and display all 
                for (int i = 0; i < list.size(); i++) {
                    String[] member = list.get(i);
            %>
            
            <tr>
                <td><%= (i + 1) %></td>
                <td><%= member[0] %></td>
                <td><%= member[1] %></td>
                <td><%= member[2] %></td>
            </tr>
            <% } %>
        </table>
        
        <%@include file="footer.jsp"%>
    </body>
</html>
