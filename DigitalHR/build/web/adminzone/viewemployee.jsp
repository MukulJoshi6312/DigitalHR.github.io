<%-- 
    Document   : adminhome
    Created on : 8 Aug, 2020, 10:52:54 AM
    Author     : User
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Connect.DbManager"%>
<%
    if(session.getAttribute("userid")==null){
        response.sendRedirect("../login.jsp");
    }
    else{
        
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/adminstyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body bgcolor="green">
        <div id="outer">
            <div id="header">
                <div id="logo">
                    <img src="images/logo.png" width="150" height="150"/>
                </div>
                <div id="title">Welcome to admin zone.</div>
            </div>
            <div id="menu">
                <ul>
                <li><a href="adminhome.jsp">Home</a></li>
                <li><a href="employee.jsp">Employee</a></li>
                <li><a href="jobseeker.jsp">Job Seeker</a></li>
                <li><a href="enquirymgmt.jsp">Enquiry</a></li>
                <li><a href="changepwd.jsp">Change Password</a></li>
                <li><a href="managecity.jsp">City</a></li>
                <li><a href="managequalification.jsp">Qualification</a></li>
                <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div>
            <div id="main">
                <h1 style="color: blue; text-align: center;">Manage Employee</h1>
                <div style="width: 90%;margin: 0 auto;overflow-x: auto;white-space: nowrap; ">
                    <table border="1">
                        <tr style="background-color: blue;color: white;">
                            <th>Employee Id</th>
                            <th>Employee Name</th>
                            <th>Father Name</th>
                            <th>Mother Name</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>City</th>
                            <th>Contact No.</th>
                            <th>Email Address</th>
                            <th>Department</th>
                            <th>Designation</th>
                            <th>Date of Birth</th>
                            <th>Date of Joining</th>
                            <th>Salary</th>
                            <th>Delete</th>
                            <th>Update</th>
                        </tr>
                        
                        <%
                        DbManager db = new DbManager();
                        String query = "select * from empinfo";
                        ResultSet rs = db.selectData(query);
                        while(rs.next())
                        {
                        
                        %>
                        <tr style="background-color: black;color: white; text-align: center;">
                            <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>
                            <td><%=rs.getString(6)%></td>
                            <td><%=rs.getString(7)%></td>
                            <td><%=rs.getString(8)%></td>
                            <td><%=rs.getString(9)%></td>
                            <td><%=rs.getString(10)%></td>
                            <td><%=rs.getString(11)%></td>
                            <td><%=rs.getString(12)%></td>
                            <td><%=rs.getString(13)%></td>
                            <td><%=rs.getString(14)%></td>
                            <td><a style="color: red;" href="admincode/deleteemp.jsp?empid=<%=rs.getString(1)%>">Delete</a></td>
                            <td><a style="color: red;" href="updateemployee.jsp?empid=<%=rs.getString(1)%>">Update</a></td>
                            
                            
                        </tr>
                        <% } %>
                    </table>
                    
                </div>
            </div>
            <div id="footer">
                <div id="lfooter">
                    Copyright &copy to Digital HR
                </div>
                <div id="rfooter">
                    Developed By: Mukul Joshi
                </div>
            </div>
        </div>
    </body>
</html>
<% } %>