/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.58
 * Generated at: 2021-05-28 11:51:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import user.UserDAO;
import user.User;
import bbs.BbsDAO;
import bbs.Bbs;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;

public final class User_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/navbar.jsp", Long.valueOf(1622202636981L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("bbs.Bbs");
    _jspx_imports_classes.add("java.io.PrintWriter");
    _jspx_imports_classes.add("user.User");
    _jspx_imports_classes.add("java.util.Calendar");
    _jspx_imports_classes.add("bbs.BbsDAO");
    _jspx_imports_classes.add("user.UserDAO");
    _jspx_imports_classes.add("java.util.ArrayList");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<style> \r\n");
      out.write("#undershadow{\r\n");
      out.write("\tbox-shadow: 0 3px 3px -3px rgba(0,0,0,0.10), 0 6px 6px -6px rgba(0,0,0,0.12), 0 6px 6px -6px rgba(0,0,0,0.14);\r\n");
      out.write("\tborder-radius: 0px;\r\n");
      out.write("}\r\n");
      out.write(".nav.navbar-form{\r\n");
      out.write("\tpadding: 0px 0px;\r\n");
      out.write("}\r\n");
      out.write(".navbar-header{\r\n");
      out.write("\tmargin: 0px;\r\n");
      out.write("\tpadding: 0px 0px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#logo{\r\n");
      out.write("\tfloat:left;\r\n");
      out.write("\twidth: 70%;\r\n");
      out.write("}\r\n");
      out.write("@font-face {\r\n");
      out.write("\tfont-family: 'regular';\r\n");
      out.write("    src: url('./fonts/NotoSansCJKkr-Regular.otf');\r\n");
      out.write("    font-weight: normal;\r\n");
      out.write("    font-style: normal;\r\n");
      out.write("}\r\n");
      out.write("#wich{\r\n");
      out.write("\tfloat: left;\r\n");
      out.write("\tmargin-left:8%;\r\n");
      out.write("}\r\n");
      out.write("#iconstyle{\r\n");
      out.write("\tborder: none;\r\n");
      out.write("\tbackground-color:#3dab4a;\r\n");
      out.write("\tcolor:white;\r\n");
      out.write("\tborder-top-left-radius: 7px;\r\n");
      out.write("\tborder-bottom-left-radius: 7px;\r\n");
      out.write("}\r\n");
      out.write("#inputstyle{\r\n");
      out.write("\tfont-family: 'regular';\r\n");
      out.write("\tborder-color:#3dab4a; \r\n");
      out.write("\tborder-top-right-radius: 7px;\r\n");
      out.write("\tborder-bottom-right-radius: 7px;\r\n");
      out.write("\tline-height:100%;\r\n");
      out.write("  \tfont-size: 11pt;\r\n");
      out.write("  \twidth: 85%;\r\n");
      out.write("}\r\n");
      out.write("#inputstyle::placeholder{\r\n");
      out.write("\tcolor: #3dab4a;\r\n");
      out.write("\tfont-size: 11pt;\r\n");
      out.write("}\r\n");
      out.write("#inputstyle:focus{\r\n");
      out.write("\toutline: 0;\r\n");
      out.write("\t-webkit-box-shadow: none;\r\n");
      out.write("\tbox-shadow: none;\r\n");
      out.write("}\r\n");
      out.write("#up{\r\n");
      out.write("\tfloat: right;\r\n");
      out.write("}\r\n");
      out.write("#write{\r\n");
      out.write("\tpadding: 0;\r\n");
      out.write("\tbackground-color: #ffffff;\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("#repo{\r\n");
      out.write("\tpadding: 0;\r\n");
      out.write("\tbackground-color: #ffffff;\r\n");
      out.write("}\r\n");
      out.write("#user{\r\n");
      out.write("\tpadding: 0;\t\r\n");
      out.write("\tbackground-color: #ffffff;\r\n");
      out.write("}\r\n");
      out.write("#writei{\r\n");
      out.write("\tmax-width:100%;\r\n");
      out.write("\tmax-height:100%;\r\n");
      out.write("\tmargin-right: 30px;\r\n");
      out.write("}\r\n");
      out.write("#repoi{\r\n");
      out.write("\tmax-width:100%;\r\n");
      out.write("\tmax-height:100%;\r\n");
      out.write("\tmargin-right: 30px;\r\n");
      out.write("}  \r\n");
      out.write("#useri{\r\n");
      out.write("\tmax-width:100%;\r\n");
      out.write("\tmax-height:100%;\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
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
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("\t\t<title>잔디공작소</title>\r\n");
      out.write("        <style>\r\n");
      out.write("        body { \r\n");
      out.write("        \tpadding-top: 30px; \r\n");
      out.write("        \t}\r\n");
      out.write("      \t.navbar-fixed-top{\r\n");
      out.write("      \t\tbackground-color: white;\r\n");
      out.write("      \t}\r\n");
      out.write("        .page-header{\r\n");
      out.write("            font-family: 'Playfair Display', serif;\r\n");
      out.write("            text-align: left;\r\n");
      out.write("        }  \r\n");
      out.write("       h1, #ps, #pss{\r\n");
      out.write("        \tfont-family: 'ImcreSoojin';\r\n");
      out.write("        }\r\n");
      out.write("        @font-face {\r\n");
      out.write("            font-family: 'ImcreSoojin';\r\n");
      out.write("            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');\r\n");
      out.write("            font-weight: normal;\r\n");
      out.write("            font-style: normal;\r\n");
      out.write("        }\r\n");
      out.write("        #ps{\r\n");
      out.write("          \ttext-align:center;\r\n");
      out.write("        \tfont-size: 18pt;\r\n");
      out.write("        }\r\n");
      out.write("        #pss{\r\n");
      out.write("          \ttext-align:center;\r\n");
      out.write("        \tfont-size: 60pt;\r\n");
      out.write("        \tcolor: green; \t\r\n");
      out.write("        }\r\n");
      out.write("\t\t</style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("   \t\t\r\n");
      out.write("  \t\t\t");
 
  				Calendar cal = Calendar.getInstance();
 				UserDAO userDAO=new UserDAO();
  				BbsDAO bbsDAO=new BbsDAO();
				ArrayList<User> user=userDAO.user((String)session.getAttribute("userID"));
				int count=bbsDAO.getCount((String)session.getAttribute("userID"));
				int monthcount=bbsDAO.getmonthCount((String)session.getAttribute("userID"), String.valueOf((cal.get(Calendar.MONTH)+1)));
			
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("  \t\t\t <div class=\"container\">\r\n");
      out.write("  \t\t\t \t<div class=\"card\" style=\"width:25%;margin-top:40px;display: inline-block;\">\r\n");
      out.write("  \t\t\t \t\t<img class=\"card-img-top\" src=\"./img/grass.png\" id=\"img_click\" style=\"width:100%\">\r\n");
      out.write("   \t\t\t \t\t\t<div class=\"card-body\">\r\n");
      out.write("  \t\t\t \t\t\t\t<h4 class=\"card-title\">");
      out.print((String)session.getAttribute("userID"));
      out.write("</h4>\r\n");
      out.write("  \t\t\t \t\t\t\t<span class=\"glyphicon glyphicon-user\" aria-hidden=\"true\"></span>\r\n");
      out.write("  \t\t\t \t\t\t\t\t<p class=\"card-text\">");
out.print(user.get(0).getUserName());
      out.write("</p> \t\t\t \t\t\t\t\r\n");
      out.write("  \t\t\t \t\t\t\t<span class=\"glyphicon glyphicon-envelope\" aria-hidden=\"true\">\r\n");
      out.write("  \t\t\t \t\t\t\t\t<p class=\"card-text\">");
out.print(user.get(0).getUserEmail());
      out.write("</p>\t\t\r\n");
      out.write("  \t\t\t \t\t\t\t</span>\r\n");
      out.write("  \t\t\t \t\t\t\t<br><br>\r\n");
      out.write("  \t\t\t \t\t\t\t\r\n");
      out.write("  \t\t\t \t\t\t\t<a href=\"#\" class=\"btn btn-success\" style=\"width:100%\">수정하기</a>\r\n");
      out.write("  \t\t\t \t\t\t</div>\t\r\n");
      out.write("  \t\t\t\t </div>\r\n");
      out.write("\r\n");
      out.write("  \t\t\t \t\t<div class=\"card\" style=\"width:35%;display: inline-block; \">\r\n");
      out.write("  \t\t\t\t\t\t<div class=\"card-body\">\r\n");
      out.write("  \t\t\t \t\t\t\t<p id=\"ps\">");
out.print(user.get(0).getUserName());
      out.write("님의 총 잔디 개수<br>\r\n");
      out.write("  \t\t\t\t\t\t\t\t<p id=\"pss\">");
out.print(count);
      out.write("개</p>\r\n");
      out.write("  \t\t\t\t\t\t\t\t<br><br><br><br><br><br><br><br><br>\r\n");
      out.write("  \t\t\t\t\t\t\t</p>\t\r\n");
      out.write("  \t\t\t \t\t\t</div>\r\n");
      out.write("  \t\t\t \t\t</div>\r\n");
      out.write("  \t\t\t \t\t\r\n");
      out.write("  \t\t\t \t\t<div class=\"card\" style=\"width:35%;display: inline-block; \">\r\n");
      out.write("  \t\t\t\t\t\t<div class=\"card-body\">\r\n");
      out.write("  \t\t\t \t\t\t\t<p id=\"ps\">");
out.print(user.get(0).getUserName());
      out.write('님');
      out.write('의');
      out.write(' ');
      out.print(cal.get(Calendar.MONTH)+1);
      out.write("월의 잔디 개수<br>\r\n");
      out.write("  \t\t\t\t\t\t<p id=\"pss\">");
out.print(monthcount);
      out.write("개</p>\r\n");
      out.write("  \t\t\t\t\t\t<br><br><br><br><br><br><br><br><br>\r\n");
      out.write("  \t\t\t\t\t</p>\t\r\n");
      out.write("  \t\t\t \t\t\t</div>\r\n");
      out.write("  \t\t\t \t\t</div>\r\n");
      out.write("  \t\t\t \t\t\r\n");
      out.write("\r\n");
      out.write("  \t\t\t \t\t\t<div class=\"modal\" id=\"myModal\" tabindex=\"-1\">\r\n");
      out.write("  \t\t\t\t\t\t\t<div class=\"modal-dialog\">\r\n");
      out.write("    \t\t\t\t\t\t<div class=\"modal-content\">\r\n");
      out.write("    \t\t\t\t\t    \t<div class=\"modal-header\">\r\n");
      out.write("    \t\t\t\t\t    \t <h5 class=\"modal-title\">Profile Modify</h5>\r\n");
      out.write("        \t\t\t\t\t\t<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("          \t\t\t\t\t\t<span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("        \t\t\t\t\t\t</button>\r\n");
      out.write("      \t\t\t\t\t\t\t</div>\r\n");
      out.write("  \t\t\t\t\t\t\t<div class=\"modal-body\">\r\n");
      out.write("  \t\t\t\t\t\t\t<h5>프로필 사진 수정하기</h5>\r\n");
      out.write("  \t\t\t\t\t\t\t<form method=\"post\" enctype=\"multipart/form-data\" action=\"upload.jsp\">\r\n");
      out.write("  \t\t\t\t\t\t\t\t<input type=\"file\" name=\"bfile\" id=\"bfile\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"submit\" value=\"업로드\">\r\n");
      out.write("\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t\t<script>\r\n");
      out.write("    \t\t\t\t\t\t\tvar fileCheck = document.getElementById(\"bfile\").value;\r\n");
      out.write("    \t\t\t\t\t\t\tif(!fileCheck){\r\n");
      out.write("        \t\t\t\t\t\t\talert(\"파일을 첨부해 주세요\");\r\n");
      out.write("        \t\t\t\t\t\treturn false;\r\n");
      out.write("    \t\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\t\t\t</script>\r\n");
      out.write("  \t\t\t\t\t\t\t\t<hr>\r\n");
      out.write("  \t\t\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-success btn-lg btn-block\">기본 이미지로 변경하기</button>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("    \t\t\t\t\t\t</div>\r\n");
      out.write("  \t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div> \r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("  \t\t\t\t\t\t\t<!-- The Modal -->\r\n");
      out.write("  \t\t\t\t\t\t\t  <script type=\"text/javascript\">\r\n");
      out.write("  \t\t\t\t\t\t\t\tvar modal = document.getElementById('myModal');\r\n");
      out.write("    \t\t\t\t\t\t\t// Get the button that opens the modal\r\n");
      out.write("    \t\t\t\t\t\t\tvar btn = document.getElementById(\"img_click\");\r\n");
      out.write("   \t\t\t\t\t\t\t\t// Get the <span> element that closes the modal\r\n");
      out.write("    \t\t\t\t\t\t\tvar span = document.getElementsByClassName(\"close\")[0];                                          \r\n");
      out.write("    \t\t\t\t\t\t\t// When the user clicks on the button, open the modal \r\n");
      out.write("    \t\t\t\t\t\t\tbtn.onclick = function() {\r\n");
      out.write("    \t\t\t\t\t\t\t    modal.style.display = \"block\";\r\n");
      out.write("    \t\t\t\t\t\t\t}\r\n");
      out.write("    \t\t\t\t\t\t\t// When the user clicks on <span> (x), close the modal\r\n");
      out.write("    \t\t\t\t\t\t\tspan.onclick = function() {\r\n");
      out.write("        \t\t\t\t\t\t\tmodal.style.display = \"none\";\r\n");
      out.write("    \t\t\t\t\t\t\t}\r\n");
      out.write("    \t\t\t\t\t\t\t// When the user clicks anywhere outside of the modal, close it\r\n");
      out.write("    \t\t\t\t\t\t\twindow.onclick = function(event) {\r\n");
      out.write("        \t\t\t\t\t\t\tif (event.target == modal) {\r\n");
      out.write("            \t\t\t\t\t\t\tmodal.style.display = \"none\";\r\n");
      out.write("        \t\t\t\t\t\t\t}\r\n");
      out.write("    \t\t\t\t\t\t\t}\r\n");
      out.write("    \t\t\t\t\t\t\t</script>\r\n");
      out.write("    \t\t\t\t\t\t\t\r\n");
      out.write("    \t\t\t\t\t\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "github.jsp", out, false);
      out.write("\r\n");
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
