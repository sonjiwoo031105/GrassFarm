/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.58
 * Generated at: 2021-06-09 14:01:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>잔디공작소</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/Index.css\">\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"img/Contents_Logo.png\" type=\"img/x-icon\">\r\n");
      out.write("<link rel=\"icon\" href=\"img/Contents_Logo.png\" type=\"img/x-icon\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<script src=\"https://apis.google.com/js/api:client.js\"></script>\r\n");
      out.write("<script src=\"js/GoogleLogin.js\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<style>\r\n");
      out.write("body {\r\n");
      out.write("\tbackground-image: url('./img/Index_bg.png');\r\n");
      out.write("}\r\n");
      out.write("#btnstyle::focus{\r\n");
      out.write("\tborder: none;\r\n");
      out.write("}\r\n");
      out.write("#gSignInWrapper{\r\n");
      out.write("\tfloat: left;\r\n");
      out.write("\twidth: 60%;\r\n");
      out.write("\theight: 40px;\r\n");
      out.write("\tmargin-left:20%;\t\r\n");
      out.write("\tmargin-right: 20%;\r\n");
      out.write("\tmargin-top: 5%;\r\n");
      out.write("\tborder-radius: 7px;\r\n");
      out.write("\twhite-space: nowrap;\r\n");
      out.write("\tbox-shadow: 0 3px 6px rgba(0,0,0,0.14), 0 3px 6px -6px rgba(0,0,0,0.12);\r\n");
      out.write("}\r\n");
      out.write("#gSignInWrapper:hover {\r\n");
      out.write("    cursor: pointer;\r\n");
      out.write("}\r\n");
      out.write("span.icon {\r\n");
      out.write(" \tfloat: left;\r\n");
      out.write("    background: url('img/Google_Logo.png') transparent 5px 50% no-repeat;\r\n");
      out.write("    background-size: 22px 22px;\r\n");
      out.write("    display: inline-block;    \r\n");
      out.write("    width: 12.75%;\r\n");
      out.write("    height:40px;\r\n");
      out.write("    vertical-align: middle;\r\n");
      out.write("    margin-left: 2%;\r\n");
      out.write("}\r\n");
      out.write("#customBtn {\r\n");
      out.write("\tfloat: left;\r\n");
      out.write("    display: inline-block;    \r\n");
      out.write("    width: 85.25%;\r\n");
      out.write("    height: 40px;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    vertical-align: middle;\r\n");
      out.write("    font-family: 'regular';\r\n");
      out.write("    padding-right: 7.5%;\r\n");
      out.write("    line-height: 38px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write(" \r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("     <div class=\"row\">\r\n");
      out.write("       <div class=\"col-md-10.offset-md-1\" style=\"max-width:100%;\">\r\n");
      out.write("       <div id=\"box\">\r\n");
      out.write("       \t<div id=\"box1\">\r\n");
      out.write("       \t\t<img id=\"logostyle\" src=\"./img/Contents_Logo.png\">\r\n");
      out.write("       \t\t<div id=\"hello\">\r\n");
      out.write("       \t\t<p>안녕하세요. <br> 잔디공작소입니다.</p>\r\n");
      out.write("       \t\t</div>\r\n");
      out.write("       \t\t<p id=\"loginhe\">회원 서비스 이용을 위해 로그인하세요.</p>\r\n");
      out.write("       \t\t<img id=\"bannerstyle\" src=\"./img/banner.png\">       \t\t\r\n");
      out.write("       \t</div>\r\n");
      out.write("       \t<div id=\"box2\">\r\n");
      out.write("       \t\t<p id=\"welcome\">Welcome</p>       \t\t\r\n");
      out.write("       \t\t <div id=\"gSignInWrapper\">\r\n");
      out.write("       \t\t\t<span class=\"icon\"></span>\r\n");
      out.write("    \t\t\t<div id=\"customBtn\" class=\"customGPlusSignIn\">      \t\t\t\t\r\n");
      out.write("      \t\t\t\t구글로 로그인하기\r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("  \t\t\t</div>\r\n");
      out.write("  \t\t\t<div id=\"name\"></div>\r\n");
      out.write("  \t\t\t<script>startApp();</script>\t\r\n");
      out.write("       \t\t<a href=\"#\" onclick=\"signOut();\">Sign out</a>\r\n");
      out.write("       \t\t<hr id=\"one\">\r\n");
      out.write("       \t\t<form action=\"LoginAction.jsp\" method=\"post\">\r\n");
      out.write("    \t\t\t<input type=\"text\" class=\"form-control\" id=\"inputstyle\" name=\"userID\" placeholder=\"아이디\" required=\"required\">  \t\t\t\r\n");
      out.write("    \t\t\t<input type=\"password\" class=\"form-control\" id=\"inputstyle\" name=\"userPass\" placeholder=\"비밀번호\" required=\"required\">  \t\t\t\r\n");
      out.write("       \t\t<a id=\"find\" href=\"Join.jsp\">아이디/비밀번호 찾기</a>\r\n");
      out.write("       \t\t<button type=\"submit\" id=\"btnstyle\" class=\"btn btn-success login-btn btn-block\">로그인하기</button>\r\n");
      out.write("       \t\t</form>\r\n");
      out.write("       \t\t<hr id=\"two\">\r\n");
      out.write("       \t\t<a id=\"gojoin\" href=\"Join.jsp\">회원가입하기</a>\r\n");
      out.write("       \t</div>\r\n");
      out.write("       </div>         \r\n");
      out.write("\t   </div>\r\n");
      out.write("     </div>\r\n");
      out.write("</div>\r\n");
      out.write("</body>   \r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
