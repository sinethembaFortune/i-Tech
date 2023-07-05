<%-- 
    Document   : getallstudents
    Created on : May 17, 2022, 1:44:40 PM
    Author     : hp
--%>

<%@page import="za.ac.tut.entity.Comment"%>
<%@page import="za.ac.tut.entity.Video"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display all student page</title>
        <link rel="stylesheet" href="CSS/student.css"/> 
        <link rel="stylesheet" href="CSS/tables.css"/>
        <link rel="stylesheet" href="CSS/stylemain.css"/>
        <link rel="stylesheet" href="CSS/delete.css"/>
        <script src="https://kit.fontawesome.com/ad78bb0d17.js" crossorigin="anonymous"></script>
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
           
            <div class="cont">
            
            <table class="content-table">
                <thead>
                    <tr>
                        <th>Number</th>
                        <th>Student number</th>
                        <th>Student name</th>
                        <th>Student surname</th>
                        <th>Cell number</th>
                        <th>Email address</th>
                        <th>Remove student</th>
                    </tr>
                </thead>
                <%
                List<Student> allStudents = (List<Student>)session.getAttribute("allStudents");
                Integer count  = 0;

                for(Student student: allStudents){
                count++;
            %>
                <tbody>
                    <tr style="color: white;">
            <!--REPLACE BY GETTERS OF ALL-->
                        <td><%=count%></td>
                        <td> <%= student.getStudNum()%> </td>
                        <td>  <%= student.getName()%></td>
                        <td>  <%= student.getSurname() %></td>
                        <td> <%= student.getPhone() %></td>
                        <td> <%= student.getId() %></td>
                        <td><div class="input-field button"><form action="StudentRemoveStudent.do" method="GET">
                                <input value="<%= student.getId() %>" name="email" hidden="true" />
                                <input type="submit"  value="Delete" class="delete-stud"/></form>
                            </div> 
                        </td>
                    </tr>
                </tbody>
                
                <%
                }
            %>
            </table >
            
<!--                        <div class="input-field button">
                        <input type="submit" value="Login now" />
                        </div>-->
            
            </div>                        
            </div>
       </div  >   
    </body>
</html>

<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>View All Students</h1>
        <%
            //List<Student> allStudents = (List<Student>)session.getAttribute("allStudents");
            
            for(Student student: allStudents){
        %>
        <p>Name: <%= student.getName()%> </p><p> <%= student.getSurname() %> </p>
        <p>Email: <%= student.getId() %></p>
        <p>Phone number: <%= student.getPhone() %></p>
        <%    
            List<Video> videos = student.getVideos();
            
            for(Video video: videos){
        %>
        
        <video controls><source src="/<%=video.getVideoName()%> " /></video>
        <p><%=video.getDiscription() %></p>
        <p><%=video.getApprove() %></p>
        <p><%=video.getDiscription() %></p>
        
        <%
            List<Comment> comments = video.getComments();
            
            for(Comment comment: comments){
            
        %>
        <form action="StudentRemoved.do" method="POST">
            <input value="<%= student.getName()%>" name="email" hidden="true"/>
            <input type="submit" value="DELETE"/>
        </form>
            <p><%=comment.getComment() %></p>
        <%
            }
            }
        %>
        <%
            }
        %>
    </body>
</html>-->
