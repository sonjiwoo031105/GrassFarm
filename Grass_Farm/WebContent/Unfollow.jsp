<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="follow.FollowDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>잔디공작소</title>
</head>
<body>	
 <%
 		String name=request.getParameter("id");
 		String me=(String)session.getAttribute("userID");
 		out.print(name);
 		out.print(me);
		
        FollowDAO followDAO = new FollowDAO(); //인스턴스생성
        int result = followDAO.unfollow(me,name);		
        out.print(result);
        if(result == -1){ // 아이디가 기본키 중복되면 오류.
        	PrintWriter script = response.getWriter();
        	script.println("<script>");
        	script.println("alert('언팔로우에 실패하였습니다.')");
        	script.println("history.back()");
        	script.println("</script>");
        }
        
        else{
        	PrintWriter script = response.getWriter();
        	script.println("<script>");
        	script.println("alert('언팔로우 하였습니다.')");
        	script.println("history.back()");
        	script.println("</script>");
        }
 %>
  </body>
 </html>
