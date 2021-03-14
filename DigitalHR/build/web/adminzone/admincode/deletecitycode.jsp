<%@page import="Connect.DbManager"%>
<%
    // here we write code to delete city
    String cityid = request.getParameter("cityid");
    String query ="delete from city where cityid='"+cityid+"'";
    DbManager db = new DbManager();
  
    boolean res= db.insretUpdateDelete(query);
    if(res==true){
        out.println("<script>alert('City is delete!');window.location.href='../managecity.jsp'</script>");
    }
    else{
        out.println("<script>alert('City is delete!');window.location.href='../managecity.jsp'</script>");
    }
    
%>