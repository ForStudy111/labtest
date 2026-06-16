<%-- 
    Document   : insertAuthor
    Created on : May 12, 2026, 3:55:22 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Author Page</title>
    </head>
    <body>
        <h1>Lab 6 - Task2 - Perform creating and retrieving records via JSP page</h1>

        <form action="processAuthor.jsp" method="post">

            <fieldset>
                <legend>Author Registration</legend>

                <table>
                    <tr>
                        <td><label for="authno">Author No</label></td>
                        <td><input type="text" id="authno" name="authno" placeholder="E.g.: UKXXXXX" required></td>
                    </tr>
                    <tr>
                        <td><label for="name">Name</label></td>
                        <td><input type="text" id="name" name="name" placeholder="Enter your name" required></td>
                    </tr>
                    <tr>
                        <td><label for="address">Address</label></td>
                        <td><input type="text" id="address" name="address" placeholder="Enter your address" required></td>
                    </tr>

                    <tr>
                        <td><label for="city">City</label></td>
                        <td><input type="text" id="city" name="city" placeholder="Enter your city" required></td>
                    </tr>

                    <tr>
                        <td><label for="state">State</label></td>
                        <td><input type="text" id="state" name="state" placeholder="Enter your state" required></td>
                    </tr>
                    <tr>
                        <td><label for="zip">Zip</label></td>
                        <td><input type="text" id="zip" name="zip" placeholder="Enter your zip" required></td>
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
        <br>

        <footer>&copy; 2025 FSKM</footer>
    </body>
</html>
