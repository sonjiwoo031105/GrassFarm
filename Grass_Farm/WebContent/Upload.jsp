<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="file.FileDAO" %>
<%@ page import="java.io.File" %>
<!-- ���� �̸��� �����Ѱ� ������ �ڵ����� �ٸ��ɷ� �ٲ��ְ� �׷� �ൿ ���ִ°� -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!-- ������ ���� ���ε� �ϱ� ���� Ŭ���� -->
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<!-- �����͵� head �±� ���� �߰����� �� -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		 // �ش� ������ �̹����� �����Ų��
  	 	 String uploadDir =this.getClass().getResource("").getPath();
		 uploadDir = uploadDir.substring(1,uploadDir.indexOf(".metadata"))+"Grass_Farm/WebContent/upload";
		 out.println("������ : " + uploadDir + "<br/>"); 
		// �� 100M ���� ���� �����ϰ� ��
		int maxSize = 1024 * 1024 * 100;
		String encoding = "UTF-8";
		// ����ڰ� ������ �������� ���� ���ε� ��ҿ� ���� ���ε� ������ �� �ְ� ��
		MultipartRequest multipartRequest = new MultipartRequest(request, uploadDir, maxSize, encoding,new DefaultFileRenamePolicy());
        // �ߺ��� �����̸��� �ֱ⿡ fileRealName�� ������ ������ ����� ������� ����
		// ���� ������ ���ε� �� ���Ͻý��� ����
		String fileRealName = multipartRequest.getFilesystemName("file");
		// ��� ���ε� �޼ҵ�
		int result=new FileDAO().upload(fileRealName,(String)session.getAttribute("userID"));
		PrintWriter script=response.getWriter();
		script.println("<script>");
		switch(result){
		case 1:
			script.println("location.href='User.jsp'");
			break;
		case -1:
			script.println("alert('�����ٲٱ⿡ �����Ͽ����ϴ�.')");
			script.println("history.back()");
			break;
		}
		script.println("</script>");
	%>
</body>
</html>