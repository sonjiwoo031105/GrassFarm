/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.58
 * Generated at: 2020-11-24 05:50:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class test_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<title>Bootstrap Elegant Modal Login Modal Form with Icons</title>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width\" initial-scale=\"1\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\r\n");
      out.write("<style>\r\n");
      out.write("body {\r\n");
      out.write("\tfont-family: 'Varela Round', sans-serif;\r\n");
      out.write("}\r\n");
      out.write(".modal-login {\r\n");
      out.write("\tcolor: #636363;\r\n");
      out.write("\twidth: 350px;\r\n");
      out.write("}\r\n");
      out.write(".modal-login .modal-content {\r\n");
      out.write("\tpadding: 20px;\r\n");
      out.write("\tborder-radius: 5px;\r\n");
      out.write("\tborder: none;\r\n");
      out.write("}\r\n");
      out.write(".modal-login .modal-header {\r\n");
      out.write("\tborder-bottom: none;\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("\tjustify-content: center;\r\n");
      out.write("}\r\n");
      out.write(".modal-login h4 {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tfont-size: 26px;\r\n");
      out.write("}\r\n");
      out.write(".modal-login  .form-group {\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("}\r\n");
      out.write(".modal-login i {\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\tleft: 13px;\r\n");
      out.write("\ttop: 11px;\r\n");
      out.write("\tfont-size: 18px;\r\n");
      out.write("}\r\n");
      out.write(".modal-login .form-control {\r\n");
      out.write("\tpadding-left: 40px;\r\n");
      out.write("}\r\n");
      out.write(".modal-login .form-control:focus {\r\n");
      out.write("\tborder-color: #00ce81;\r\n");
      out.write("}\r\n");
      out.write(".modal-login .form-control, .modal-login .btn {\r\n");
      out.write("\tmin-height: 40px;\r\n");
      out.write("\tborder-radius: 3px; \r\n");
      out.write("}\r\n");
      out.write(".modal-login .hint-text {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tpadding-top: 10px;\r\n");
      out.write("}\r\n");
      out.write(".modal-login .close {\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\ttop: -5px;\r\n");
      out.write("\tright: -5px;\r\n");
      out.write("}\r\n");
      out.write(".modal-login .btn, .modal-login .btn:active {\t\r\n");
      out.write("\tborder: none;\r\n");
      out.write("\tbackground: #00ce81 !important;\r\n");
      out.write("\tline-height: normal;\r\n");
      out.write("}\r\n");
      out.write(".modal-login .btn:hover, .modal-login .btn:focus {\r\n");
      out.write("\tbackground: #00bf78 !important;\r\n");
      out.write("}\r\n");
      out.write(".modal-login .modal-footer {\r\n");
      out.write("\tbackground: #ecf0f1;\r\n");
      out.write("\tborder-color: #dee4e7;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tmargin: 0 -20px -20px;\r\n");
      out.write("\tborder-radius: 5px;\r\n");
      out.write("\tfont-size: 13px;\r\n");
      out.write("\tjustify-content: center;\r\n");
      out.write("}\r\n");
      out.write(".modal-login .modal-footer a {\r\n");
      out.write("\tcolor: #999;\r\n");
      out.write("}\r\n");
      out.write(".trigger-btn {\r\n");
      out.write("\tdisplay: inline-block;\r\n");
      out.write("\tmargin: 100px auto;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"text-center\">\r\n");
      out.write("\t<!-- Button HTML (to Trigger Modal) -->\r\n");
      out.write("\t<a href=\"#myModal\" class=\"trigger-btn\" data-toggle=\"modal\">Click to Open Login Modal</a>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- Modal HTML -->\r\n");
      out.write("<div id=\"myModal\" class=\"modal fade\">\r\n");
      out.write("\t<div class=\"modal-dialog modal-login\">\r\n");
      out.write("\t\t<div class=\"modal-content\">\r\n");
      out.write("\t\t\t<div class=\"modal-header\">\t\t\t\t\r\n");
      out.write("\t\t\t\t<h4 class=\"modal-title\">Member Login</h4>\r\n");
      out.write("\t\t\t\t<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"modal-body\">\r\n");
      out.write("\t\t\t\t<form action=\"/examples/actions/confirmation.php\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-user\"></i>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" placeholder=\"Username\" required=\"required\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-lock\"></i>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"password\" class=\"form-control\" placeholder=\"Password\" required=\"required\">\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" class=\"btn btn-primary btn-block btn-lg\" value=\"Login\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</form>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"modal-footer\">\r\n");
      out.write("\t\t\t\t<a href=\"#\">Forgot Password?</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>     \r\n");
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
