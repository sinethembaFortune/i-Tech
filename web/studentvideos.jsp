<%-- 
    Document   : studentvideos
    Created on : May 17, 2022, 5:53:56 AM
    Author     : hp
--%>

<%@page import="za.ac.tut.entity.Comment"%>
<%@page import="za.ac.tut.entity.Video"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/studentvideo.css"/> 
        <script src="https://kit.fontawesome.com/ad78bb0d17.js" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/ad78bb0d17.js" crossorigin="anonymous"></script>
        <title>Student Videos Page</title>
    </head>
    <body>
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
        
            <%
                String email = (String)session.getAttribute("email");
                List<Video> videos = (List<Video>)session.getAttribute("videos");
                List<String> partners = (List<String>)session.getAttribute("partners");
            
                for(Video video: videos){
                String partner;
                if(video.getVideoName() != null){
            %>
            <div class="row">
                <div class="col"> 
                    <div class="small-img-row">
                        <div class="small-img">
                            <video controls width="60%"> <source src="videos/<%=video.getVideoName()%>"  /></video> 
                            <div class="display-box">
                                <p> <%=video.getDiscription() %></p>
                                <p></p>
                                <p><%=video.getApprove() %></p>
                            </div>
                        </div> 
                    </div>
                    <div class="submit">
                        <form action="DeleteVideoServlet.do" method="GET">
                            <input type="text" name="id" value="<%=video.getId() %>" hidden="true" />
                           
                            <div >
                                <input type="submit" value="Delete" class="btn">
                            </div>  
                        </form>
                    </div>
                </div>
            </div>
            <%
                }
                }
            
                
            %>
        
        
    </body>
</html>
