<%@page import="Connect.DbManager"%>
<%
    //here we write code to delete qualification
    String qid = request.getParameter("qid");
    DbManager db = new DbManager();
    String query = "delete from qualification where qid='"+qid+"'";
    boolean res = db.insretUpdateDelete(query);
    if(res==true){
        out.print("<script>alert('Record is deleted');window.location.href='../managequalification.jsp';</script>");
    }
%>