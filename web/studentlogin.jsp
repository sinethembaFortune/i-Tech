<%-- 
    Document   : StudentLogin
    Created on : May 14, 2022, 9:24:04 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Student Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="CSS/log.css"/>
        <script src="https://kit.fontawesome.com/ad78bb0d17.js" crossorigin="anonymous"></script>
         </head>
    <body>
        <div class="container"> 
            <div class="forms">
                <div class="form login">
                    <span class="title">Login</span>
                    <form action="StudentLogin.do" method="POST" onclick="sweert()">
                        <div class="input-field">
                        <input type="email" name="email" placeholder="Enter your username" required/>
                        <i class="fas fa-user" ></i>
                        </div>
                        <div class="input-field">
                        <input type="password" name="password" placeholder="Enter your password" required/>
                        <i class="fa-solid fa-lock"></i>
                        </div>
                        <div class="checkbox-text" >
                            <div class="checkbox-content" >
                                <input type="checkbox" id="logCheck"/>
                                <label for="logCheck" class="text">Remember me</label>
                                  </div>
                            <a href="forgortpassword.jsp">Forgot password?</a> 
                        </div>
                        <div class="input-field button">
                            <input type="submit" value="Login now" />
                        </div>
                        
                    </form onclick="sweert()">
                    <div class="login-signup">
                        <span class="text">Not a student?</span>
                        <a href="registerselection.jsp" class="text signup">Sign up now!</a>
                        
                    </div>
                    
                </div>
                
            </div>
            
        </div>
        <script>
            function sweert(){
                swal('Nice', 'Sucess', 'success');
            }
        </script>
    </body>
</html>

<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Student Login</h1>
        <form action="StudentLogin.do" method="POST">
            <table>
                <tr>
                    <td>Student Email</td>
                    <td><input type="email" name="email"/></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="Login"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>-->
