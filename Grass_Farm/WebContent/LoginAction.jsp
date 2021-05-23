<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty property="userID" name="user"/>
<jsp:setProperty property="userPass" name="user"/>
<!DOCTYPE html>
<html>
<body>
	<%	
		UserDAO userDAO=new UserDAO();
		int result=userDAO.login(user.getUserID(),user.getUserPass());
		PrintWriter script=response.getWriter();
		script.println("<script>");
		switch(result){
		case 0:
			script.println("alert('비밀번호가 틀립니다.')");
			script.println("history.back()");
			break;
		case 1:
			session.setAttribute("userID", user.getUserID());
			script.println("location.href='Main.jsp'");
			break;
		case -1:
			script.println("alert('존재하지 않는 아이디입니다.')");
			script.println("history.back()");
			break;
		case -2:
			script.println("alert('디비문제')");			
			break;
		}
		script.println("</script>");
	%>
</body>
</html>