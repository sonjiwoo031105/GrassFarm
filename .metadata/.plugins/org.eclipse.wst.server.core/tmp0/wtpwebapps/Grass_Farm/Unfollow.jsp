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
		
        FollowDAO followDAO = new FollowDAO(); //인스턴스생성
        int result = followDAO.unfollow(me,name);	
        PrintWriter script = response.getWriter();
    	script.println("<script>");
        if(result == -1) // 아이디가 기본키 중복되면 오류.
        	script.println("alert('언팔로우에 실패하였습니다.')");
        script.println("window.location=document.referrer;"); //이전페이지 새로고침해서 호출
        script.println("</script>");
 %>
  </body>
 </html>
