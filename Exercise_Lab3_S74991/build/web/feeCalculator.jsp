<%-- 
    Document   : feeCalculator
    Created on : Apr 14, 2026, 4:48:13 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fee Calculator</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        
        <form method="get">
            Number of Activities Joined: <input type="number" name="actCount">
            <input type="submit" value="Calculate Fee">
        </form>
        
        <%
            String countStr = request.getParameter("actCount");
            if(countStr != null) {
                int count = Integer.parseInt(countStr);
                double totalFee = count * 10.0;
        %>
            <h4>Total Fee: RM <%= String.format("%.2f", totalFee) %></h4>
        <% 
            } 
        %>
        
        <%@include file="footer.jsp"%>
    </body>
</html>
