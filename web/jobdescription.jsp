<%-- 
    Document   : jobdescription
    Created on : May 17, 2022, 11:28:29 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/uplaod.css"/>
        <link rel="stylesheet" href="CSS/student.css"/>         
<!--        <link rel="stylesheet" href="CSS/tables.css"/>-->
        <link rel="stylesheet" href="CSS/stylemain.css"/>
        <script src="https://kit.fontawesome.com/ad78bb0d17.js" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="banner" >
            <div class="navbar">
                <nav>
                    <input type="checkbox" id="check"/>
                    <label for="check" class="checkBtn">
                        <i class="fas fa-bars"></i>
                        
                    </label>

                    <label class="logo">i-Tech</label>
                
                <ul > 
                    <li><a href="companyprofile.jsp" class="active"> <i class="fa-solid fa-house"></i> Home</a></li>
                    <li><a href="JobDescriptionServlet.do"> <i class="fa-solid fa-user-doctor"></i> Job Description</a></li>
                    <li><a href="CompanyJobServlet.do"><i class="fa-solid fa-user-doctor"></i> Jobs and Opportunity</a></li>
                    <li><a href="VeiwCV.do"><i class="fa-solid fa-graduation-cap"></i> Student CV</a></li>
                    <li><a href="companyviewprofile.jsp"><i class="fa-solid fa-user"></i> View Profile</a></li> 
                    <li><a href="EndSession.do"><i class="fa-solid fa-arrow-right-from-bracket"></i>Log out</a></li>
                </ul>
                </nav>
            </div> 
            <form action="JobDescriptionServlet.do" method="GET">
                <div class="cv">
                    <textarea id="myText" rows="20" 
                              placeholder="Type the description of project here" 
                              name="jobDescription" class="text"></textarea>
                    <p id="result"></p>
                    <div class="btn">
                    </div>                     
                    <div class="submit">
                        <input type="submit"  value="Upload description" />
                    </div> 
                </div>
            </form>
        </div>
    </body>
</html>
