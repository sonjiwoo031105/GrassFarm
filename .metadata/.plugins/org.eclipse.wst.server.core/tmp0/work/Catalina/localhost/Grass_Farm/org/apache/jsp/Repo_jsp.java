/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.58
 * Generated at: 2021-06-24 00:20:59 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.Format;
import user.UserDAO;
import user.User;
import bbs.BbsDAO;
import bbs.Bbs;
import follow.FollowDAO;
import follow.Follow;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.text.SimpleDateFormat;

public final class Repo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("bbs.Bbs");
    _jspx_imports_classes.add("java.io.PrintWriter");
    _jspx_imports_classes.add("user.User");
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("java.text.Format");
    _jspx_imports_classes.add("java.util.Calendar");
    _jspx_imports_classes.add("bbs.BbsDAO");
    _jspx_imports_classes.add("follow.Follow");
    _jspx_imports_classes.add("java.text.SimpleDateFormat");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>잔디공작소</title>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/User.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/navbar.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\r\n");
      out.write("<link href=\"https://www.jqueryscript.net/css/jquerysctipttop.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"dist/jquery.calmosaic.min.css\">\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"img/Contents_Logo.png\" type=\"img/x-icon\">\r\n");
      out.write("<link rel=\"icon\" href=\"img/Contents_Logo.png\" type=\"img/x-icon\">\r\n");
      out.write("\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/jquery@3.3.1/dist/jquery.min.js\"></script>\r\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/moment@2.24.0/moment.min.js\"></script>\r\n");
      out.write("<script src=\"dist/jquery.calmosaic.min.js\"></script>\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.1.1.min.js\"></script>\r\n");
      out.write("<script src=\"js/bootstrap.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\t\r\n");
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
      out.write("\t    \t\t<a id=\"user\" href=\"User.jsp\" style=\"pointer-events: none;\"><img id=\"useri\" src=\"img/Profile_Green.png\"></a>\r\n");
      out.write("\t    \t\t<a id=\"write\" href=\"Write.jsp\"><img id=\"writei\" src=\"img/Header_plu.png\"></a>        \r\n");
      out.write("      \t\t</form>\t\r\n");
      out.write("  \t\t</div>\r\n");
      out.write("  \t</div>\r\n");
      out.write("  </div>\r\n");
      out.write("</nav>\r\n");
 
