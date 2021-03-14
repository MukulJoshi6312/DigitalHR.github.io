<%@page import="Connect.DbManager"%>
<%
    //here we write code to change the admin password
    String oldpassword=request.getParameter("oldpassword");
    String newpassword=request.getParameter("newpassword");
    String confirmpassword=request.getParameter("confirmpassword");
    String userid=session.getAttribute("userid").toString();
    if(newpassword.equals(confirmpassword))
    {
        DbManager db=new DbManager();
        String query="update adminlogin set password='"+newpassword+"' where userid='"+userid+"' and password='"+oldpassword+"'";
        boolean res=db.insretUpdateDelete(query);
        if(res==true)
        {
            out.print("<script>alert('Your Password is Changed !');window.location.href='../logout.jsp'</script>");
        }
        else
        {
            out.print("<script>alert('Password is not change !');window.location.href='../adminhome.jsp';</script>");
        }
    }
    else
    {
        out.print("<script>alert('Password is not matched !');window.location.href='../adminhome.jsp';</script>");
    }
%>