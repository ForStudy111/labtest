package com.lab.controller;

import com.lab.dao.ProductDAO;
import com.lab.model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewProductServlet extends HttpServlet {

    private ProductDAO dao;
    
    @Override
    public void init() {
        dao = new ProductDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        List<Product> list = dao.selectAllProducts();

        out.println("<h2>Product List</h2>");
        out.println("<table border='1'>");
        out.println("<tr><th>ID</th><th>Name</th><th>Category</th><th>Price</th><th>Qty</th><th>Action</th></tr>");

        for (Product p : list) {
            out.println("<tr>");
            out.println("<td>" + p.getId() + "</td>");
            out.println("<td>" + p.getName() + "</td>");
            out.println("<td>" + p.getCategory() + "</td>");
            out.println("<td>" + p.getPrice() + "</td>");
            out.println("<td>" + p.getQuantity() + "</td>");
            out.println("<td>");
            out.println("<a href='UpdateProductServlet?id=" + p.getId() + "'>Edit</a> | ");
            out.println("<a href='DeleteProductServlet?id=" + p.getId() + "'>Delete</a>");
            out.println("</td>");
            out.println("</tr>");
        }

        out.println("</table>");
        out.println("<br><a href='add_product.html'>Add Product</a>");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response); // Redirect POST to GET
    }

    @Override
    public String getServletInfo() {
        return "ViewServlet displays all users";
    }
}