String userID = (String)session.getAttribute("userID");
Calendar cal = Calendar.getInstance();
UserDAO userDAO = new UserDAO();
BbsDAO bbsDAO = new BbsDAO();
ArrayList<User> user = userDAO.user(userID);
FollowDAO followDAO = new FollowDAO();
int monthcount = bbsDAO.getmonthCount(userID, String.valueOf((cal.get(Calendar.MONTH)+1)));
String imgurl="upload/"+user.get(0).getUserPicture();

      out.write("\t\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("  <div class=\"row\">     \r\n");
      out.write("    <div class=\"col-md-10 col-md-offset-1\" style=\"max-width:100%;\"> \r\n");
      out.write("    \r\n");
      out.write("    <div class=\"col-md-3\" id=\"box1\"> \r\n");
      out.write("\t  <div class=\"card\">\r\n");
      out.write("\t  \t<img class=\"card-img-top\" id=\"img_click\" src=\"");
      out.print(imgurl);
      out.write("\">\t  \t\r\n");
      out.write("   \t\t<div class=\"card-body\">\r\n");
      out.write("  \t\t\t<h4 class=\"card-title\" id=\"userid\">");
      out.print(userID);
      out.write("</h4>\r\n");
      out.write("  \t\t\t<a href=\"LogoutAction.jsp\" id=\"modifyuser\">로그아웃</a>\r\n");
      out.write("  \t\t\t<p class=\"card-text\" id=\"username\">");
      out.print(user.get(0).getUserName());
      out.write("</p> \t\r\n");
      out.write("  \t\t\t\r\n");
      out.write("  \t\t\t<img src=\"img/follow_icon.png\" width=\"24\" height=\"24\" style=\"float:left;\">\r\n");
      out.write("  \t\t\t<a href=\"Follower.jsp\" id=\"follow\">\r\n");
      out.write("  \t\t\t  &nbsp;팔로워&nbsp;<span id=\"follownum\">");
      out.print(followDAO.getFollowing(userID)-1);
      out.write("</span>\r\n");
      out.write("  \t\t\t</a>\r\n");
      out.write("  \t\t\t<a href=\"Following.jsp\" id=\"follow\">\r\n");
      out.write("  \t\t\t  &nbsp;&nbsp;팔로잉&nbsp;<span id=\"follownum\">");
      out.print(followDAO.getFollow(userID)-1);
      out.write("</span>\r\n");
      out.write("  \t\t\t</a>\r\n");
      out.write("  \t\t\t<span id=\"email\" class=\"glyphicon glyphicon-envelope\" aria-hidden=\"true\">&nbsp;");
      out.print(user.get(0).getUserEmail());
      out.write("</span>\r\n");
      out.write("  \t\t\t  \t\t\t\r\n");
      out.write("  \t\t</div>\t\r\n");
      out.write("  \t  </div>\r\n");
      out.write("  \t</div>\r\n");
      out.write("  \t \r\n");
      out.write("  \t<div class=\"col-md-9\" id=\"box2\"> \r\n");
      out.write("  \t\r\n");
      out.write("  \t<a href=\"User.jsp\" id=\"user_nav\"><img src=\"img/overview.png\" width=\"25\" height=\"25\" />&nbsp;Overview</a>\r\n");
      out.write("  \t<a href=\"Repo.jsp\" id=\"overview\"><img src=\"img/Repositories.png\" width=\"25\" height=\"25\" />&nbsp;Repositories</a>\r\n");
      out.write("  \t<a href=\"SetUser.jsp\" id=\"user_nav\"><img src=\"img/setting.png\" width=\"25\" height=\"25\" />&nbsp;Settings</a><br>\r\n");
      out.write("  \t<hr id=\"navlow\">\r\n");
      out.write(" \r\n");
      out.write("    <table class=\"table\" id=\"repo_tb\">\r\n");
      out.write("      <tr style=\"text-align:center;\">\r\n");
      out.write("        <td>제목</td>\r\n");
      out.write("        <td>언어</td>\r\n");
      out.write("        <td>등록일</td>\r\n");
      out.write("        <td>수정</td>\r\n");
      out.write("        <td>삭제</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    ");

      ArrayList<Bbs> getrepo= bbsDAO.getrepo(userID);
      for(int i=0; i<getrepo.size(); i++){
	
      out.write("\r\n");
      out.write("\t<tr style=\"text-align:center;\">\r\n");
      out.write("      <td style=\"text-align:left;\"><a id=\"repobbstitle\" href=\"Show.jsp?bbsID=");
      out.print(getrepo.get(i).getBbsID());
      out.write('"');
      out.write('>');
      out.print(getrepo.get(i).getBbsTitle());
      out.write("</a></td>\r\n");
      out.write("      <td>");
      out.print(getrepo.get(i).getBbsLanguage());
      out.write("</td>\r\n");
      out.write("      <td>");
      out.print(getrepo.get(i).getBbsDate());
      out.write("</td>\r\n");
      out.write("      <td><a href=\"Modify.jsp?bbsID=");
      out.print(getrepo.get(i).getBbsID());
      out.write("\"  class=\"btn btn-default\">수정</a></td>\r\n");
      out.write("      <td><a onclick=\"return confirm('삭제하시겠습니까?')\" href=\"Delete.jsp?bbsID=");
      out.print( getrepo.get(i).getBbsID() );
      out.write("\" class=\"btn btn-danger\">삭제</a></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("\t");

    }
	
      out.write("\r\n");
      out.write("\t</table>  \t  \r\n");
      out.write("  \t</div>\r\n");
      out.write("  \t\r\n");
      out.write("  \t</div>\r\n");
      out.write("  \t<div id=\"heatmap-1\"></div>  \r\n");
      out.write("  </div>\r\n");
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
