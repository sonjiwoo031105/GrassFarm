<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="file.FileDAO" %>
<%@ page import="java.io.File" %>
<!-- 파일 이름이 동일한게 나오면 자동으로 다른걸로 바꿔주고 그런 행동 해주는것 -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!-- 실제로 파일 업로드 하기 위한 클래스 -->
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<!-- 위에것들 head 태그 위에 추가해줄 것 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잔디공작소</title>
</head>
<body>
<%
		 // 해당 폴더에 이미지를 저장시킨다
  	 	 String uploadDir =this.getClass().getResource("").getPath();
		 uploadDir = uploadDir.substring(1,uploadDir.indexOf(".metadata"))+"Grass_Farm/WebContent/upload";
		 out.println("절대경로 : " + uploadDir + "<br/>"); 
		// 총 100M 까지 저장 가능하게 함
		int maxSize = 1024 * 1024 * 100;
		String encoding = "UTF-8";
		// 사용자가 전송한 파일정보 토대로 업로드 장소에 파일 업로드 수행할 수 있게 함
		MultipartRequest multipartRequest = new MultipartRequest(request, uploadDir, maxSize, encoding,new DefaultFileRenamePolicy());
        // 중복된 파일이름이 있기에 fileRealName이 실제로 서버에 저장된 경로이자 파일
		// 실제 서버에 업로드 된 파일시스템 네임
		String fileRealName = multipartRequest.getFilesystemName("file");
		// 디비에 업로드 메소드
		String userID = (String)session.getAttribute("userID");
		int result=new FileDAO().upload(fileRealName, userID);
		PrintWriter script=response.getWriter();
		script.println("<script>");
		switch(result){
		case 1:
			script.println("location.href='User.jsp'");
			break;
		case -1:
			script.println("alert('사진바꾸기에 실패하였습니다.')");
			script.println("history.back()");
			break;
		}
		script.println("</script>");
	%>
</body>
</html>