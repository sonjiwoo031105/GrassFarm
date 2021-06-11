<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ include file="navbar.jsp" %>
<!-- userdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter"%>
<!-- 자바 클래스 사용 -->
<% request.setCharacterEncoding("UTF-8"); %>
<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPass" />
<jsp:setProperty name="user" property="userPassCheck" />
<jsp:setProperty name="user" property="userEmail" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>잔디공작소</title>
</head>
<body>
 <%
    String userID = (String)session.getAttribute("userID");
        UserDAO userDAO = new UserDAO(); //인스턴스생성
        int result = userDAO.update(user, userID);			
       
        	if(!user.getUserPass().equals(user.getUserPassCheck())){
        		PrintWriter script = response.getWriter();
        		script.println("<script>");
            	script.println("alert('비밀번호가 일치하지 않습니다.')");
            	script.println("history.back()");
            	script.println("</script>");
        	}else{
        		session.setAttribute("userID", user.getUserID());
        		PrintWriter script = response.getWriter();
            	script.println("<script>");
            	script.println("alert('수정되었습니다.')");
             	script.println("location.href = 'User.jsp'");
            	script.println("</script>");
        	}    
 %>
  </body>
 </html>