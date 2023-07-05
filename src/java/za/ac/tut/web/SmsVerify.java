/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entity.Student;

/**
 *
 * @author hp
 */
public class SmsVerify extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String opt = request.getParameter("name");
        
        String loc;
        if(opt.contains("36925") || opt=="12345" || opt=="741257" || opt=="14785" || opt=="85214"){
                        
            loc = "register.jsp";           
           
            String reg = "register.jsp";            
            String mg = "index.html";            
            request.setAttribute("reg", reg);
            request.setAttribute("mg", mg);

            request.setAttribute("success", "Register sucessful!");
        }else {
            loc = "error.jsp";
            String mg = "studentregister.jsp";
            request.setAttribute("mg", mg);

            request.setAttribute("success", "Wrong OPT!");
        }
        
        RequestDispatcher dis = request.getRequestDispatcher(loc);
        dis.forward(request, response);
    }

}
