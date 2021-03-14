<%@page import="Connect.DbManager"%>
<%

    //java code
    // Recieve the values of enquiry .jsp page
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    String contactno = request.getParameter("contactno");
    String emailaddress = request.getParameter("emailaddress");
    String message = request.getParameter("message");

    // create the object of dbmanager class
    DbManager db = new DbManager();//it class the constructor

    //note :- when you need to insert values in specified cloumn of a table then we follow this syntax
    //insert into <table_name>(<column1>,<column2>,<column>)values(<value1>,<value2>,<values3>);
    String query = "insert into enquiry(name,gender,address,contactno,emailaddress,message) values('" + name + "','" + gender + "','" + address + "','" + contactno + "','" + emailaddress + "','" + message + "')";

    boolean res = db.insretUpdateDelete(query);
    if(res == true){
        out.print("<script>alert('Enquiry is sevd');window.location.href='../index.jsp';</script>");
    }else{
        out.print("<script>alert('Enquiry is not sevd');window.location.href='../index.jsp';</script>");
    }

%>