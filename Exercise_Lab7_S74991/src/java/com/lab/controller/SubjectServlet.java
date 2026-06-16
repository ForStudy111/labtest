/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.lab.controller;

import com.lab.bean.StudentBean;
import com.lab.bean.SubjectBean;
import com.lab.dao.SubjectDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author wpy92
 */
public class SubjectServlet extends HttpServlet {

    private SubjectDAO subjectDAO = new SubjectDAO();

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
            out.println("<title>Servlet SubjectServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SubjectServlet at " + request.getContextPath() + "</h1>");
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
        
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("loggedUser") == null) {
            response.sendRedirect("login.html");
            return;
        }

        String action = request.getParameter("action");

        if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            subjectDAO.deleteSubject(id);
            response.sendRedirect("subject/viewSubjects.jsp");
        } else if ("edit".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            SubjectBean subject = subjectDAO.getSubject(id);
            request.setAttribute("subject", subject);
            RequestDispatcher rd = request.getRequestDispatcher("/subject/updateSubject.jsp");
            rd.forward(request, response);
        }
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
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("loggedUser") == null) {
            response.sendRedirect("login.html");
            return;
        }

        // Retrieve identity directly from Session as per instructions
        StudentBean user = (StudentBean) session.getAttribute("loggedUser");
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            SubjectBean subject = new SubjectBean();
            subject.setMatricNo(user.getMatricNo()); // Identity enforcement
            subject.setSubjectCode(request.getParameter("subjectCode"));
            subject.setSubjectName(request.getParameter("subjectName"));
            subjectDAO.addSubject(subject);
            response.sendRedirect("subject/viewSubjects.jsp");
        } 
        else if ("update".equals(action)) {
            SubjectBean subject = new SubjectBean();
            subject.setId(Integer.parseInt(request.getParameter("id")));
            subject.setSubjectCode(request.getParameter("subjectCode"));
            subject.setSubjectName(request.getParameter("subjectName"));
            subjectDAO.updateSubject(subject);
            response.sendRedirect("subject/viewSubjects.jsp");
        }
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
