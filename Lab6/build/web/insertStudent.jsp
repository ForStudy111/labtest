<%-- 
    Document   : insertStudent
    Created on : May 12, 2026, 10:40:50 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 - Task 3</title>
    </head>
    <body>
        <form id="studentFrm" action="processStudent.jsp" method="POST">
            <fieldset>
                <legend>Student Registration</legend>
                <table>
                    <tr>
                        <td><label for="stuno">Student No</label></td>
                        <td><input type="text" id="stuno" name="stuno" placeholder="E.g.: UKXXXXX" required></td>
                    </tr>
                    <tr>
                        <td><label for="name">Name</label></td>
                        <td><input type="text" id="name" name="name" placeholder="Enter your name" required></td>
                    </tr>
                    <tr>
                        <td><label for="program">Program</label></td>

                        <td>
                            <select id="program" name="program">
                                <option value="BSc. Soft. Eng.">BSc. Soft. Eng.</option>
                                <option value="BSc. with IM">BSc. with IM</option>
                                <option value="BSc. in Networking">BSc. in Networking</option>
                                <option value="BSc. in Robotics">BSc. in Robotics</option>
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
