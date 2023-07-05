<%-- 
    Document   : studenteditprofile
    Created on : May 14, 2022, 11:46:09 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Student Edit Profile Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="CSS/edit.css"/>
    <script src="https://kit.fontawesome.com/ad78bb0d17.js" crossorigin="anonymous"></script>
         </head>
        <body>
            <%
            String name = (String)session.getAttribute("name");
            String surname = (String)session.getAttribute("surname");
            Integer phone = (Integer)session.getAttribute("phone");
            String email = (String)session.getAttribute("email");
            Integer studNum = (Integer)session.getAttribute("studNum");
            String password = (String)session.getAttribute("password");
        %>
        <div class="container"> 
            <div class="forms">
                <div class="form login">
                    <span class="title"> Profile</span>
                    <form action="StudentEditServlet.do" method="POST">
                        <div class="input-field">
                        <input type="text" name="studNum" value="<%=studNum%>" required/>
                        <i class="fa-solid fa-graduation-cap"></i>
                        </div>
                        <div class="input-field">
                        <input type="text" name="name" value="<%=name%>" required/>
                        <i class="fas fa-user" ></i>
                        </div>
                        <div class="input-field">
                        <input type="text" name="surname" value="<%=surname%>" required/>
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
<!--                        <div class="checkbox-text" >
                            <div class="checkbox-content" >
                                <input type="checkbox" id="logCheck"/>
                                <label for="logCheck" class="text">Remember me</label>
                                  </div>
                        
                        </div>-->
                        <div class="input-field button">
                        <input type="submit" value="Edit now" />
                        </div>
                        
                    </form> 
                    
                </div>
                
            </div>
            
        </div>
    </body>
</html>
<form>
<!--            <p><a href="StudentRemoveStudent.do">Delete Account</a></p>-->
        </form>

<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Student Edit Profile</h1>
        
        
        <form  action="StudentEditServlet.do" method="POST">
            <table>
                <tr>
                    <td>Student Number</td>
                    <td><input type="text" name="studNum" value="<%=studNum%>"/></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" value="<%=name%>"/></td>
                </tr>
                <tr>
                    <td>Surname</td>
                    <td><input type="text" name="surname" value="<%=surname%>"/></td>
                </tr>
                <tr>
                    <td>Phone Number:</td>
                    <td><input type="text" name="phone" value="<%=phone%>"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" value="<%=password%>"/></td>
                </tr>
                <tr>
                    <td><input type="submit" name="EDIT"/></td>
                </tr>
            </table>
        </form>
                
            <p><a href="studentprofile.jsp">Cancel</a></p>
                
        <form>
            <p><a href="StudentRemoveStudent.do">Delete Account</a></p>
        </form>
    </body>
</html>-->
