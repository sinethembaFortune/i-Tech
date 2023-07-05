<%-- 
    Document   : studentcv
    Created on : May 25, 2022, 12:44:46 AM
    Author     : hp
--%>

<%@page import="za.ac.tut.entity.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/student.css"/>                 
        <link rel="stylesheet" href="CSS/tables.css"/>
        <link rel="stylesheet" href="CSS/stylemain.css"/>
        <link rel="stylesheet" href="CSS/uplaod.css"/> 
<!--        <link rel="stylesheet" href="CSS/studentcv.css"/> -->
        <script src="https://kit.fontawesome.com/ad78bb0d17.js" crossorigin="anonymous"></script>
        <title>Student CV Page</title>
    </head>
    <body>
        <div class="banner" >
            <div class="navbar">
                
                    
                    <label class="logo">i-Tech</label>
                <nav>
                <ul >
                    <li><a href="studentprofile.jsp" class="active"> <i class="fa-solid fa-house"></i>Home</a></li>
                    <li><a href="studentuploadvideo.jsp"> <i class="fa-solid fa-video"></i>Upload Video</a></li>
                    <li><a href="StudentVideosSerlvlet.do"><i class="fa-solid fa-video"></i></i> Videos</a></li>
                    <li><a href="JobsAvailableServlet.do"><i class="fa-solid fa-user-doctor"></i> Jobs and Opportunity</a></li>
                    <li><a href="StudentCV.do"><i class="fa-solid fa-user-doctor"></i> CV</a></li>
                    <li><a href="studenteditprofile.jsp"><i class="fa-solid fa-user"></i> Profile</a></li>
                    <li><a href="EndSession.do"><i class="fa-solid fa-arrow-right-from-bracket"></i> Log out</a></li>
                </ul>
                </nav>
               </div> 
            <%
                Student student = (Student)session.getAttribute("student");
            %>
            <div class="cont">
                <div class="cv">                    
                    <embed src="cv/<%=student.getCvName() %> " type="application/pdf" class="upload-cv" />
                    <form action="UploadCVServlet.do" method="POST" enctype="multipart/form-data">
                        <input type="file" name="file"class="upload-video"/>
                        
                        <div class="submit">
                            <input type="submit"  value="Upload cv" />
                        </div>                         
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
