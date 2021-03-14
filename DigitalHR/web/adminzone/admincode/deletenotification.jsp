<%@page import="Connect.DbManager"%>
<%
    //here we write code to delete notificaion 
    String id = request.getParameter("id");
    DbManager db = new DbManager();
    String query = "delete from notification where id ='"+id+"'";
   boolean res = db.insretUpdateDelete(query);
   if(res==true){
       out.print("<script>alert('Notification is deleted');window.location.href='../adminhome.jsp';</script>");
   }
   else
   {
       out.print("<script>alert('Notification is not deleted');window.location.href='../adminhome.jsp';</script>");
   }
    
    
%>
