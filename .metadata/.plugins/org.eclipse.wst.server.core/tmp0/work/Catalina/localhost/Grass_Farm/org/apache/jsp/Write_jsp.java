/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.58
 * Generated at: 2021-05-29 06:39:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;

public final class Write_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/navbar.jsp", Long.valueOf(1622202931055L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.io.PrintWriter");
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
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>잔디공작소</title>\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"img/Contents_Logo.png\" type=\"img/x-icon\">\r\n");
      out.write("<link rel=\"icon\" href=\"img/Contents_Logo.png\" type=\"img/x-icon\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"navbar.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<nav class=\"navbar\" id=\"undershadow\">\r\n");
      out.write("  <div class=\"container\">\r\n");
      out.write("  \t<div class=\"row\">\r\n");
      out.write("  \t\t<div class=\"col-md-8 col-md-offset-2\" style=\"max-width:100%;\">  \t\t\t\r\n");
      out.write("    \t\t<form class=\"nav navbar-form\" role=\"search\" action=\"Search.jsp\">  \r\n");
      out.write("    \t\t<div class=\"navbar-header\">\r\n");
      out.write("        \t\t<a href=\"Main.jsp\"><img src=\"img/Header_Logo.png\" id=\"logo\" alt=\"로고 : Header_Logo\" ></a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("  \t\t\t<div class=\"form-group\" id=\"wich\">\r\n");
      out.write("  \t\t    \t<div class=\"input-group\">\r\n");
      out.write("  \t\t\t\t\t<span class=\"input-group-addon\" id=\"iconstyle\"><i class=\"glyphicon glyphicon-search\"></i></span>\r\n");
      out.write("  \t\t\t\t\t<input type=\"text\" id=\"inputstyle\" class=\"form-control\" name=\"search\" placeholder=\"검색\" required=\"required\">\r\n");
      out.write("\t\t\t\t</div>         \t\t\r\n");
      out.write("        \t</div>       \t\r\n");
      out.write("\t        <ul id=\"up\" class=\"nav navbar-nav\">\t \r\n");
      out.write("\t    \t\t<li><a id=\"write\" href=\"Write.jsp\"><img id=\"writei\" src=\"img/Header_plus.png\"></a></li>\r\n");
      out.write("\t    \t\t<li><a id=\"repo\" href=\"Repo.jsp\"><img id=\"repoi\" src=\"img/Header_repo.png\"></a></li>\r\n");
      out.write("\t    \t\t<li><a id=\"user\" href=\"User.jsp\"><img id=\"useri\" src=\"img/Header_profile.png\"></a></li>\t   \t\t\r\n");
      out.write("\t        </ul>\r\n");
      out.write("      \t\t</form>\t\r\n");
      out.write("  \t\t</div>\r\n");
      out.write("  \t</div>\r\n");
      out.write("  </div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"Write.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("  <div class=\"col-md-6 col-md-offset-3\" style=\"max-width:100%;\">\r\n");
      out.write("  <h2 id=\"name\">오늘의 잔디</h2>\r\n");
      out.write("  <form method=\"post\" action=\"WriteAction.jsp\">\r\n");
      out.write("\t<input type=\"text\" class=\"form-control\" id=\"title\" name=\"bbsTitle\" placeholder=\"제목\" required=\"required\">\r\n");
      out.write("\t<select id=\"language\" class=\"form-control\" name=\"bbsLanguage\" required=\"required\">\r\n");
      out.write("\t  \t<option value=\"\">언어 선택</option>\r\n");
      out.write("\t  \t<option value=\"JAVA\">JAVA</option>\r\n");
      out.write("\t  \t<option value=\"C\">C</option>\r\n");
      out.write("\t  \t<option value=\"C++\">C++</option>\r\n");
      out.write("\t  \t<option value=\"C#\">C#</option>\r\n");
      out.write("\t  \t<option value=\"PYTHON\">PYTHON</option>\r\n");
      out.write("\t  \t<option value=\"PHP\">PHP</option>\r\n");
      out.write("\t  \t<option value=\"JSP\">JSP</option>\r\n");
      out.write("\t  \t<option value=\"HTML\">HTML</option>\r\n");
      out.write("\t  \t<option value=\"CSS\">CSS</option>\r\n");
      out.write("\t  \t<option value=\"JavaScript\">JavaScript</option>\r\n");
      out.write("\t</select>\r\n");
      out.write("\t<textarea class=\"form-control\" id=\"code\" rows=\"5\" name=\"bbsSource\" placeholder=\"소스코드\" required=\"required\"></textarea><br>\r\n");
      out.write("\t<textarea class=\"form-control\" id=\"writeany\" rows=\"5\" name=\"bbsContent\" placeholder=\"내용 작성\" required=\"required\"></textarea><br>\r\n");
      out.write("\t<button type=\"submit\" class=\"btn\" id=\"btnSave\">글쓰기</button>\r\n");
      out.write("\t<button type=\"reset\" class=\"btn\" id=\"cancle\">취소하기</button>\r\n");
      out.write("\t</form> \r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
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
