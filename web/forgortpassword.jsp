<%-- 
    Document   : forgortpassword
    Created on : May 19, 2022, 2:56:02 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="CSS/login.css"/>
        <script src="https://kit.fontawesome.com/ad78bb0d17.js" crossorigin="anonymous"></script>
         </head>
    <body>
        <div class="container"> 
            <div class="forms">
                <div class="form login">
                    <span class="title">Password Reset</span>
                    <form action="PasswordReset.do" method="POST">
                        <div class="input-field">
                        <input type="email" name="email" placeholder="Enter your username" required/>
                        <i class="fas fa-user" ></i>
                        </div>
                        <div class="input-field">
                        <input type="password" name="password" placeholder="Enter your password" required/>
                        <i class="fa-solid fa-lock"></i>
                        </div>
                        <div class="input-field">
                        <input type="password" name="passwordReset" placeholder="Verify your password" required/>
                        <i class="fa-solid fa-lock"></i>
                        </div>
                        <div class="checkbox-text" >
<!--                            <div class="checkbox-content" >
                                <input type="checkbox" id="logCheck"/>
                                <label for="logCheck" class="text">Remember me</label>
                                  </div>
                            <a href="#">Forgot password?</a> -->
                        </div>
                        <div class="input-field button">
                        <input type="submit" value="Rest password" />
                        </div>
                        
                    </form>
<!--                    <div class="login-signup">
                        <span class="text">Not a student?</span>
                        <a href="companyregister.jsp" class="text signup">Sign up now!</a>
                        
                    </div>-->
                    
                </div>
                
            </div>
            
        </div>
</html>

