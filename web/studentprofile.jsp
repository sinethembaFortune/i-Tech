<%-- 
    Document   : studentprofile
    Created on : May 14, 2022, 9:25:41 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Student Home Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--        <link rel="stylesheet" href="CSS/student.css"/>                 
        <link rel="stylesheet" href="CSS/tables.css"/>
        <link rel="stylesheet" href="CSS/stylemain.css"/>-->
        <link rel="stylesheet" href="CSS/studenthome.css"/> 
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
                
                    

                    <label class="logo">i-Tech</label>
                <nav>
                <ul >
                    <li><a href="studentprofile.jsp" class="active"> <i class="fa-solid fa-house"></i>Home</a></li>
                    <li><a href="studentuploadvideo.jsp"> <i class="fa-solid fa-video"></i>Upload Video</a></li>
                    <li><a href="StudentVideosSerlvlet.do"><i class="fa-solid fa-video"></i></i> View Videos</a></li>
                    <li><a href="JobsAvailableServlet.do"><i class="fa-solid fa-user-doctor"></i> Jobs and Opportunity</a></li>
                    <li><a href="StudentCV.do"><i class="fa-solid fa-user-doctor"></i> CV</a></li>
                    <li><a href="studenteditprofile.jsp"><i class="fa-solid fa-user"></i> View Profile</a></li>
                    <li><a href="EndSession.do"><i class="fa-solid fa-arrow-right-from-bracket"></i> Log out</a></li>
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
             
        
    </body>
</html>

<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <h1>Profile</h1>
                
        <table>
            <tr>
                
            </tr>
        </table>
        
        <p><a href="studentuploadvideo.jsp">Upload Video</a></p>
        
        <p><a href="StudentVideosSerlvlet.do">View Videos</a></p>
                
        <p><a href="studenteditprofile.jsp">View profile</a></p>
        
        <p><a href="JobsAvailableServlet.do">Job Opportunity</a></p>
        
        <p><a href="EndSession.do">Log out</a></p>
    </body>
</html>-->
