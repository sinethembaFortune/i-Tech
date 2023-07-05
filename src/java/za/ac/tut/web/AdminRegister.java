/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.business.AdminFacadeLocal;
import za.ac.tut.entity.Admin;

/**
 *
 * @author hp
 */
public class AdminRegister extends HttpServlet {

    @EJB
    private AdminFacadeLocal adminFacade;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String surname = request.getParameter("surname");
        Integer staffNum = Integer.parseInt(request.getParameter("staffNum"));
        Integer phone = Integer.parseInt(request.getParameter("phone"));
        
        String loc;
        if(email.contains("tut.ac.za")){
            Admin admin = registerAdmin(name, email, surname, password, staffNum, phone);

            adminFacade.create(admin);

            loc = "adminprofile.jsp";    
            String mg = ".jadminprofilesp";
            request.setAttribute("mg", mg);
            String reg = "register.jsp";  

            request.setAttribute("reg", reg);
            request.setAttribute("mg", mg);
            request.setAttribute("email", email);

            request.setAttribute("success", "Register sucessful!");
        }else {
            loc = "error.jsp";
            String mg = "adminprofile.jsp";
            request.setAttribute("mg", mg);

            request.setAttribute("success", "Wrong email!");
        }
        
        RequestDispatcher dis = request.getRequestDispatcher(loc);
        dis.forward(request, response);
    }

    private Admin registerAdmin(String name, String email, String surname, String password, Integer staffNum, Integer phone) {
        Admin admin = new Admin();
        
        admin.setId(email);
        admin.setName(name);
        admin.setPhone(phone);
        admin.setStaffNum(staffNum);
        admin.setSurname(surname);
        admin.setPassword(password);
        
        return admin;
    }
}
