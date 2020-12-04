<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- 스타일시트 참조  -->
<link rel="stylesheet" href="css/bootstrap.css">
<title>수정하기</title>
<style>
        body { padding-top: 50px; }
      	.navbar-fixed-top{
      		background-color: white;
      	}
        .page-header{
            font-family: 'Playfair Display', serif;
            text-align: left;
        }  
</style>
</head>
<body>

 <nav class="navbar-fixed-top navbar-default">
    	<div class="container-fluid">
    		<div class="navbar-header">
            	<a class="navbar-brand" href="#">
                	<span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
                </a>
             </div>
			<div class="navbar-header">
            	<a href="Index.jsp"><img alt="Brand" width=120px; height=40px;" style="margin-top: 8px;" src="./img/logo.JPG"></a>       
			</div>
          	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      			<ul class="nav navbar-nav">
              		<li><a href="Write.jsp">WRITE</a></li>
              		<li><a href="#">##</a></li>
              		<li><a href="Repo.jsp">REPO</a></li>
              		<li><a href="User.jsp">USER</a></li>
            	</ul>
          <form class="navbar-form navbar-right" role="search" action="Search.jsp">
          	<div class="form-group">
          		<input type="text" class="form-control" placeholder="Search" name="userName">
        	</div>
        	<button type="submit" class="btn btn-default">Submit</button>
      	  </form>
            
            <ul class="nav navbar-nav navbar-right">
              <li><a href="LogoutAction.jsp">LOGOUT</a></li>
            </ul>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <%
	String userID=null;
	if(session.getAttribute("userID")!=null){
		userID=(String)session.getAttribute("userID");
	}
	int bbsID = 0;

	if(request.getParameter("bbsID") != null){
		bbsID = Integer.parseInt(request.getParameter("bbsID"));

		BbsDAO bbsDAO = new BbsDAO();

		int result = bbsDAO.delete(bbsID);

		if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글 삭제에 실패했습니다')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('삭제되었습니다.')");
			script.println("location.href='Repo.jsp'");
			script.println("</script>");
		}
	}
	%>

</body>
</html>