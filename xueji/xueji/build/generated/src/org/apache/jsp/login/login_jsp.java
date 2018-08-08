package org.apache.jsp.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\n");
      out.write("        <title>学籍管理系统</title>\n");
      out.write("        <script ID=\"clientEventHandlersJS\" LANGUAGE=\"javascript\">//客户端验证用户名和密码\n");
      out.write("           <!--\n");
      out.write("           function form1_onsubmit(){\n");
      out.write("           if(form1.userName.value==\"\"){\n");
      out.write("               alert(\"请填写用户名\");\n");
      out.write("               form1.userName.focus();\n");
      out.write("               return false;\n");
      out.write("           }\n");
      out.write("           if(form1.password.value==\"\"){\n");
      out.write("           alert(\"请填写密码！\");\n");
      out.write("           form1.password.focus();\n");
      out.write("           return false;\n");
      out.write("           }\n");
      out.write("          }\n");
      out.write("           -->\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"../image/tu.jpg\" background-repeat=repeat>\n");
      out.write("            <table border=\"0\" width=\"100%\" height=\"299\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td width=\"10%\" height=\"183\" >&nbsp;</td>\n");
      out.write("                            <td width=\"80%\" height=\"183\" align=\"center\" valign=\"middle\">\n");
      out.write("                                <form name=\"form1\" method=\"post\" action=\"logincheck.jsp\" onsubmit=\"return form1_onsubmit()\">\n");
      out.write("                                    <div align=\"center\">\n");
      out.write("                                        <p><font size=\"6\" color=>学籍管理系统</font></p>\n");
      out.write("                                        <br>\n");
      out.write("                                         <table width=\"260\" height=\"68\" border=\"0\">\n");
      out.write("                                         <tr>\n");
      out.write("                                            <td width=\"80\">\n");
      out.write("                                            <font size=\"3\" face=\"Arial,Helvetica,sans-serif\">\n");
      out.write("                                             用户名：\n");
      out.write("                                             </font>\n");
      out.write("                                            </td>    \n");
      out.write("                                            <td width=\"155\">\n");
      out.write("                                                <input name=\"userName\" style=\"height:20px;width: 150px\"size=\"50\" maxlength=\"50\">\n");
      out.write("                                            </td> \n");
      out.write("                                         </tr>\n");
      out.write("                                         <tr>\n");
      out.write("                                            <td width=\"39\">\n");
      out.write("                                            <font size=\"3\" face=\"Arial,Helvetica,sans-serif\">\n");
      out.write("                                            密码：\n");
      out.write("                                             </font>\n");
      out.write("                                            </td>    \n");
      out.write("                                            <td>\n");
      out.write("                                                <input name=\"password\" style=\"height:20px;width:150px\" size=\"50\" maxlength=\"50\"type=\"password\">\n");
      out.write("                                            </td> \n");
      out.write("                                         </tr>\n");
      out.write("                                        </table>\n");
      out.write("                                        <p align=\"center\">\n");
      out.write("                                      <input type=\"radio\" name=\"systemrole\" value=\"student\">学生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                      <input type=\"radio\" name=\"systemrole\" value=\"administer\">管理员</p> \n");
      out.write("                                      <p align=\"center\">\n");
      out.write("                                        <input type=\"submit\" name=\"btnSubform\" value=\"登录\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                        <input type=\"reset\" name=\"reset\" value=\"重填\"></p> \n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                        </td>\n");
      out.write("                        <td width=\"10%\" height=\"183\"></td>\n");
      out.write("                 </tr>\n");
      out.write("        </table>\n");
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
