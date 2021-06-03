<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/Write.css">
</head>
<body>
<div class="container">
<div class="row">
  <div class="col-md-6 col-md-offset-3" style="max-width:100%;">
  <h2 id="name">오늘의 잔디</h2>
  <form method="post" action="WriteAction.jsp">
	<input type="text" class="form-control" id="title" name="bbsTitle" placeholder="제목" required="required">
	<select id="language" class="form-control" name="bbsLanguage" required="required">
	  	<option value="">언어 선택</option>
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
	</select>
	<textarea class="form-control" id="code" rows="5" name="bbsSource" placeholder="소스코드" required="required"></textarea><br>
	<textarea class="form-control" id="writeany" rows="5" name="bbsContent" placeholder="내용 작성" required="required"></textarea><br>
	<button type="submit" class="btn" id="btnSave">글쓰기</button>
	<button type="reset" class="btn" id="cancle">취소하기</button>
	</form> 
  </div>
</div>
</div>
</body>
</html>