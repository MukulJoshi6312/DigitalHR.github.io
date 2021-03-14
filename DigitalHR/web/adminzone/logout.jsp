<%-- 
    Document   : logout.jsp
    Created on : 10 Aug, 2020, 11:07:03 AM
    Author     : User
--%>

<%
    session.invalidate();
    
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function logout(){
                window.history.forward();
                window.setTimeout("window.location.href='../login.jsp';",2000);
            }
        </script>
    </head>
    <body bgcolor="black" onload="logout()">
        <h1 style="text-align: center; color: white;font-size: 60px;"> Logout is processing...</h1>
        
        
    </body>
</html>
