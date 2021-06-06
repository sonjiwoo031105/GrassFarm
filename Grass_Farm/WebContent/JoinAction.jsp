<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
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
	UserDAO userDAO = new UserDAO(); //인스턴스생성
    int result = userDAO.join(user);	
    PrintWriter script = response.getWriter();
	script.println("<script>");
    if(result == -1){ // 아이디가 기본키기. 중복되면 오류.    	
        script.println("alert('이미 존재하는 아이디 입니다.')");
        script.println("history.back()");
    }else{
       	if(!user.getUserPass().equals(user.getUserPassCheck())){       		
           	script.println("alert('비밀번호가 일치하지 않습니다.')");
           	script.println("history.back()");           	
       	}else{
       		session.setAttribute("userID", user.getUserID());
       		userDAO.joinfollow(user);       		
           	script.println("location.href = 'Main.jsp'");
       	}       	
     }
    script.println("</script>");
 %>
  </body>
 </html>