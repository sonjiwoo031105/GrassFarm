<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="comment.CommentDAO"%>
<%@ page import="comment.Comment"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=UTF-8"); 
%>
<!DOCTYPE html>
<html>
<body>
<%
	Comment comment=new Comment();
	comment.setBbsID(Integer.parseInt(request.getParameter("bbsID")));
	comment.setUserID((String)session.getAttribute("userID"));
	System.out.println("아이디:"+(String)session.getAttribute("userID"));
	comment.setCommentText(request.getParameter("CommentText"));
	
	CommentDAO commentDAO=new CommentDAO();
	int result = commentDAO.write(comment);
	PrintWriter script = response.getWriter();
	script.println("<script>");
	switch(result){
	case -1:
		script.println("alert('글쓰기에 실패했습니다')");
		script.println("history.back()");
		break;
	default:
		script.println("history.back()");
		break;
	}		
	script.println("</script>");
%>
</body>
</html>