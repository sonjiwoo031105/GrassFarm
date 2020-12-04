<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>잔디공작소</title>
</head>
<body>
	<%
		session.invalidate();//세션 무효화
 	%>
 	<script>
 		location.href='Index.jsp';//처음화면으로
 	</script>
  </body>
 </html>