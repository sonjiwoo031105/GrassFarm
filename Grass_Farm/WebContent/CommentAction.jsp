<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
<!-- 자바 클래스 사용 -->
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=UTF-8"); 
%>
<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsID" />
<jsp:setProperty name="bbs" property="userID" />
<jsp:setProperty name="bbs" property="bbsComment" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>잔디공작소</title>
</head>
<body>
	<%
	int bbsID = 0;
	if (request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	Bbs bbs1 = new BbsDAO().getBbs(bbsID);
	//bbs1.getBbsID();
		String userID = null;
		if (session.getAttribute("userID") != null) {//유저아이디이름으로 세션이 존재하는 회원들은 
			bbs.setUserID((String) session.getAttribute("userID"));//유저아이디에 해당 세션값을 넣어준다.
		}
			
		BbsDAO BbsDAO = new BbsDAO();
		int result = BbsDAO.comment(bbs);
		if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('댓글쓰기에 실패했습니다')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			PrintWriter script = response.getWriter(); 
			response.sendRedirect("Index.jsp");

		}	
	%>
</body>
</html>