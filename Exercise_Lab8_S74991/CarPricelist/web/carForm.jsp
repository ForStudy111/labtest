<%-- 
    Document   : carForm.jsp
    Created on : Jun 2, 2026, 9:33:49 PM
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
                        <a href="<%=request.getContextPath()%>/list"
                           class="nav-link">Cars</a>
                    </li>
                </ul>

            </nav>
        </header>

        <br>

        <div class="container col-md-5">
            <div class="card">
                <div class="card-body">

                    <c:if test="${car != null}">
                        <form action="update" method="post">
                        </c:if>

                        <c:if test="${car == null}">
                            <form action="insert" method="post">
                            </c:if>

                            <h2>

                                <c:if test="${car != null}">
                                    Edit Car
                                </c:if>

                                <c:if test="${car == null}">
                                    Add New Car
                                </c:if>

                            </h2>

                            <c:if test="${car != null}">
                                <input type="hidden"
                                       name="id"
                                       value="<c:out value='${car.car_id}' />" />
                            </c:if>

                            <fieldset class="form-group">

                                <label>Brand</label>

                                <input type="text"
                                       class="form-control"
                                       name="brand"
                                       value="<c:out value='${car.brand}' />"
                                       required="required">

                            </fieldset>

                            <fieldset class="form-group">

                                <label>Model</label>

                                <input type="text"
                                       class="form-control"
                                       name="model"
                                       value="<c:out value='${car.model}' />"
                                       required="required">

                            </fieldset>

                            <fieldset class="form-group">

                                <label>Cyclinder</label>

                                <input type="number"
                                       class="form-control"
                                       name="cyclinder"
                                       value="<c:out value='${car.cyclinder}' />"
                                       required="required">

                            </fieldset>

                            <fieldset class="form-group">

                                <label>Price (RM)</label>

                                <input type="number"
                                       step="0.01"
                                       class="form-control"
                                       name="price"
                                       value="<c:out value='${car.price}' />"
                                       required="required">

                            </fieldset>

                            <button type="submit" class="btn btn-success">
                                Save
                            </button>

                        </form>

                </div>

            </div>

        </div>

    </body>
</html>
