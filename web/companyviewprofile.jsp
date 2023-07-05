<%-- 
    Document   : companyviewprofile
    Created on : May 19, 2022, 12:56:40 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="CSS/register.css"/>         <!--
        <link rel="stylesheet" href="CSS/tables.css"/>-->
    <script src="https://kit.fontawesome.com/ad78bb0d17.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <%
            String name = (String)session.getAttribute("name");
            Integer phone = (Integer)session.getAttribute("phone");
            String email = (String)session.getAttribute("email");
            String password = (String)session.getAttribute("password");
            String buildName = (String)session.getAttribute("buildName");
            String streetName = (String)session.getAttribute("streetName");
            String town = (String)session.getAttribute("town");
            Integer code = (Integer)session.getAttribute("code");
        %>
        <div class="container"> 
            <div class="forms">
                <div class="form login">
                    <span class="title"> Profile</span>
                    <form action="ComapnyEditProfileServlet.do" method="POST">
                        <div class="input-field">
                        <input type="text" name="name" value="<%=name%>" required/>
                        <i class="fas fa-user" ></i>
                        </div>
                        <div class="input-field">
                        <input type="email" name="email" value="<%=email%>" required/>
                        <i class="fa-solid fa-envelope"></i>
                        </div>
                        <div class="input-field">
                        <input type="text" name="phone" value="<%=phone%>" required/>
                        <i class="fa-solid fa-phone-flip"></i>
                        </div>
                        <div class="input-field">
                        <input type="password" name="password" value="<%=password%>" required/>
                        <i class="fa-solid fa-lock"></i>
                        </div>
                        <div class="input-field">
                        <input type="text" name="buildName" value="<%=buildName%>" required/>
                        <i class="fa-solid fa-building"></i>
                        </div>
                        <div class="input-field">
                        <input type="text" name="streetName" value="<%=streetName%>" required/>
                        <i class="fa-solid fa-road"></i>
                        </div>
                        <div class="input-field">
                        <input type="text" name="town" value="<%=town%>" required/>
                        <i class="fa-solid fa-city"></i>
                        </div>
                        <div class="input-field">
                        <input type="text" name="code" value="<%=code%>" required/>
                        <i class="fa-solid fa-location-dot"></i>
                        </div>
<!--                        <div class="checkbox-text" >
                            <div class="checkbox-content" >
                                <input type="checkbox" id="logCheck"/>
                                <label for="logCheck" class="text">Remember me</label>
                                  </div>
                        
                        </div>-->
                        <div class="input-field button">
                        <input type="submit" value="Edit" />
                        </div>
                        
                    </form> 
                    
                </div>
                
            </div>
            
        </div>
    </body>
</html>

<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>-->
