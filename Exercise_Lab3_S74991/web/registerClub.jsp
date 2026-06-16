<%-- 
    Document   : registerClub
    Created on : Apr 14, 2026, 4:44:24 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Club Registration Form</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        
        <h2>Club Registration Form</h2>
        <form action="processRegistration.jsp" method="post">
            
            <label for="stuName">Name: </label>
            <input type="text" id="stuName" name="stuName" required><br><br>
            
            <label for="stuMatric">Matric Number: </label>
            <input type="text" id="stuMatric" name="stuMatric" required><br><br>
            
            <label for="stuClub">Selected Club: </label>
            <select id="stuClub" name="stuClub" >
                <option value="CS Club">CS Club</option>
                <option value="Math Society">Math Society</option>
                <option value="AI League">AI League</option>
            </select><br><br>
            
            <input type="submit" value="Register">
        </form>
        
        <%@include file="footer.jsp"%>
    </body>
</html>
