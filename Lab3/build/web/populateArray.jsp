<%-- 
    Document   : populateArray
    Created on : Apr 14, 2026, 3:18:27 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Populate Array</title>
        <style>
            table {
                border-collapse: collapse;
                margin-top: 20px;
            }
            
            th, td {
                border: 1px solid #000;
                padding: 8px 15px;
                text-align: center;
            }
            
            th {
                background-color: #e0c97f;
            }
        </style>
    </head>
    <body>
        <h2>Read Java array and populate it into HTML table.</h2>
        <%
            // 2D array
            int[][] sales = {
                {2500, 2100, 2200},
                {2000, 1900, 2400},
                {1800, 2200, 2450}
            };

            String[] salesman = {"Salesman 1", "Salesman 2", "Salesman 3"};
        %>

        <table>
            <tr>
                <th>Salesman</th>
                <th>Jan</th>
                <th>Feb</th>
                <th>Mar</th>
            </tr>

            <%
                for (int i = 0; i < sales.length; i++) {
            %>
                <tr>
                    <td><%= salesman[i] %></td>
                    <td><%= sales[i][0] %></td>
                    <td><%= sales[i][1] %></td>
                    <td><%= sales[i][2] %></td>
                </tr>
            <%
                }
            %>

</table>

    </body>
</html>
