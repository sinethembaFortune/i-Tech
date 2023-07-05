/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Base64;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.business.AdminFacadeLocal;
import za.ac.tut.business.CompanyFacadeLocal;
import za.ac.tut.business.StudentFacadeLocal;
import za.ac.tut.entity.Address;
import za.ac.tut.entity.Admin;
import za.ac.tut.entity.Company;
import za.ac.tut.entity.Student;

/**
 *
 * @author hp
 */
public class StudentRegister extends HttpServlet {

    @EJB
    private AdminFacadeLocal adminFacade;

    @EJB
    private CompanyFacadeLocal companyFacade;

    @EJB
    private StudentFacadeLocal studentFacade;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String surname = request.getParameter("surname");
        Integer studNum = Integer.parseInt(request.getParameter("studNum"));
        Integer phone = Integer.parseInt(request.getParameter("phone"));
        
        String loc;
        if(email.contains("tut4life")){
            Student student = registerStudent(name, email, surname, password, studNum, phone);
            
            studentFacade.create(student);
            loc = "register.jsp";           
            String text = "<h4> Dear applicant,<br> By this email, your registration has been successfully <br> received. Thank you for your support. <br>Kind regards.<br>   <b>i-TECH Group</b> </h4>";
            String reg = "register.jsp";            
            String mg = "index.html";
            
            request.setAttribute("name",name);
            request.setAttribute("surname",surname);
            request.setAttribute("password",password);
            request.setAttribute("studNum",studNum);
            request.setAttribute("phone",phone);
            request.setAttribute("reg", reg);
            request.setAttribute("mg", mg);
            request.setAttribute("email", email);
            request.setAttribute("text", text);

            request.setAttribute("success", "Register sucessful!");
        }else {
            loc = "error.jsp";
            String mg = "studentregister.jsp";
            request.setAttribute("mg", mg);

            request.setAttribute("success", "Wrong email!");
        }
        
        RequestDispatcher dis = request.getRequestDispatcher(loc);
        dis.forward(request, response);
    }

    private Student registerStudent(String name, String email, String surname, String password, Integer staffNum, Integer phone) {
        Student studnet = new Student();
        
        studnet.setId(email);
        studnet.setName(name);
        studnet.setPhone(phone);
        studnet.setStudNum(staffNum);
        studnet.setSurname(surname);
        studnet.setPassword(password);
        return studnet;
    }

    private Company registerStudent(String name, String email, Address address, String password) {
        Company company = new Company();
        
        company.setAddress(address);
        company.setName(name);
        company.setPassword(password);
        company.setId(email);
        company.setApproval("Pending");
        
        return company;
    }

    private Address registerAddress(String buildName, String streetName, String town, Integer code) {
        Address address = new Address();
        
        address.setBuildName(buildName);
        address.setCode(code);
        address.setTown(town);
        address.setStreetName(streetName);
        
        return address;
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
    
    public static void sms(String phone) throws MalformedURLException, IOException{
        String myURI = "https://api.bulksms.com/v1/messages";

        // change these values to match your own account
        String myUsername = "jobralets";
        String myPassword = "KsmLjPmm694.";
        
        String rand = "";
        
        for(int i = 0; i < 5; i++){
            rand = rand +(int)Math.floor(Math.random() * 10); 
        }
        

        // the details of the message we want to send
        String myData = "{to: \""+phone+"\", encoding: \"UNICODE\", body: \"Verification code:"+rand+"\"}";

        // if your message does not contain unicode, the "encoding" is not required:
        // String myData = "{to: \"1111111\", body: \"Hello Mr. Smith!\"}";

        // build the request based on the supplied settings
        URL url = new URL(myURI);
        HttpURLConnection request = (HttpURLConnection) url.openConnection();
        request.setDoOutput(true);

        // supply the credentials
        String authStr = myUsername + ":" + myPassword;
        String authEncoded = Base64.getEncoder().encodeToString(authStr.getBytes());
        request.setRequestProperty("Authorization", "Basic " + authEncoded);

        // we want to use HTTP POST
        request.setRequestMethod("POST");
        request.setRequestProperty( "Content-Type", "application/json");

        // write the data to the request
        OutputStreamWriter out = new OutputStreamWriter(request.getOutputStream());
        out.write(myData);
        out.close();

        // try ... catch to handle errors nicely
        try {
          // make the call to the API
          InputStream response = request.getInputStream();
          BufferedReader in = new BufferedReader(new InputStreamReader(response));
          String replyText;
          while ((replyText = in.readLine()) != null) {
            System.out.println(replyText);
          }
          in.close();
        } catch (IOException ex) {
          System.out.println("An error occurred:" + ex.getMessage());
          BufferedReader in = new BufferedReader(new InputStreamReader(request.getErrorStream()));
          // print the detail that comes with the error
          String replyText;
          while ((replyText = in.readLine()) != null) {
            System.out.println(replyText);
          }
          in.close();
        }
        request.disconnect();
    }
}
