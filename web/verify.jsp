<%-- 
    Document   : verify
    Created on : Feb 28, 2023, 11:18:06 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>verify Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String name = (String)request.getAttribute("name");
            String surname = (String)request.getAttribute("surname");
            Integer phone = (Integer)request.getAttribute("phone");
            String email = (String)request.getAttribute("email");
            String studNum = (String)request.getAttribute("studNum");
            String sms = (String)request.getAttribute("sms");
            
//            request.setAttribute("name", name);
//            request.setAttribute("surname", surname);
//            request.setAttribute("phone", phone);
//            request.setAttribute("email", email);
//            request.setAttribute("studNum", studNum);
//            request.setAttribute("sms", sms);
        %>
        
        <form action="SmsVerify.do" method="GET">
            <div class="input-field">
            <input type="text" name="opt" placeholder="OPT" required/>
            <i class="fa-solid fa-phone-flip"></i>
            </div>
            <div class="input-field button">
            <input type="submit" value="Verify" />
            </div>

        </form> 
    </body>
</html>
