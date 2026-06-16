/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.lab.controller;

import com.lab.bean.EmployeeBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author wpy92
 */
public class PayrollServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PayrollServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PayrollServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Create a list to hold student objects
        List<EmployeeBean> employeeList = new ArrayList<>();
        
        // Adding sample data
        EmployeeBean e1 = new EmployeeBean();
        e1.setEmpId("S101");
        e1.setName("Aqil");
        e1.setDepartment("A");
        e1.setBasicSalary(3000.00);
        
        EmployeeBean e2 = new EmployeeBean();
        e2.setEmpId("S102");
        e2.setName("Syamil");
        e2.setDepartment("A");
        e2.setBasicSalary(4000.00);
        
        EmployeeBean e3 = new EmployeeBean();
        e3.setEmpId("S103");
        e3.setName("Ali");
        e3.setDepartment("B");
        e3.setBasicSalary(5000.00);
        
        EmployeeBean e4 = new EmployeeBean();
        e4.setEmpId("S104");
        e4.setName("Abu");
        e4.setDepartment("C");
        e4.setBasicSalary(3500.00);
        
        EmployeeBean e5 = new EmployeeBean();
        e5.setEmpId("S105");
        e5.setName("Daniel");
        e5.setDepartment("C");
        e5.setBasicSalary(3800.00);
        
        employeeList.add(e1);
        employeeList.add(e2);
        employeeList.add(e3);
        employeeList.add(e4);
        employeeList.add(e5);
        
        // Share data with JSP
        request.setAttribute("employeeList", employeeList);
        
        // Forward to View
        RequestDispatcher rd = request.getRequestDispatcher("payroll_view.jsp");
        rd.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
