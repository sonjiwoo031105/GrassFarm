<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<jsp:useBean id="user" class="user.User" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	
String id=request.getParameter("info");
String info[]=id.split(",");
UserDAO userDAO=new UserDAO();
int result=userDAO.googlelogin(info[0],info[1],"Contents_People&Grass.png",info[3]);
if(result==1){
	System.out.println("1");
	userDAO.googlefollow(info[0]);
	PrintWriter script = response.getWriter();
    script.println("<script>");
    session.setAttribute("userID", info[0]);
    script.println("location.href='Main.jsp'");
    script.println("</script>");
}else if(result==-1){
	
	System.out.println("-1");
	PrintWriter script = response.getWriter();
    script.println("<script>");
    session.setAttribute("userID", info[0]);
    script.println("location.href='Main.jsp'");
    script.println("</script>");
    
}else if(result==-2){
	System.out.println("-2");
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('디비 오류')");			
	script.println("<script>");
}else{
	System.out.println("default");
	session.setAttribute("userID", info[0]);
	PrintWriter script = response.getWriter();
	script.println("<script>");
   	script.println("location.href = 'Main.jsp'");
   	script.println("<script>");
} 
%>
</body>
</html>