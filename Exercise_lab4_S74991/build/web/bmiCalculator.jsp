<%-- 
    Document   : bmiCalculator.jsp
    Created on : Apr 22, 2026, 10:55:47 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMI Calculator</title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        <%@include file="header.jsp" %> 
        
        <div class="container">
            <div class="card">
                <h2 class="form-title">BMI calculator</h2>
                <form action="processBMI.jsp" method="POST">
                    <div class="form-group">
                        <label for="weight">Weight (kg)</label>
                        <input type="number" id="weight" name="weight" step="0.01" required>
                    </div>
                
                    <div class="form-group">
                        <label for="height">Height (m)</label>
                        <input type="number" id="height" name="height" step="0.01" required>
                    </div>
                        
                    <div class="button-group">
                        <button type="submit" class="btn btn-submit">Submit</button>
                        <button type="reset" class="btn btn-cancel">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
        
        <%@include file="footer.jsp" %>
    </body>
</html>
