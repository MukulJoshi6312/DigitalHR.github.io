<%@page import="Connect.DbManager"%>
<%
    //here we write code to add qualification
    
    String qname = request.getParameter("qname");
    String query ="insert into qualification(qname) values('"+qname+"')";
    DbManager db = new DbManager();
    boolean res = db.insretUpdateDelete(query);
    if(res==true){
        out.print("<script>alert('Qualification is added');window.location.href='../managequalification.jsp';</script>");
    }
    else{
          out.print("<script>alert('Qualification not is added');window.location.href='../managequalification.jsp';</script>");
    }
    
%>