/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.58
 * Generated at: 2020-12-11 01:43:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import bbs.BbsDAO;
import bbs.Bbs;
import follow.FollowDAO;
import follow.Follow;
import java.io.PrintWriter;
import java.util.ArrayList;

public final class Index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/navbar.jsp", Long.valueOf(1607622244172L));
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
    _jspx_imports_classes.add("bbs.BbsDAO");
    _jspx_imports_classes.add("follow.Follow");
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
      out.write("          \t\t<input type=\"text\" class=\"form-control\" placeholder=\"Search\" name=\"userName\" required=\"required\">\r\n");
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
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\r\n");
      out.write("        <link rel=\"shortcut icon\" href=\"grass_removebg_preview_wIP_icon.ico\" type=\"image/x-icon\">\r\n");
      out.write("\t\t<link rel=\"icon\" href=\"grass_removebg_preview_wIP_icon.ico\" type=\"image/x-icon\">\r\n");
      out.write("       \r\n");
      out.write("        <title>잔디공작소</title>\r\n");
      out.write("        <style>\r\n");
      out.write("        #jandi{ font-family: 'ImcreSoojin'; font-size:18pt; margin-top:4%;}\r\n");
      out.write("        body { padding-top: 3%; }\r\n");
      out.write("      \t.navbar-fixed-top{\r\n");
      out.write("      \t\tbackground-color: white;\r\n");
      out.write("      \t}\r\n");
      out.write("        .page-header{\r\n");
      out.write("            font-family: 'Playfair Display', serif;\r\n");
      out.write("            text-align: left;\r\n");
      out.write("        }  \r\n");
      out.write("        h1{\r\n");
      out.write("        \tfont-family: 'ImcreSoojin';\r\n");
      out.write("        }\r\n");
      out.write("        @font-face {\r\n");
      out.write("            font-family: 'ImcreSoojin';\r\n");
      out.write("            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');\r\n");
      out.write("            font-weight: normal;\r\n");
      out.write("            font-style: normal;\r\n");
      out.write("        }\r\n");
      out.write("        .jumbotron{\r\n");
      out.write("        \tbackground-image: url('https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F111244264AD6915B2E');\r\n");
      out.write("       \t \tbackground-size: cover;\r\n");
      out.write("        \ttext-shadow: black 0.2em 0.2em 0.2em;\r\n");
      out.write("        \tcolor:white;\r\n");
      out.write("      \t}\r\n");
      out.write("\t\t</style>\r\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/styles/hybrid.min.css\">\r\n");
      out.write("\t\t<script src=\"https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/highlight.min.js\"></script>\r\n");
      out.write("\t\t<script>hljs.initHighlightingOnLoad();</script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write(" ");

  	if(userID==null){
  
      out.write("\r\n");
      out.write("   <div class=\"container\">\r\n");
      out.write("     <div class=\"row\">\r\n");
      out.write("       <div class=\"col-md-8 col-md-offset-2\" style=\"max-width:100%; text-align:center;\">\r\n");
      out.write("         <div class=\"jumbotron\" style=\"margin-top:18%\">\r\n");
      out.write("  \t\t    <h1>잔디공작소</h1>\r\n");
      out.write("  \t\t\t<p>잔디공작소에 오신 것을 환영합니다.</p>\r\n");
      out.write("  \t\t\t<p><a class=\"btn btn-success btn-lg\" href=\"Join.jsp\" role=\"button\">회원가입하러가기</a></p>\r\n");
      out.write("\t\t  </div>\r\n");
      out.write("       </div>\r\n");
      out.write("     </div>\r\n");
      out.write("   </div>\r\n");
      out.write("  \r\n");
      out.write("  ");

  	}else{
  
      out.write("\r\n");
      out.write("  <!-- Page Content -->\r\n");
      out.write("  <div class=\"container\">\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("      <!-- Blog Entries Column -->\r\n");
      out.write("      <div class=\"col-md-8 col-md-offset-2\" style=\"max-width:100%;\">\r\n");
      out.write("        <div style=\"float:left\" class=\"col-md-4\"><h1>오늘의 잔디</h1></div>\r\n");
      out.write("         <form role=\"search\" action=\"SearchRepocss.jsp\">\r\n");
      out.write("    \r\n");
      out.write("     <div class=\"input-group\" style=\"margin-top:3%\">\r\n");
      out.write("      <div class=\"input-group-btn\">\r\n");
      out.write("         <select style=\"width:80px\" class=\"form-control\" name=\"catgo\" required=\"required\">\r\n");
      out.write("                    <option value=\"\"  selected>선택</option>\r\n");
      out.write("                    <option value=\"bbsTitle\">제목</option>\r\n");
      out.write("                    <option value=\"bbsContent\">내용</option>\r\n");
      out.write("                    <option value=\"bbsLanguage\">언어</option>\r\n");
      out.write("         </select>\r\n");
      out.write("      </div><!-- /btn-group -->\r\n");
      out.write("      <input type=\"text\" name=\"search\" class=\"form-control\" required=\"required\">\r\n");
      out.write("       <span class=\"input-group-btn\">\r\n");
      out.write("        <button class=\"btn btn-default\" type=\"submit\"><i class=\"glyphicon glyphicon-search\"></i></button>\r\n");
      out.write("      </span>\r\n");
      out.write("    </div><!-- /input-group -->\r\n");
      out.write("     </form> \r\n");
      out.write("         </div>\r\n");
      out.write("     \r\n");
      out.write("      <div class=\"col-md-8 col-md-offset-2\" style=\"max-width:100%;\">\r\n");
      out.write("     \r\n");
      out.write("        ");

			FollowDAO followDAO = new FollowDAO();
        	BbsDAO bbsDAO = new BbsDAO();
        	
        	ArrayList<Follow> Follow = followDAO.SearchFollowing(userID);
        	for(int i=0; i<Follow.size(); i++){
        		ArrayList<Bbs> list=bbsDAO.getList(Follow.get(i).getFollow());
        		for(int j=0; j<list.size(); j++){
		
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("       \t<div class=\"card\"> \r\n");
      out.write("        \t<pre><code class=\"");
      out.print( list.get(j).getBbsLanguage());
      out.write("\">\r\n");
      out.write("         \t");
      out.print(list.get(j).getBbsSource());
      out.write("\r\n");
      out.write("         \t</code></pre>\r\n");
      out.write("          <div class=\"card-body\">\r\n");
      out.write("            <h2 class=\"card-title\">");
      out.print(list.get(j).getBbsTitle());
      out.write("</h2>\r\n");
      out.write("            <a href=\"Show.jsp?bbsID=");
      out.print(list.get(j).getBbsID());
      out.write("\" class=\"btn btn-primary\">Read More &rarr;</a>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"card-footer text-muted\"> \r\n");
      out.write("          Posted on ");
      out.print( list.get(j).getBbsDate());
      out.write(" <br>\r\n");
      out.write("          Posted by ");
      out.print(list.get(j).getUserID());
      out.write("\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\t\t<br><br>\r\n");
      out.write("\t\t");

        		}
        	}
  	}
		
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- /.row -->\r\n");
      out.write("  </div>\r\n");
      out.write("  <!-- /.container -->\r\n");
      out.write("        <!-- 애니매이션 담당 JQUERY -->\r\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.1.1.min.js\"></script>\r\n");
      out.write("        <!-- 부트스트랩 JS  -->\r\n");
      out.write("        <script src=\"js/bootstrap.js\"></script>\r\n");
      out.write("        <script src=\"//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.8.0/highlight.min.js\"></script> <!-- activate highlight.js --> <script>hljs.initHighlightingOnLoad();</script>\r\n");
      out.write("\t\t<script src=\"js/highlight.pack.js\"></script>  \r\n");
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
