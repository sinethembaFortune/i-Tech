/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
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
public class StudentEditServlet extends HttpServlet {

    @EJB
    private StudentFacadeLocal studentFacade;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String newName = request.getParameter("name");
        String newSurname = request.getParameter("surname");
        String newPassword = request.getParameter("password");
        String newPhone = request.getParameter("phone");
        String newStudNum = request.getParameter("studNum");
        String email = (String)session.getAttribute("email");
        
        
        Student student = studentFacade.find(email);
                
        if(newName != null){
            String password = newPassword;
            String name = newName;
            String surname = newSurname;
            Integer phone = Integer.parseInt(newPhone);
            Integer studNum = Integer.parseInt(newStudNum);
            
            student.setName(name);
            student.setPassword(password);
            student.setSurname(surname);
            student.setPhone(phone);
            student.setStudNum(studNum);
            
            session.setAttribute("name", name);
            session.setAttribute("surname", surname);
            session.setAttribute("password", password);
            session.setAttribute("phone",phone);
            session.setAttribute("studNum",studNum);
            
            studentFacade.edit(student);
        }
        if(newSurname != null){
            String password = newPassword;
            String name = newName;
            String surname = newSurname;
            Integer phone = Integer.parseInt(newPhone);
            Integer studNum = Integer.parseInt(newStudNum);
            
            student.setName(name);
            student.setPassword(password);
            student.setSurname(surname);
            student.setPhone(phone);
            student.setStudNum(studNum);
            
            session.setAttribute("name", name);
            session.setAttribute("surname", surname);
            session.setAttribute("password", password);
            session.setAttribute("phone",phone);
            session.setAttribute("studNum",studNum);
            
            studentFacade.edit(student);
        }
        if(newPassword != null){
            String password = newPassword;
            String name = newName;
            String surname = newSurname;
            Integer phone = Integer.parseInt(newPhone);
            Integer studNum = Integer.parseInt(newStudNum);
            
            student.setName(name);
            student.setPassword(password);
            student.setSurname(surname);
            student.setPhone(phone);
            student.setStudNum(studNum);
            
            session.setAttribute("name", name);
            session.setAttribute("surname", surname);
            session.setAttribute("password", password);
            session.setAttribute("phone",phone);
            session.setAttribute("studNum",studNum);
            
            studentFacade.edit(student);
        }
        if(newStudNum != null){
            String password = newPassword;
            String name = newName;
            String surname = newSurname;
            Integer phone = Integer.parseInt(newPhone);
            Integer studNum = Integer.parseInt(newStudNum);
            
            student.setName(name);
            student.setPassword(password);
            student.setSurname(surname);
            student.setPhone(phone);
            student.setStudNum(studNum);
            
            session.setAttribute("name", name);
            session.setAttribute("surname", surname);
            session.setAttribute("password", password);
            session.setAttribute("phone",phone);
            session.setAttribute("studNum",studNum);
            
            studentFacade.edit(student);
        }
        if(newPhone != null){
            String password = newPassword;
            String name = newName;
            String surname = newSurname;
            Integer phone = Integer.parseInt(newPhone);
            Integer studNum = Integer.parseInt(newStudNum);
            
            student.setName(name);
            student.setPassword(password);
            student.setSurname(surname);
            student.setPhone(phone);
            student.setStudNum(studNum);
            
            session.setAttribute("name", name);
            session.setAttribute("surname", surname);
            session.setAttribute("password", password);
            session.setAttribute("phone",phone);
            session.setAttribute("studNum",studNum);
            
            studentFacade.edit(student);
        }
        
        
        RequestDispatcher dis = request.getRequestDispatcher("studentprofile.jsp");
        dis.forward(request, response);
    }

}
