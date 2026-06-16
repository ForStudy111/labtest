<%-- 
    Document   : payroll_view
    Created on : Apr 29, 2026, 4:49:55 PM
    Author     : wpy92
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Payroll Management Portal</h1>
        <table border="1" cellpadding="8">
        <thead>
            <tr style="background-color: lightgray;">
                <th>No.</th>
                <th>EmpId</th>
                <th>Name</th>
                <th>Department</th>
                <th>BasicSalary</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${employeeList}" var="employee" varStatus="status">
                <tr>
                    <td>${status.count}</td>
                    <td>${employee.empId}</td>
                    <td>${employee.name}</td>
                    <td>${employee.department}</td>
                    <td>RM ${employee.basicSalary}</td>
                    <td>
                        <c:choose>
                            <c:when test="${employee.basicSalary >= 3000}">Senior</c:when>
                            <c:otherwise>Junior</c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
        </table>
    </body>
</html>
