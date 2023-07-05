<%-- 
    Document   : register
    Created on : May 21, 2022, 10:36:18 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/tables.css"/>
        <title>Register Page</title>
    </head>
    <body>
        <%
            String mg = (String)request.getAttribute("mg");
            String sucess = (String)request.getAttribute("success");
            
        %>
        <div class="popup">
           <div class="popup-content">
               <form action="SmsVerific.do" method="GET">
                   <div class="input-field">OPT</div>
                    <div class="input-field">
                    <input type="text" name="name" placeholder="OPT" required/>
                    <i class="fa-solid fa-graduation-cap"></i>
                    </div>

                    <div class="input-field button">
                    <input type="submit" value="Send" />
                    </div>                        
                </form>   
           </div>
       </div>
    </body>
</html>
