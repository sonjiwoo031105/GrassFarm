/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.58
 * Generated at: 2020-12-04 05:01:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Join_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/navbar.jsp", Long.valueOf(1607057787110L));
  }

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

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>잔디공작소</title>\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"img/grass_removebg_preview_wIP_icon.ico\" type=\"image/x-icon\">\r\n");
      out.write("<link rel=\"icon\" href=\"img/grass_removebg_preview_wIP_icon.ico\" type=\"image/x-icon\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\r\n");
      out.write("<style>\r\n");
      out.write("        h1{ font-family: 'ImcreSoojin'}\r\n");
      out.write("        #jandi{ font-family: 'ImcreSoojin'; font-size:18pt; margin-top:4%;}\r\n");
      out.write("        body { padding-top: 3%; }\r\n");
      out.write("      \t.navbar-fixed-top{\r\n");
      out.write("      \t\tbackground-color: white;\r\n");
      out.write("      \t}\r\n");
      out.write("        .page-header{\r\n");
      out.write("            font-family: 'Playfair Display', serif;\r\n");
      out.write("            text-align: left;\r\n");
      out.write("        }  \r\n");
      out.write("        @font-face {\r\n");
      out.write("            font-family: 'ImcreSoojin';\r\n");
      out.write("            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');\r\n");
      out.write("            font-weight: normal;\r\n");
      out.write("            font-style: normal;\r\n");
      out.write("        }\r\n");
      out.write("\t\t</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write(" ");

	String userID=null;
	if(session.getAttribute("userID")!=null){
		userID=(String)session.getAttribute("userID");
	}

      out.write("\r\n");
      out.write("<nav class=\"navbar-fixed-top navbar-default\">\r\n");
      out.write("    \t<div class=\"container-fluid\">\r\n");
      out.write("    \t\t\r\n");
      out.write("\t\t\t<div class=\"navbar-header\">\r\n");
      out.write("            \t<p id=\"jandi\"><a href=\"Index.jsp\" style=\"text-decoration:none; color:black;\">🌱잔디공작소🌱</a><p>           \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("          \t<div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\r\n");
      out.write("      \t\t\t<ul class=\"nav navbar-nav\">\r\n");
      out.write("              \t\t<li><a href=\"Write.jsp\">WRITE</a></li>\r\n");
      out.write("              \t\t<li><a href=\"Repo.jsp\">REPO</a></li>\r\n");
      out.write("              \t\t<li><a href=\"User.jsp\">USER</a></li>\r\n");
      out.write("            \t</ul>\r\n");
      out.write("          <form class=\"navbar-form navbar-right\" role=\"search\" action=\"Search.jsp\">\r\n");
      out.write("          \t<div class=\"form-group\">\r\n");
      out.write("          \t\t<input type=\"text\" class=\"form-control\" placeholder=\"Search\" name=\"userName\">\r\n");
      out.write("        \t</div>\r\n");
      out.write("        \t<button type=\"submit\" class=\"btn btn-success\">SEARCH</button>\r\n");
      out.write("      \t  </form>\r\n");
      out.write("      \t  \r\n");
      out.write("  \r\n");
      out.write("            ");

            	if(userID==null){
            
      out.write("\r\n");
      out.write("            <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("              <li><a href=\"Login.jsp\">LOGIN</a></li>\r\n");
      out.write("              <li><a href=\"Join.jsp\">JOIN</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("            ");

            	}else{
            
      out.write("\r\n");
      out.write("            <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("              <li><a href=\"LogoutAction.jsp\">LOGOUT</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("            ");

            	}
            
      out.write("\r\n");
      out.write("          </div><!-- /.navbar-collapse -->\r\n");
      out.write("        </div><!-- /.container-fluid -->\r\n");
      out.write("    </nav>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta\r\n");
      out.write("        http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <!-- 뷰포트 -->\r\n");
      out.write("        <meta\r\n");
      out.write("        name=\"viewport\" content=\"width=device-width\" initial-scale=\"1\">\r\n");
      out.write("        <!-- 스타일시트 참조  -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("        <title>Join</title>\r\n");
      out.write("<style>\r\n");
      out.write("h1{ font-family: 'ImcreSoojin'}\r\n");
      out.write("#jandi{ font-family: 'ImcreSoojin'; font-size:18pt; margin-top:4%;}\r\n");
      out.write("body { padding-top: 3%; }\r\n");
      out.write(".navbar-fixed-top{\r\n");
      out.write("   background-color: white;\r\n");
      out.write("}\r\n");
      out.write(".page-header{\r\n");
      out.write("    font-family: 'Playfair Display', serif;\r\n");
      out.write("    text-align: left;\r\n");
      out.write("}  \r\n");
      out.write("h1{\r\n");
      out.write("    font-family: 'ImcreSoojin';\r\n");
      out.write("}\r\n");
      out.write("@font-face {\r\n");
      out.write("    font-family: 'ImcreSoojin';\r\n");
      out.write("    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');\r\n");
      out.write("    font-weight: normal;\r\n");
      out.write("    font-style: normal;\r\n");
      out.write("}\r\n");
      out.write(".login-form {\r\n");
      out.write("    width: 23%;\r\n");
      out.write("    margin: 7% auto;\r\n");
      out.write("}\r\n");
      out.write(".login-form form {        \r\n");
      out.write("    margin-bottom: 15px;\r\n");
      out.write("    background: #f7f7f7;\r\n");
      out.write("    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);\r\n");
      out.write("    padding: 30px;\r\n");
      out.write("}\r\n");
      out.write(".login-form h2 {\r\n");
      out.write("    margin: 0 0 15px;\r\n");
      out.write("}\r\n");
      out.write(".form-control, .login-btn {\r\n");
      out.write("    border-radius: 2px;\r\n");
      out.write("}\r\n");
      out.write(".input-group-prepend .fa {\r\n");
      out.write("    font-size: 18px;\r\n");
      out.write("}\r\n");
      out.write(".login-btn {\r\n");
      out.write("    font-size: 15px;\r\n");
      out.write("    font-weight: bold;\r\n");
      out.write("  \tmin-height: 40px;\r\n");
      out.write("}\r\n");
      out.write(".form-control{\r\n");
      out.write("\tfloat: right;\r\n");
      out.write("\twidth:90%;\r\n");
      out.write("\tmargin-bottom:3%;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("   \r\n");
      out.write("<!-- 회원가입폼 -->\r\n");
      out.write("<div class=\"login-form\">\r\n");
      out.write("    <form action=\"JoinAction.jsp\" method=\"post\">\r\n");
      out.write("        <h2 class=\"text-center\" style=\"padding-bottom:2%\"><b>Join</b></h2>  \r\n");
      out.write("        \r\n");
      out.write("        <div class=\"form-group\">\r\n");
      out.write("        \t<div class=\"input-group\">\r\n");
      out.write("  \t\t\t\t<span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-user\"></span></span>\r\n");
      out.write("  \t\t\t\t<input type=\"text\" class=\"form-control\" name=\"userID\" placeholder=\"UserID\" required=\"required\">\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"form-group\">\r\n");
      out.write("        \t<div class=\"input-group\">\r\n");
      out.write("  \t\t\t\t<span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-lock\"></i></span>\r\n");
      out.write("  \t\t\t\t<input type=\"password\" class=\"form-control\" name=\"userPass\" placeholder=\"Password\" required=\"required\">\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"form-group\">\r\n");
      out.write("        \t<div class=\"input-group\">\r\n");
      out.write("  \t\t\t\t<span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-ok\"></i></span>\r\n");
      out.write("  \t\t\t\t<input type=\"password\" class=\"form-control\" name=\"userPassCheck\" placeholder=\"PasswordCheck\" required=\"required\">\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"form-group\">\r\n");
      out.write("        \t<div class=\"input-group\">\r\n");
      out.write("  \t\t\t\t<span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-user\"></span></span>\r\n");
      out.write("  \t\t\t\t<input type=\"text\" class=\"form-control\" name=\"userName\" placeholder=\"UserName\" required=\"required\">\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"form-group\">\r\n");
      out.write("        \t<div class=\"input-group\">\r\n");
      out.write("  \t\t\t\t<span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-envelope\"></i></span>\r\n");
      out.write("  \t\t\t\t<input type=\"text\" class=\"form-control\" name=\"userEmail\" placeholder=\"UserEmail\" required=\"required\">\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("        </div>\r\n");
      out.write("              \r\n");
      out.write("        <div class=\"form-group\">\r\n");
      out.write("            <button type=\"submit\" class=\"btn btn-success login-btn btn-block\">Sign up</button>\r\n");
      out.write("        </div>\r\n");
      out.write("    </form>\r\n");
      out.write("</div>        \r\n");
      out.write("        \r\n");
      out.write("        <!-- 애니매이션 담당 JQUERY -->\r\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.1.1.min.js\"></script>\r\n");
      out.write("        <!-- 부트스트랩 JS  -->\r\n");
      out.write("        <script src=\"js/bootstrap.js\"></script>\r\n");
      out.write("    </body>\r\n");
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
