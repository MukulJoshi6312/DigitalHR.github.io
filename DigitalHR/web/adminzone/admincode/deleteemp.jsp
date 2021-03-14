<%@page import="Connect.DbManager"%>
<%
    //code for delete to empinfo
    
    String empid = request.getParameter("empid");
    String query = "delete from empinfo where empid = '"+empid+"'";
    DbManager db = new DbManager();
   boolean res =  db.insretUpdateDelete(query);
   if(res==true){
       out.print("<script>alert('Record is deleted');window.location.href='../viewemployee.jsp';</script>");
   }
   else{
        out.print("<script>alert('Record is not deleted');window.location.href='../viewemployee.jsp';</script>");
   }
    
%>