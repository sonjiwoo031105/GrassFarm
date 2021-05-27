<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<style>
#title{
	float: left;
	width: 100%;
	height: 35px;
	border: 1px solid #dedede;
	padding: 8px 16px;
	border-radius: 1px;
	margin-bottom: 5%;
	-webkit-box-shadow: none;
	box-shadow: none;
}
#title::placeholder {
	color: #555555;	
	font-family: 'regular';
	font-size: 11pt;
}
#title:focus {
	border-color: #3dab4a;
	color: #555555;
	font-size: 11pt;	
	font-family: 'regular';
	-webkit-box-shadow: none;
	box-shadow: none;
}
@font-face {
	font-family: 'regular';
    src: url('./fonts/NotoSansCJKkr-Regular.otf');
    font-weight: normal;
    font-style: normal;
}
#language{	
	float: left;
	width: 100%;
	height: 35px;
	border: 1px solid #dedede;
	padding: 6px 12px;
	border-radius: 1px;
}
#language::placeholder {
	color: #555555;
	font-size: 11pt;	
	font-family: 'regular';
}
</style>
<body>
<div class="container">
<div class="row">
  <div class="col-md-6 col-md-offset-3" style="max-width:100%;">
  <h2>오늘의 잔디</h2>
  <form method="post" action="WriteAction.jsp">
	<input type="text" class="form-control" id="title" name="bbsTitle" placeholder="제목" required="required"><br>
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
	</select><br>
	<textarea class="form-control" rows="5" name="bbsSource" placeholder="소스코드" required="required"></textarea><br>
	<textarea class="form-control" rows="5" name="bbsContent" placeholder="내용작성" required="required"></textarea><br>
	<button type="submit" style="margin-right:1%" class="btn btn-sm btn-success" id="btnSave">글쓰기</button>
	<button type="reset" class="btn btn-sm btn-success" id="btnSave">취소하기</button>
	</form> 
  </div>
</div>
</div>
</body>
</html>