<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="follow.FollowDAO"%>
<!-- userdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter"%>
<!-- 자바 클래스 사용 -->
<% request.setCharacterEncoding("UTF-8"); %>
<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
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
        int result = followDAO.Follow(me,name);		
        PrintWriter script = response.getWriter();
    	script.println("<script>");
        if(result == -1) // 아이디가 기본키 중복되면 오류.
        	script.println("alert('팔로우에 실패하였습니다.')");        
        script.println("window.location=document.referrer;"); //이전페이지 새로고침해서 호출
    	script.println("</script>");
 %>
  </body>
 </html>