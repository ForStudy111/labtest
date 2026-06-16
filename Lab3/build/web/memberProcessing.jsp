<%-- 
    Document   : memberProcessing
    Created on : Apr 14, 2026, 2:47:32 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <title>Lab 3- Task 1</title>
    </head>
    <body>
        <h2>Passing data from main JSP page to another JSP page</h2>
    </body>
</html>

<fieldset>
    <%
        //define variables..
        String myIC = null;
        String myName = null;

        /* use request.getParameter() method to retrieve data from the form
        in memberRegister.jsp*/
        myIC = request.getParameter("my_icno");
        myName = request.getParameter("my_name");
    %>

    <!-- display the output-->
    <p>Thank you for registering in this event..!</p>
    <p>This is your details:</p>
    <p>IC No : <%= myIC %></p>
    <p>Name : <%= myName %></p>
</fieldset>
