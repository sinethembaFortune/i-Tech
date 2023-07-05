<%-- 
    Document   : studentuploadvideo
    Created on : May 17, 2022, 6:13:24 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Upload video Page</title>
        <link rel="stylesheet" href="CSS/uplaod.css"/>          
<!--        <link rel="stylesheet" href="CSS/tables.css"/>-->
        <link rel="stylesheet" href="CSS/stylemain.css"/>
        <script src="https://kit.fontawesome.com/ad78bb0d17.js" crossorigin="anonymous"></script>
        <script language="javascript">{
            function addRows(tableID){
                var table = document.getElementById(tableID);
                var countRow = table.rows.length;
                var row = table.insertRow(countRow);
                
                //var cell1 = row.insertCell(0);
                //var element1 = document.getElememtById('col0');
                //cell1.innerHTML = "Co_Author name:";
                //cell1.appendChild(element1);
                
                var cell2 = row.insertCell(0);
                var element2 = document.createElement("input");
                element2.type = "text";
                element2.name = "partner[]";
                element2.placeholder = "Partner email";
                cell2.appendChild(element2);
            }
        }
        </script>
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
                    <li><a href="StudentCV.do"><i class="fa-solid fa-user-doctor"></i> CV</a></li>
                    <li><a href="studenteditprofile.jsp"><i class="fa-solid fa-user"></i> View Profile</a></li>
                    <li><a href="EndSession.do"><i class="fa-solid fa-arrow-right-from-bracket"></i> Log out</a></li>
                      
                    </ul>
                </nav>
            </div>
<!--            This the form to be sent the servlet on regarding of the session-->
<form action="UploadVideo.do" method="POST" enctype="multipart/form-data">
                <div class="container">
                    <textarea id="myText" rows="5" 
                              placeholder="Type the description of project here" 
                              name="description"></textarea>
                    <p id="result"></p>
                                            
                    <input type="file" name="file"class="upload-video"/>
                    
                    <table id="dataTable" >
                        <tr>
                            <td id="col0"><input type="text" name="partner[]" placeholder="Partner email"/><td>
                    </tr>
                    </table>
                    <div class="submit">
                        <input type="button" value="ADD ANOTHER AUTHOR" onclick="addRows('dataTable')"/>
                    </div>
                    <div class="submit">
                        <input type="submit"  value="Upload video" />
                    </div> 
                </div>
            </form>

<!--                The annexe javascript page has another page called script.js to accomondate with the frond end-->
            <script src="script.js"></script>   
        </div>
    </body>
</html>


