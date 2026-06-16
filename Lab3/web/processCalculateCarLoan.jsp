<%-- 
    Document   : processCalculateCarLoan
    Created on : Apr 14, 2026, 3:47:26 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Loan Result</title>
</head>
<body>
    <h2>Perform Car Loan Calculation</h2>
    <fieldset>
        <h3><font color='blue'>Details of car loan:</font></h3>
        <%
            // Retrieve data from the previous page
            String strAmount = request.getParameter("loanAmount");
            String strPeriod = request.getParameter("loanPeriod");
            
            // Convert Strings to numbers for calculation
            double loanAmount = Double.parseDouble(strAmount);
            int period = Integer.parseInt(strPeriod);
            
            // Logic: Total Loan = Principal + (Principal * Interest Rate * Years)
            // Example interest rate: 4.5% (0.045)
            double interestRate = 0.045; 
            double totalInterest = loanAmount * interestRate * period;
            double totalLoan = loanAmount + totalInterest;
        %>

        <p>Loan Request : <%= loanAmount %></p>
        <p>Period of payment : <%= period %></p>
        <p><strong>Total Loan (+ interest) : <%= totalLoan %></strong></p>
    </fieldset>
    <footer>&copy; 2026-Syaffiq</footer>
</body>
</html>
