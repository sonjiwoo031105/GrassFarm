<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO"%>
<!-- bbsdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter"%>
<!-- 자바 클래스 사용 -->
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=UTF-8"); 
%>
<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContent" />
<jsp:setProperty name="bbs" property="bbsSource" />
<jsp:setProperty name="bbs" property="bbsLanguage" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>잔디공작소</title>
</head>
<body>	
	
	<%
			int bbsID = Integer.parseInt(request.getParameter("bbsID"));

			String userID = null;
			if (session.getAttribute("userID") != null) {//유저아이디이름으로 세션이 존재하는 회원들은 
				bbs.setUserID((String) session.getAttribute("userID"));//유저아이디에 해당 세션값을 넣어준다.
			}
			
			if (bbs.getBbsTitle() == null || bbs.getBbsContent() == null) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안된 사항이 있습니다')");
				script.println("history.back()");
				script.println("</script>");
			}else{
				BbsDAO BbsDAO = new BbsDAO();
				int result = BbsDAO.update(bbs, bbsID);
				if (result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기에 실패했습니다')");
					script.println("history.back()");
					script.println("</script>");
				} else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('수정 완료되었습니다.')");
					script.println("location.href='Repo.jsp'");
					script.println("</script>");
				}
			}
			
	%>
</body>
</html>