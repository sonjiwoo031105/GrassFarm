<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty property="userID" name="user"/>
<jsp:setProperty property="userPass" name="user"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset-UTF-8">
<title></title>
</head>
<body>
	<%
	
		UserDAO userDAO=new UserDAO();
		int result=userDAO.login(user.getUserID(),user.getUserPass());
		if(result==1){
			PrintWriter script=response.getWriter();
			session.setAttribute("userID", user.getUserID());
			script.println("<script>");
			script.println("location.href='Index.jsp'");
			script.println("</script>");
		}
		if(result==0){
			PrintWriter script=response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		if(result==-1){
			PrintWriter script=response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		if(result==-2){
			PrintWriter script=response.getWriter();
			script.println("<script>");
			script.println("alert('디비문제')");
			script.println("</script>");
		}
	%>
</body>
</html>