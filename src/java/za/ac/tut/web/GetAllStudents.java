/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.business.StudentFacadeLocal;
import za.ac.tut.entity.Student;

/**
 *
 * @author hp
 */
public class GetAllStudents extends HttpServlet {

    @EJB
    private StudentFacadeLocal studentFacade;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        
        List<Student> allStudents = studentFacade.findAll();
        session.setAttribute("allStudents", allStudents);
        
        RequestDispatcher dis = request.getRequestDispatcher("getallstudents.jsp");
        dis.forward(request, response);
    }

}
