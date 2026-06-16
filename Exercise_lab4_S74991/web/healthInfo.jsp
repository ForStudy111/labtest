<%-- 
    Document   : healthInfo
    Created on : Apr 22, 2026, 11:26:18 PM
    Author     : wpy92
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Health Info</title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        <%@include file="header.jsp" %> 
        
        <div class="container">
            <div class="card">
                <h2 class="form-title">BMI calculator</h2>
                
                <% 
                    ArrayList<String> categories = new ArrayList<>();
                    categories.add("Underweight: BMI < 18.5");
                    categories.add("Normal: 18.5 <= BMI <= 25");
                    categories.add("Overweight: BMI > 25");
                %>
                
                <table border="1" style="width:100%; border-collapse: collapse; padding: 10px;">
                    
                    <tr style="background-color: #6f42c1; color: white;">
                        <th style="padding: 10px">Classification</th>
                    </tr>
                    
                    <% for(String category: categories) { %>
                    
                    <tr>
                        <td style="padding: 10px"><%= category %></td>
                    </tr>
                    <% } %>
                </table>
            </div>
        </div>
        
        <%@include file="footer.jsp" %>
    </body>
</html>
