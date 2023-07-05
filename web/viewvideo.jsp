<%-- 
    Document   : viewvideo
    Created on : May 17, 2022, 7:43:25 AM
    Author     : hp
--%>

<%@page import="za.ac.tut.entity.Student"%>
<%@page import="za.ac.tut.entity.Video"%>
<%@page import="za.ac.tut.entity.Comment"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Video Page</title> 
        <link rel="stylesheet" href="CSS/video.css"/>
<!--        <link rel="stylesheet" href="CSS/stylemain.css"/>         
        <link rel="stylesheet" href="CSS/tables.css"/>
        <link rel="stylesheet" href="CSS/delete.css"/>-->
        <script src="https://kit.fontawesome.com/ad78bb0d17.js" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/ad78bb0d17.js" crossorigin="anonymous"></script>
        
    </head>
    <body>
        <header>
            <div class="banner" >
                        <label class="logo">i-Tech</label>

                        <ul class="navbarlist">
                            <li><a href="index.html" class="active"> Home</a></li>
                            <li><a href="StartVideoViewSession.do"> video</a></li>
                            <li><a href="StartStudentSession.do"> Sign in</a></li>
                            <li><a href="registerselection.jsp"> Sign up</a></li>
                        </ul>                   

            </div>
        </header>
        <div class="container">
            <%
                    List<Student> students = (List<Student>)session.getAttribute("students");

                    for(Student student: students){
                    String name = student.getName();
                    String surname = student.getSurname();
                    String email = student.getId();
                    Integer phone = student.getPhone();
                    List<Video> videos = student.getVideos();
                    %>

                    <%
                    for(Video video: videos){
                        String approve = video.getApprove();
                            if(approve.equals("Approved")){
                            if(video.getVideoName() != null){
                %>


                <div class="row">

                    <div class="col"> 
                        <div class="small-img-row">

                            <div class="small-img">

                                <video controls width="60%"> <source src="videos/<%=video.getVideoName()%>" type="video/mp4"  /></video> 
                                <nav class="display-box">
                                    <p class="user-name"> <%=name %> <%=surname%></p>
                                    <p><%=email %></p>
                                    <p class="user-desc"><%=phone %></p>
                                    <p> </p>
                                    <p> <%=video.getDiscription() %></p>
                                </nav>
                            </div> 
                        </div>
    <!--                    <div>
                            <div>
                                <form>
                                    <input value="name"/>
                                </form>
                            </div>
                        </div>-->
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
