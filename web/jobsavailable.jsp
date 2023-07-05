<%-- 
    Document   : jobsavailable
    Created on : May 17, 2022, 10:46:05 AM
    Author     : hp
--%>

<%@page import="za.ac.tut.entity.Address"%>
<%@page import="za.ac.tut.entity.JobDiscription"%>
<%@page import="za.ac.tut.entity.Company"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Job's Available Page</title>
        <link rel="stylesheet" href="CSS/student.css"/> 
        <link rel="stylesheet" href="CSS/tables.css"/>
        <link rel="stylesheet" href="CSS/delete.css"/>
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
                   <li><a href="studentprofile.jsp" class="active"> <i class="fa-solid fa-house"></i>Home</a></li>
                    <li><a href="studentuploadvideo.jsp"> <i class="fa-solid fa-video"></i>Upload Video</a></li>
                    <li><a href="StudentVideosSerlvlet.do"><i class="fa-solid fa-video"></i></i> Videos</a></li>
                    <li><a href="JobsAvailableServlet.do"><i class="fa-solid fa-user-doctor"></i> Jobs and Opportunity</a></li>
                    <li><a href="studentcv.jsp"><i class="fa-solid fa-user-doctor"></i> CV</a></li>
                    <li><a href="studenteditprofile.jsp"><i class="fa-solid fa-user"></i> View Profile</a></li>
                    <li><a href="EndSession.do"><i class="fa-solid fa-arrow-right-from-bracket"></i> Log out</a></li>
                </ul>
                </nav>
            </div>
           
        <div class="contain">
<!--             <table class="content-table">
                <thead>
                    <tr>
                        <th>Number</th>
                        <th>Company name</th>
                        <th>Company email</th>
                        <th>Building Name</th>
                        <th>Street Name</th>
                        <th>Town</th>
                        <th>Code</th>
                        <th>Job's description</th>
                    </tr>
                </thead>-->
                <%
            List<Company> jobs = (List<Company>)session.getAttribute("jobAvailable");
            String emailStud = (String)session.getId();
            
            for(Company job: jobs){
            
            String approval = job.getApproval();
            if(approval.equals("Approved")){
                String name = job.getName();
                String email = job.getId();
                
                Address address = job.getAddress();
                
                String build = address.getBuildName();
                String street = address.getStreetName();
                String town = address.getTown();
                Integer code = address.getCode();
             %>
<!--                <tbody>-->
                    <%
                        List<JobDiscription> descriptions = job.getJobDescription();
                        int count=0;
                        for(JobDiscription description: descriptions){
                        count++; 
                        if(description.getJobDiscription() != null){
                    %>
                    

                        <div class="description">
                        <p class="build-name"> <%=name%> </p>
                        <p>  <%=email %> </p> 
                        <p>  <%=build %> </p> 
                        <p>  <%=town %> </p> 
                        <p>  <%=town %> </p> 
                        <p>  <%=code %> </p> 
                        <p class="jobs"><%=description.getJobDiscription() %> </p>
                        </div>
                        
                        
                        <form action="JobApplyServlet.do" method="GET">
                            <input type="text" name="email" value="<%=emailStud %>" hidden="true"/>                     
                            <div class="submit">
                                <input type="submit"  value="Apply" class="apply"/>
                            </div> 
                        </form>
                    <%
                        }
                        }
                        }
                        }
                    %>
<!--            </table >-->
        </div>
         </div>
    </body>
</html>
