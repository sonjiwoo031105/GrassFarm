/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.58
 * Generated at: 2021-06-25 02:34:48 UTC
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
import follow.FollowDAO;
import follow.Follow;
import bbs.BbsDAO;
import bbs.Bbs;
import java.io.PrintWriter;
import java.util.ArrayList;

public final class Search_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/navbar.jsp", Long.valueOf(1623627948691L));
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
    _jspx_imports_classes.add("follow.Follow");
    _jspx_imports_classes.add("bbs.BbsDAO");
    _jspx_imports_classes.add("user.UserDAO");
    _jspx_imports_classes.add("follow.FollowDAO");
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
 request.setCharacterEncoding("UTF-8"); 
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>잔디공작소</title>\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"img/Contents_Logo.png\" type=\"img/x-icon\">\r\n");
      out.write("<link rel=\"icon\" href=\"img/Contents_Logo.png\" type=\"img/x-icon\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/navbar.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<header>\r\n");
      out.write("<nav class=\"navbar\" id=\"undershadow\">\r\n");
      out.write("  <div class=\"container\">\r\n");
      out.write("  \t<div class=\"row\">\r\n");
      out.write("  \t\t<div class=\"col-md-8 col-md-offset-2\" style=\"max-width:100%;\">  \t\t\t\r\n");
      out.write("    \t\t<form class=\"nav navbar-form\" role=\"search\" action=\"Search.jsp\">  \r\n");
      out.write("    \t\t<div class=\"navbar-header\">\r\n");
      out.write("        \t\t<a href=\"Main.jsp\"><img src=\"img/Header_Log.png\" id=\"logo\" alt=\"로고 : Header_Logo\" ></a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("  \t\t\t<div class=\"form-group\" id=\"wich\">\r\n");
      out.write("  \t\t    \t<div class=\"input-group\">\r\n");
      out.write("  \t\t\t\t\t<span class=\"input-group-addon\" id=\"iconstyle\"><i class=\"glyphicon glyphicon-search\"></i></span>\r\n");
      out.write("  \t\t\t\t\t<input type=\"text\" id=\"inputstyle\" class=\"form-control\" name=\"search\" placeholder=\"검색\" required=\"required\">\r\n");
      out.write("\t\t\t\t</div>         \t\t\r\n");
      out.write("        \t</div>\r\n");
      out.write("\t    \t\t<a id=\"user\" href=\"User.jsp\"><img id=\"useri\" src=\"img/Header_profil.png\"></a>\r\n");
      out.write("\t    \t\t<a id=\"write\" href=\"Write.jsp\"><img id=\"writei\" src=\"img/Header_plu.png\"></a>        \r\n");
      out.write("      \t\t</form>\t\r\n");
      out.write("  \t\t</div>\r\n");
      out.write("  \t</div>\r\n");
      out.write("  </div>\r\n");
      out.write("</nav>\r\n");
      out.write("</header>\r\n");
      out.write("</html>");
      out.write('\r');
      out.write('\n');
      user.User user = null;
      user = (user.User) _jspx_page_context.getAttribute("user", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (user == null){
        user = new user.User();
        _jspx_page_context.setAttribute("user", user, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("user"), "userName", request.getParameter("userName"), request, "userName", false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/Search.css\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\r\n");
      out.write("<title>잔디공작소</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("  <div class=\"row\">     \r\n");
      out.write("    <div class=\"col-md-8 col-md-offset-2\" style=\"max-width:100%;\">\r\n");
      out.write("    <h3 id=\"title\">사람</h3><hr />\r\n");
      out.write("   \t</div>\r\n");
      out.write(" </div>\r\n");
      out.write("</div> \r\n");

	String userID = (String)session.getAttribute("userID");
  	String search = request.getParameter("search");

 	UserDAO userDAO=new UserDAO();
 	BbsDAO bbsDAO=new BbsDAO();
 	FollowDAO followDAO=new FollowDAO();
 	
	ArrayList<User> userlist=userDAO.search(search, search);
	
	for(int i=0; i<userlist.size(); i++){
	int follow=followDAO.SearchFollowing(userID, userlist.get(i).getUserID()); 

      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("  <div class=\"row\">     \r\n");
      out.write("    <div class=\"col-md-8 col-md-offset-2\" style=\"max-width:100%;\"> \r\n");
      out.write("    \t<div id=\"circle1\">\r\n");
      out.write("    \t  <img src=\"./upload/");
      out.print(userlist.get(i).getUserPicture());
      out.write("\" style=\"width:100%\">\r\n");
      out.write("    \t</div>\r\n");
      out.write("    \t\r\n");
      out.write("    \t<div id=\"user_info\">\r\n");
      out.write("    \t\t<a href=\"SearchUser.jsp?userID=");
      out.print(userlist.get(i).getUserID());
      out.write("\" id=\"userID\">");
      out.print(userlist.get(i).getUserID());
      out.write("</a>    \t\r\n");
      out.write("    \t\t<div id=\"userName\">");
      out.print(userlist.get(i).getUserName());
      out.write("</div>    \t\r\n");
      out.write("    \t\t<div id=\"userEmail\">");
      out.print(userlist.get(i).getUserEmail());
      out.write("</div>\r\n");
      out.write("    \t</div>\r\n");
      out.write("    \t\r\n");
      out.write("    \t");
 if(userlist.get(i).getUserID().equals(userID)){
	       }else if(follow>0){
      out.write("\r\n");
      out.write("\t       <a href='Unfollow.jsp?id=");
      out.print(userlist.get(i).getUserID());
      out.write("' id=\"followbtn\" class=\"btn btn-success\">Unfollow</a>\r\n");
      out.write("\t    ");
}else{
      out.write("\r\n");
      out.write("\t       <a href='Follow.jsp?id=");
      out.print(userlist.get(i).getUserID());
      out.write("' id=\"followbtn\" class=\"btn btn-success\">Follow</a>\r\n");
      out.write("\t    ");
} 
      out.write(" \r\n");
      out.write("    \t<br><br><br><br>\r\n");
      out.write("    \t<hr />\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
}
      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("  <div class=\"row\">     \r\n");
      out.write("    <div class=\"col-md-8 col-md-offset-2\" style=\"max-width:100%;\">\r\n");
      out.write("    <h3 id=\"title\">게시글</h3><hr />\r\n");
      out.write("   \t</div>\r\n");
      out.write(" </div>\r\n");
      out.write("</div>  \t\r\n");

	ArrayList<Bbs> repolist=bbsDAO.searchrepo(search);
	for(int i=0; i<repolist.size(); i++){
		String picture = userDAO.match_profile(repolist.get(i).getUserID());

      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("  <div class=\"row\">     \r\n");
      out.write("    <div class=\"col-md-8 col-md-offset-2\" style=\"max-width:100%;\"> \r\n");
      out.write("    \t<div id=\"circle1\">\r\n");
      out.write("    \t  <img src=\"./img/");
      out.print(picture);
      out.write("\" style=\"width:100%\">\r\n");
      out.write("    \t</div>\r\n");
      out.write("    \t\r\n");
      out.write("    \t<div id=\"user_info\">\r\n");
      out.write("    \t\t<a href=\"SearchUser.jsp?userID=");
      out.print(repolist.get(i).getUserID());
      out.write("\" id=\"userID\">");
      out.print(repolist.get(i).getUserID());
      out.write("</a>    \t\r\n");
      out.write("    \t\t<div id=\"userName\">");
      out.print(repolist.get(i).getBbsDate());
      out.write("</div>  \r\n");
      out.write("    \t</div>\r\n");
      out.write("    \t\r\n");
      out.write("    \t<div id=\"content\">\r\n");
      out.write("    \t<a href=\"Show.jsp?bbsID=");
      out.print(repolist.get(i).getBbsID());
      out.write("\" id=\"bbstitle\">");
      out.print(repolist.get(i).getBbsTitle());
      out.write("</a><br><br>\r\n");
      out.write("    \t&nbsp;");
      out.print(repolist.get(i).getBbsContent());
      out.write("\r\n");
      out.write("    \t</div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
}
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
