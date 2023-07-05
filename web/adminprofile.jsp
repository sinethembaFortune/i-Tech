<%-- 
    Document   : adminprofile
    Created on : May 14, 2022, 9:27:14 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Administrator Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/student.css"/>
         <link rel="stylesheet" href="CSS/tables.css"/>
         <link rel="stylesheet" href="CSS/stylemain.css"/>
        <script src="https://kit.fontawesome.com/ad78bb0d17.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <%
            String name = (String)session.getAttribute("name");
            String surname = (String)session.getAttribute("surname");
            Integer phone = (Integer)session.getAttribute("phone");
            String email = (String)session.getAttribute("email");
        %>
        <div class="banner" >
            <div class="navbar">
                <nav>
                    <input type="checkbox" id="check"/>
                    <label for="check" class="checkBtn">
                        <i class="fas fa-bars"></i>                        
                    </label>

                    <label class="logo">i-Tech</label>
                
                <ul >
                    <li><a href="adminprofile.jsp" class="active"> <i class="fa-solid fa-house"></i>Home</a></li>
                    <li><a href="adminregister.jsp"><i class="fa-solid fa-users"></i> Add Admin </a></li>
                    <li><a href="ApproveVideoServlet.do"><i class="fa-solid fa-check"></i> Pending Video</a></li>
                    <li><a href="GetAllStudents.do"><i class="fa-solid fa-graduation-cap"></i> Students</a></li>
                    <li><a href="ApproveCompany.do"><i class="fa-solid fa-building"></i>Companies</a></li> 
                    <li><a href="adminviewprofile.jsp"><i class="fa-solid fa-user"></i>  View Profile</a></li>
                    <li><a href="EndSession.do"><i class="fa-solid fa-arrow-right-from-bracket"></i>Log out</a></li>
                </ul>
                </nav>
            </div> 
            <div class="banner-2">
             <div class="left-column">
                 <h1 class="txt">Welcome to <span class="tech">i-Tech</span></h1>
                 <p>Make things <span class="better">better!</span></p>
 
             </div>
<!--                <div class="right-column">
                    <img src="" alt=""/>
                </div> -->
            </div>
       </div>  
        <footer>
            <div class="footer-container">
                <div class="footer">
                    <div class="footer-heading footer-1">
                        <h4>Sponsors</h4>
                        
                            <a href="#">IBM</a>
                            <a href="#">FNB</a>
                            <a href="#">TSHWANE UNIVERSITY OF TECHNOLOGY</a>
                            <a href="#">i-Tech</a>
                    </div> 
                    <div class="footer-heading footer-2">
                        <h4>About us</h4>
                        
                            <a href="#">Contact us</a>
                            <a href="#">Donate</a>
                            <a href="#">Rate</a>
                    </div>
                    <div class="footer-heading footer-3">
                        <h4>Media</h4>
                        
                            <a href="#">Linked in</a>
                            <a href="#"> Facebook</a>
                            <a href="#">Instagram</a> 
                    </div>  
                </div>
            </div>
            </footer> 
    </body>
</html>

<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Admin Profile</h1>
        <%
//            String name = (String)session.getAttribute("name");
//            String surname = (String)session.getAttribute("surname");
//            Integer phone = (Integer)session.getAttribute("phone");
//            String email = (String)session.getAttribute("email");
        %>
        <table>
            <tr>
                <td><%=name%></td>
                <td><%=surname%></td>
            </tr>
        </table>
            
        <ul>
            <li><a href="adminregister.jsp">Admin Register</a></li>
            <li><a href="StartStudentSession.do">Pending Videos</a></li>
            <li><a href="ApproveCompany.do">Approve Register Company</a></li>
            <li><a href="adminviewprofile.jsp">View Profile</a></li>
            <li><a href="companyregister.jsp">Company Registration</a></li>
            <li><a href="GetAllStudents.do">View Students</a></li>
            <li><a href="companyregister.jsp">Approve Student Video</a></li>
        </ul>
            
            <p><a href="EndSession.do">Log out</a></p>
    </body>
</html>-->
