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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hp
 */
public class Verify extends HttpServlet {
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String surname = request.getParameter("surname");
        Integer studNum = Integer.parseInt(request.getParameter("studNum"));
        Integer phone = Integer.parseInt(request.getParameter("phone"));
        System.out.print(phone);
        String rand = "";
        
        for(int i = 0; i < 5; i++){
            rand = rand +(int)Math.floor(Math.random() * 10); 
        }
        
        sms(phone, rand);
        
        request.setAttribute("name",name);
        request.setAttribute("surname",surname);
        request.setAttribute("password",password);
        request.setAttribute("studNum",studNum);
        request.setAttribute("phone",phone);
        request.setAttribute("email", email);
        request.setAttribute("sms", rand);
        
        RequestDispatcher dis = request.getRequestDispatcher("verification.jsp");
        dis.forward(request, response);
    }

    public static void sms(Integer phone, String rand) throws MalformedURLException, IOException{
        String myURI = "https://api.bulksms.com/v1/messages";

        String myUsername = "lljletsoalo";
        String myPassword = "KsmLjPmm694.";
        
        
        
        String myData = "{to: \"+27661516149\", encoding: \"UNICODE\", body: \"Verification code:"+rand+"\"}";

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
