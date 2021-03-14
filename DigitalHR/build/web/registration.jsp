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
                <div id="right">
                    <form action="genzonecode/regcode.jsp" method="post">
                        <h1 style="color: blue;text-align: center;font-family: cursive;">job Seeker Registration</h1>
                        <table style="width: 60%;margin: 0 auto;">
                            <tr>
                                <td>Enter Your Name</td>
                                <td>
                                    <input type="text" name="name" required/>
                                </td>
                            </tr>  
                            <tr>
                                <td>Select Your Gender</td>
                                <td>
                                    <input type="radio" name="gender" value="Male"/>Male
                                    <input type="radio" name="gender" value="Female"/>Female
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Your Address</td>
                                <td>
                                    <textarea name="address" cols="30" rows="5" style="resize: none;"></textarea>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Select Your City</td>
                                <td>
                                    <select name="city">
                                        <option>Select City</option>
                                        <%
                                      rs = db.selectData("select cityname from city");
                                       while(rs.next()){
                                        %>
                                        <option><%=rs.getString(1)%></option>
                                        <%}%>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Your Contact No.</td>
                                <td>
                                    <input type="text" name="contactno" required/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Your Email</td>
                                <td>
                                    <input type="email" name="emailaddress" required/>
                                </td>
                            </tr>
                            <tr>
                                <td>Select Your Qualification</td>
                                <td>
                                    <select name="qualification" style="width: 200px;">
                                        <option>
                                            Select Qualification
                                        </option>
                                        <%
                                        rs = db.selectData("select qname from qualification");
                                        while(rs.next())
                                        {
                                        %>
                                        <option><%=rs.getString(1)%></option>
                                        <% } %>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                            <td>Select experience:</td>
                            <td>
                                <select name="experience" style="width: 200px">
                                    
                                    <option>Select Experience:</option>
                                    <%
                                    for(int i=0;i<=10;i++)
                                    {
                                        
                                    %>
                                    <option><%=i%></option>
                                    <%}%>
                                    <option>>10</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Your Company Name</td>
                            <td>
                                <input type="text" name="companyname"/>
                            </td>
                        </tr>
                             <tr>
                                <td>Enter Your Key Skills</td>
                                <td>
                                    <textarea name="keyskills" rows="5" cols="30" style="resize: none;"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><input type="submit" value="Registration" /></td>
                            </tr>
                            
                        </table>
                    </form>
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
