<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ include file="navbar.jsp" %>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/Modify.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<script>
function resize(obj) {
    obj.style.height = '1px';
    obj.style.height = (5 + obj.scrollHeight) + 'px';
}
</script>
<body> 
    <%		
	int bbsID = 0;
	if (request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
%>

<div class="container">
<div class="row">
  <div class="col-md-6 col-md-offset-3" style="max-width:100%;">
  <form method="post" action="ModifyAction.jsp?bbsID=<%=bbs.getBbsID()%>">
  <h2 id="name">오늘의 잔디 수정</h2>
  <p><%= bbs.getBbsDate().substring(0,4) + "년 " + bbs.getBbsDate().substring(5, 7)+"월 "+ bbs.getBbsDate().substring(8, 10) + "일 " + bbs.getBbsDate().substring(11, 13) + ":" + bbs.getBbsDate().substring(14, 16)%></p><br>  	
  
  <label for="content">제목</label>
  <input type="text" class="form-control" id="title" name="bbsTitle" value="<%= bbs.getBbsTitle() %>">
  <br>
	<label for="language">언어</label>
	<select class="form-control" id="title" name="bbsLanguage" required="required">
	  	<option value="<%= bbs.getBbsLanguage() %>"><%= bbs.getBbsLanguage() %></option>
	  	<option value="JAVA">JAVA</option>
	  	<option value="C">C</option>
	  	<option value="C++">C++</option>
	  	<option value="C#">C#</option>
	  	<option value="PYTHON">PYTHON</option>
	  	<option value="PHP">PHP</option>
	  	<option value="JSP">JSP</option>
	  	<option value="HTML">HTML</option>
	  	<option value="CSS">CSS</option>
	  	<option value="JavaScript">JavaScript</option>
	</select><br>
	
	<label for="content">소스코드</label>
	<textarea class="form-control" id="code" name="bbsSource" onkeydown="resize(this)" onkeyup="resize(this)">
	<%= bbs.getBbsSource() %>
	</textarea><br>
	
	<label for="content">내용</label>
	<textarea class="form-control" id="writeany" name="bbsContent" onkeydown="resize(this)" onkeyup="resize(this)">
	<%= bbs.getBbsContent() %>
	</textarea><br>
	<button type="submit" class="btn" id="btnSave">수정</button>
	<button type="reset" class="btn" id="cancle">취소</button>
	</form>
</div>
</div>
</div>
</body>
</html>