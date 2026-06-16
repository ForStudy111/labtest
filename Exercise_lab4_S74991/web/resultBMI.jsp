<%-- 
    Document   : resultBMI
    Created on : Apr 22, 2026, 11:18:44 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMI Result</title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        <%@include file="header.jsp" %> 
        
        <div class="container">
            <div class="card">
                <h2 class="form-title">Your BMI Result</h2>
                
                <% if (request.getParameter("bmiValue") == null) { %>
                <p>Please calculate your BMI first using the calculator.</p>
                <% } else { %>
                
                    <div class="result-group">
                        <label>Calculated BMI:</label>
                        <p><%= String.format("%.2f", Double.parseDouble(request.getParameter("bmiValue"))) %></p>
                    </div>

                    <div class="result-group">
                        <label>Health Category:</label>
                        <p><strong><%= request.getParameter("bmiCategory") %></strong></p>
                    </div>

                    <div class="button-group">
                        <a href="bmiCalculator.jsp" class="btn btn-back"> Calculate Again</a>
                    </div>
                <% } %>
            </div>
        </div>
        
        <%@include file="footer.jsp" %>
        
    </body>
</html>
