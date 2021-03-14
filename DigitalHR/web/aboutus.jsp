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
        <style>
            ul li{
                font-size: 16px;
            }
        </style>
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
                <div id="left">
                    
                     <marquee direction="up" height="590px" onmouseover="stop()" onmouseout="start()">
                        
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
                <div id="right" style="width: 600px; height:600px;">
                    
                    <h2 style="margin-left: 5px; text-decoration: underline;">Software Technology Used:-</h2>
                    <ul>
                        <li>Operating system  windows 7 and 8 </li>
                        <li>Netbeans IDE 8.0</li>
                        <li>JSP and JDBC</li>
                        <li>Java</li>
                        <li>Internet Explorer 8.0 and above, Chrome or Any Supported Browser </li>
                        <li>HTML & CSS</li>
                        <li>Java Script </li>
                        <li>MySQL</li>
                              
                    </ul>
                    
                     <h2 style="margin-left: 5px; text-decoration: underline;">Hardware Technology Used:
</h2>
                    <h2 style="margin-left: 5px; text-decoration: underline;">For Client Side:-</h2>
                    
                    <ul>
                        <li>
                            <strong> Processor:-</strong>Intel® Pentium® dual CPU e2220 2.20 GHZ
                        </li>
                        <li> <strong> RAM:-  </strong>256 MB</li>
                        <li><strong>Monitor:-   </strong>16 Color Monitor</li>
                        <li>
                            <strong> Hard Disk:-</strong>1 GB
                        </li>
                        <li>
                            <strong>Keyboard</strong>  
                        </li>
                        <li><strong> Mouse</strong></li>
                    </ul>
                    <h2 style="margin-left: 5px; text-decoration: underline;">For Server Side:-</h2>
                    <ul>
                        <li><strong>Server:-</strong> Xeon Based or Higher End Server</li>
                        <li><strong>Ram:- </strong>4 GB</li>
                        <li><strong>Hard Disk:- </strong>200 GB Disk Space</li>
                    </ul>
                    
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
