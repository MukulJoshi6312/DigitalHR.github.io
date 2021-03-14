package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import Connect.DbManager;

public final class registration_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"css/style1.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"js/slider.js\" type=\"text/javascript\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"moveSlider()\">\n");
      out.write("        <div id=\"outer\">\n");
      out.write("            <div id=\"header\">\n");
      out.write("                <div id=\"logo\">\n");
      out.write("                    <img src=\"images/logo.png\" width=\"150\" height=\"150\"/>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"title\">\n");
      out.write("                    Digital HR (ElectorTech)\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"menu\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                    <li><a href=\"aboutus.jsp\">About Us</a></li>\n");
      out.write("                    <li><a href=\"registration.jsp\">Registration</a></li>\n");
      out.write("                    <li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                    <li><a href=\"enquiry.jsp\">Enquiry</a></li>  \n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"slider\">\n");
      out.write("                <img id=\"slide\" width=\"1000px\" height=\"250px\"/>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"main\">\n");
      out.write("                <div id=\"left\"></div>\n");
      out.write("                <div id=\"right\">\n");
      out.write("                    <form>\n");
      out.write("                        <h1 style=\"color: blue;text-align: center;font-family: cursive;\">job Seeker Registration</h1>\n");
      out.write("                        <table style=\"width: 60%;margin: 0 auto;\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Your Name</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" name=\"name\" required/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>  \n");
      out.write("                            <tr>\n");
      out.write("                                <td>Select Your Gender</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"radio\" name=\"gender\" value=\"Male\"/>Male\n");
      out.write("                                    <input type=\"radio\" name=\"gender\" value=\"Female\"/>Female\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Your Address</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <textarea name=\"address\" cols=\"30\" rows=\"5\" style=\"resize: none;\"></textarea>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            \n");
      out.write("                            <tr>\n");
      out.write("                                <td>Select Your City</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <select name=\"city\">\n");
      out.write("                                        <option>Select City</option>\n");
      out.write("                                        ");

                                       DbManager db = new DbManager();
                                       ResultSet rs = db.selectData("select cityname from city");
                                       while(rs.next()){
                                        
      out.write("\n");
      out.write("                                        <option>");
      out.print(rs.getString(1));
      out.write("</option>\n");
      out.write("                                        ");
}
      out.write("\n");
      out.write("                                    </select>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Your Contact No.</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" name=\"contactno\" required/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Your Email</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"email\" name=\"emailaddress\" required/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Select Your Qualification</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <select name=\"qualification\" style=\"width: 200px;\">\n");
      out.write("                                        <option>\n");
      out.write("                                            Select Qualification\n");
      out.write("                                        </option>\n");
      out.write("                                        ");

                                        rs = db.selectData("select qname from qualification");
                                        while(rs.next())
                                        {
                                        
      out.write("\n");
      out.write("                                        <option>");
      out.print(rs.getString(1));
      out.write("</option>\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                    </select>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                            <td>Select experience:</td>\n");
      out.write("                            <td>\n");
      out.write("                                <select name=\"experience\" style=\"width: 200px\">\n");
      out.write("                                    \n");
      out.write("                                    <option>Select Experience:</option>\n");
      out.write("                                    ");

                                    for(int i=0;i<=10;i++)
                                    {
                                        
                                    
      out.write("\n");
      out.write("                                    <option>");
      out.print(i);
      out.write("</option>\n");
      out.write("                                    ");
}
      out.write("\n");
      out.write("                                    <option>>10</option>\n");
      out.write("                                </select>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Enter Your Company Name</td>\n");
      out.write("                            <td>\n");
      out.write("                                <input type=\"text\" name=\"companyname\"/>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                             <tr>\n");
      out.write("                                <td>Enter Your Key Skills</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <textarea name=\"keyskills\" rows=\"5\" cols=\"30\" style=\"resize: none;\"></textarea>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td><input type=\"submit\" value=\"Registration\" /></td>\n");
      out.write("                            </tr>\n");
      out.write("                            \n");
      out.write("                        </table>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("           \n");
      out.write("            <div id=\"footer\">\n");
      out.write("                <div id=\"lfooter\">\n");
      out.write("                    Copyright &copy;to Digital HR\n");
      out.write("                </div>\n");
      out.write("                <div id=\"rfooter\">\n");
      out.write("                    developed by Mukul Joshi\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
