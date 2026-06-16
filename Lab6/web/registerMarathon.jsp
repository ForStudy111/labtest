<%-- 
    Document   : registerMarathon
    Created on : May 13, 2026, 3:35:32 AM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Marathon Form</title>
    </head>
    <body>
        <form id="studentFrm" action="processMarathon.jsp" method="POST">
            <fieldset>
                <legend>Marathon Registration</legend>
                <table>
                    <tr>
                        <td><label for="icno">IC No</label></td>
                        <td><input type="text" id="icno" name="icno" placeholder="E.g.: 921110-10-2514" required></td>
                    </tr>
                    <tr>
                        <td><label for="name">Name</label></td>
                        <td><input type="text" id="name" name="name" placeholder="Enter your name" required></td>
                    </tr>
                    <tr>
                        <td><label for="category">Category</label></td>

                        <td>
                            <select id="category" name="category">
                                <option value="5 KM">5 KM</option>
                                <option value="7 KM">7 KM</option>
                                <option value="10 KM">10 KM</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Submit">
                            <input type="reset" value="Cancel">
                        <td>
                        <td></td>
                    </tr>
                </table>
            </fieldset>
        </form>

        <footer>&copy;2026 FSKM</footer>
    </body>
</html>
