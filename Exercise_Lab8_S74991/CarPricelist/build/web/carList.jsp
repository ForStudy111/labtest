<%-- 
    Document   : carList
    Created on : Jun 2, 2026, 9:36:24 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Car Shop Management</title>

        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
              crossorigin="anonymous">

    </head>

    <body>

        <header>
            <nav class="navbar navbar-expand-md navbar-dark"
                 style="background-color: steelblue">

                <div>
                    <a href="" class="navbar-brand">
                        Car Shop Management
                    </a>
                </div>

                <ul class="navbar-nav">
                    <li>
                        <a href="<%=request.getContextPath()%>/list" class="nav-link">Cars</a>
                    </li>
                </ul>

            </nav>
        </header>

        <br>

        <div class="row">
            <div class="container">
                <h3 class="text-center">Car Price List</h3>
                <hr>
                <div class="container text-left">
                    <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New Car</a>
                </div>
                <br>

                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Brand</th>
                            <th>Model</th>
                            <th>Cyclinder</th>
                            <th>Price (RM)</th>
                            <th>Actions</th>
                        </tr>
                    </thead>

                    <tbody>

                        <c:forEach var="car"
                                   items="${listCars}">

                            <tr>

                                <td>
                                    <c:out value="${car.car_id}" />
                                </td>

                                <td>
                                    <c:out value="${car.brand}" />
                                </td>

                                <td>
                                    <c:out value="${car.model}" />
                                </td>

                                <td>
                                    <c:out value="${car.cyclinder}" />
                                </td>

                                <td>
                                    <c:out value="${car.price}" />
                                </td>

                                <td>
                                    <a href="edit?id=<c:out value='${car.car_id}' />">
                                        Edit
                                    </a>
                                    &nbsp;&nbsp;&nbsp;
                                    <a href="delete?id=<c:out value='${car.car_id}' />">
                                        Delete
                                    </a>
                                </td>
                                
                            </tr>

                        </c:forEach>

                    </tbody>

                </table>
            </div>
        </div>
    </body>
</html>
