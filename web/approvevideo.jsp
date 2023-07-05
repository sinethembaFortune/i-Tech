<%-- 
    Document   : approvevideo
    Created on : May 24, 2022, 1:06:03 PM
    Author     : hp
--%>

<%@page import="za.ac.tut.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--        <link rel="stylesheet" href="CSS/video.css"/>
        <link rel="stylesheet" href="CSS/student.css"/>        
        <link rel="stylesheet" href="CSS/stylemain.css"/>
        <link rel="stylesheet" href="CSS/delete.css"/>-->
        <link rel="stylesheet" href="CSS/approve.css"/>
        <script src="https://kit.fontawesome.com/ad78bb0d17.js" crossorigin="anonymous"></script>
        <title>Approve video Page</title>
    </head>
    <body>
        <%
            String nothing = "No pending videos";
        %>
        <div class="banner" >
            
                <label class="logo">i-Tech</label>
                <nav>
                    
                
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
            <div class="container">
            <%
                List<Student> students = (List<Student>)session.getAttribute("students");
                                
                for(Student student: students){
                String name = student.getName();
                String surname = student.getSurname();
                String email = student.getId();
                List<Video> videos = student.getVideos();
                %>
                
                <%
                for(Video video: videos){
                String approve = video.getApprove();
                if(approve.equals("Pending")){
                Long videoid = video.getId();
                if(video.getVideoName() != null){
                if(videoid == null){
                    nothing = "No pending videos";
                    }
            %>        
            
            <div class="row">
                <div class="col"> 
                    <div class="small-img-row">
                        <div class="small-img">
                            <video controls width="60%"> <source src="videos/<%=video.getVideoName()%>" type="video/mp4"  /></video> 
                            <div class="display-box">
                                <p> <%=name %> <%=surname %></p>
                                <p><%=email %></p>
                                <p></p>
                                <p> <%=video.getDiscription() %></p>
                                <p></p>
                                <p> <%=video.getApprove() %></p>                                                                 
                            </div>
                        </div>                                
                    </div>
                    <div class="for">
                        <form action="VideoApproveServlet.do" method="GET">
                            <input type="text" name="id" value="<%=video.getId() %>" hidden="true"/>
                            <input type="text" name="email" value="<%=email%>" hidden="true"/>
                            <input type="submit" value="Approve" class="approve"/>
                        </form>
                        <form action="VideoDeclineServlet.do" method="GET">
                            <input type="text" name="id" value="<%=video.getId() %>" hidden="true"/>
                            <input type="text" name="email" value="<%=email%>" hidden="true"/>
                            <input type="submit" value="Decline" class="decline"/>
                        </form>
                    </div>
                </div>    
            </div>                
            <%
                }
            }
            }        

            }
            %>
            </div>        
       
    </body>
</html>
