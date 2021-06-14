<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="file.FileDAO" %>
<%@ page import="java.io.File" %>
<!-- 파일 이름이 동일한게 나오면 자동으로 다른걸로 바꿔주고 그런 행동 해주는것 -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!-- 실제로 파일 업로드 하기 위한 클래스 -->
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<!-- 위에것들 head 태그 위에 추가해줄 것 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		// 디비에 업로드 메소드
		int result=new FileDAO().upload("Contents_People&Grass.png",(String)session.getAttribute("userID"));
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