<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="file.FileDAO" %>
<%@ page import="java.io.File" %>

<!-- 위에것들 head 태그 위에 추가해줄 것 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잔디공작소</title>
</head>
<body>
<%
String userID = (String)session.getAttribute("userID");
int result=new FileDAO().upload("Contents_People&Grass.png",userID);
PrintWriter script=response.getWriter();
script.println("<script>");
switch(result){
case 1:
	script.println("location.href='User.jsp'");
	break;
case -1:
	script.println("alert('사진바꾸기에 실패하였습니다.')");
	script.println("history.back()");
	break;
}
script.println("</script>");
%>
</body>
</html>