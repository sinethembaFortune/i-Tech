<%-- 
    Document   : loginsucess
    Created on : May 20, 2022, 7:22:13 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/tables.css"/>
        <title>Sucess Page</title>
    </head>
    <body>
        <%
            String mg = (String)request.getAttribute("mg");
            String sucess = (String)request.getAttribute("success");
        %>
        <div class="popup">
           <div class="popup-content">
               <img src="OI.png" alt="user">
               <label class="question"><%=sucess%></label>
               <a href="<%=mg %>" value="o" class="button" >OK</a>
           </div>
       </div>
    </body>
</html>
