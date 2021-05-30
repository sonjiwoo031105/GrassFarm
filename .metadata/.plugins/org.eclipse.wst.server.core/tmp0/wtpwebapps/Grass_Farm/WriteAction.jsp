<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=UTF-8"); 
%>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContent" />
<jsp:setProperty name="bbs" property="bbsSource" />
<jsp:setProperty name="bbs" property="bbsLanguage" />

<!DOCTYPE html>
<html>
<body>
<%
	String userID = null;
	if (session.getAttribute("userID") != null)
		bbs.setUserID((String) session.getAttribute("userID"));
	
	BbsDAO BbsDAO = new BbsDAO();
	int result = BbsDAO.write(bbs);
	PrintWriter script = response.getWriter();
	script.println("<script>");
	switch(result){
	case -1:
		script.println("alert('글쓰기에 실패했습니다')");
		script.println("history.back()");
		break;
	default:
		script.println("location.href='Main.jsp'");
		break;
	}		
	script.println("</script>");
%>
</body>
</html>