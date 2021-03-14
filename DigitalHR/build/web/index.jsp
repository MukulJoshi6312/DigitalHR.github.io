<%-- 
    Document   : index
    Created on : 31 Jul, 2020, 11:44:57 AM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Connect.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style1.css" rel="stylesheet" type="text/css"/>
        <script src="js/slider.js" type="text/javascript"></script>
    </head>
    <body onload="moveSlider()">
        <div id="outer">
            <div id="header">
                <div id="logo">
                    <img src="images/logo.png" width="150" height="150"/>
                </div>
                <div id="title">
                    Digital HR (ElectorTech)
                </div>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="registration.jsp">Registration</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="enquiry.jsp">Enquiry</a></li>  
                </ul>
            </div>
            <div id="slider">
                <img id="slide" width="1000px" height="250px"/>
            </div>
            <div id="main">
                <div id="left" style="height: 900px;background: darkgray">
                    
                    <marquee direction="up" height="600px"onmouseover="stop()" onmouseout="start()">
                        
                        <%
                        DbManager db = new DbManager();
                        String query ="select * from notification";
                        ResultSet rs = db.selectData(query);
                        
                        while(rs.next())
                        {
                        %>
                        
                        <p style="text-align: center;color: red;"><%=rs.getString(2)%></p>
                        <p style="text-align: center;"><%=rs.getString(3)%></p>
                        
                        <% } %>
                        
                    </marquee>
                    
                    
                </div>
                <div id="right" style="width: 700px; height: 900px; background-color: white;">
                    <h2 style="text-decoration: underline; margin-left: 5px;">Overview of the project:-</h2>
                    <p style="margin-left: 15px;">
                       This project is made for the ElectrotechEngg Solutions, Roorkie who want to make implement ‘PAPERLESS OFFICE’ in field of Human Resource Management. The purpose of the project in organizational perspective is to generate a fully computerized human resource system. All Data of the related share is needed to be present on the system so that whenever there is a need to view process or extract any information it can be done. It saves time and avoids losses.  
                    </p>
                    <h2 style="text-decoration: underline;margin-left: 5px;">Objectives & Scope:-</h2>
                    <span style="margin-left: 10px;"><strong>We have the following aims and objectives of Digital HR System:-</strong></span>  
                    <ul>
                        <li>To ease the functioning of the company.</li>
                        <li>To avoid delays as postal delays.</li>
                        <li>To increase the existing systems efficiency and reliability as a whole by many times</li>
                        <li>To reduce effort involved in processing the data.</li>
                        <li>It’s developed for smooth functioning.</li>
                        <li>To ease the interaction between candidate and company.</li>
                        <li>To provide transparent system to all the employees of the company.</li>
                        <li>Improved Productivity of the HR Department of the Company</li>
                        <li>Optimal Utilization of Resources.</li>
                        <li>Reduction in time taken in execution of activities.</li>
                        <li>Better Information sharing among different department.</li>
                        <li>Cost cutting in maintaining employee’s data.</li>
                        <li>Reduces the man power.</li>
                        <li>Reduces the time improve the functionality of organization.</li>
                        
                        
                        
                        
                    </ul>
                    <h2 style="text-decoration: underline;margin-left: 5px;">Technical Feasibility</h2>
                    <p style="margin-left: 15px;">The assessment is based on an outline design of system requirements in terms of Input, Processes, Output, Fields, Programs, and Procedures. This can be quantified in terms of volumes of data, trends, frequency of updating, etc. in order to estimate whether the new system will perform adequately or not. Technological feasibility is carried out to determine whether the company has the capability, in terms of software, hardware, personnel and expertise, to handle the completion of the project when writing a feasibility report, the following should be taken to consideration:</p>
                    <ul>
                        <li>A brief description of the business</li>
                        <li>The part of the business being examined</li>
                        <li>The human and economic factor</li>
                        <li>The possible solutions to the problems</li>
                    </ul>
                    <p style="margin-left: 15px;">System is given more importance than the actual make of hardware. The configuration should as we know the technical feasibility is concerned with specifying equipment and software that will successfully satisfy the user requirement. The technical needs of the system may vary considerably, but might include:</p>
                </div>
            </div>
            <div id="footer">
                <div id="lfooter">
                    Copyright &copy;to Digital HR
                </div>
                <div id="rfooter">
                    developed by Mukul Joshi
                </div>
            </div>
        </div>
    </body>
</html>
