<%-- 
    Document   : companyjobdescription
    Created on : May 24, 2022, 2:45:26 PM
    Author     : hp
--%>

<%@page import="za.ac.tut.entity.JobDiscription"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Company"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/student.css"/> 
        <link rel="stylesheet" href="CSS/tables.css"/>
        <link rel="stylesheet" href="CSS/stylemain.css"/>
        <link rel="stylesheet" href="CSS/delete.css"/>
        <script src="https://kit.fontawesome.com/ad78bb0d17.js" crossorigin="anonymous"></script>
        <title>Company Job Page</title>
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
                    <li><a href="jobdescription.jsp"> <i class="fa-solid fa-user-doctor"></i> Job Description</a></li>
                    <li><a href="CompanyJobServlet.do"><i class="fa-solid fa-user-doctor"></i> Jobs and Opportunity</a></li>
                    <li><a href="VeiwCV.do"><i class="fa-solid fa-graduation-cap"></i> Student CV</a></li>
                    <li><a href="companyviewprofile.jsp"><i class="fa-solid fa-user"></i> View Profile</a></li> 
                    <li><a href="EndSession.do"><i class="fa-solid fa-arrow-right-from-bracket"></i>Log out</a></li>
                </ul>
                </nav>
               </div> 
            <div class="contain">
                <%
                    Company company = (Company)session.getAttribute("company");
                    
                        List<JobDiscription> descriptions = company.getJobDescription();
                        int count=0;
                        for(JobDiscription description: descriptions){
                        
                        if(description.getJobDiscription() != null){
                        count++; 
                    %>
                    

                    <div class="description"> 
                        <p>
                        <p class="jobs"><%=count%>. <%=description.getJobDiscription() %> </p>
                    </div>
                    <div class="submit">
                        <form action="CompanyRemoveJob.do" method="GET">
                            <input type="text" name="id" value="<%=description.getId() %>" hidden="true" />
                           
                            <div >
                                <input type="submit" value="Delete" class="butn">
                            </div>  
                        </form>
                    </div>
                    <%
                        }
                    %>
                        
                    <%
                        }
                    %>
            </div>
        </div>
        
        
    </body>
</html>
