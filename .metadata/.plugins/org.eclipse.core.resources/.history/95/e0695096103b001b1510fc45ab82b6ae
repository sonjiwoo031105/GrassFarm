<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.min.css">

<title>Repository</title>
   <style>
        body { padding-top: 70px; 
        text-align : center;}
      	.navbar-fixed-top{
      		background-color: white;
      	}
        .page-header{
            font-family: 'Playfair Display', serif;
            text-align: center;
        }  
        h1{
        	font-family: 'ImcreSoojin';
        }
        @font-face {
            font-family: 'ImcreSoojin';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
		</style>
</head>
<body>

    <%
  		String catgo = request.getParameter("catgo");
	  	String search = request.getParameter("search");
        if(userID==null){
    %>
       <div class="alert alert-success" role="alert">로그인 해주세요.</div>
    <%}else{ %>
    <div class="container">
    <div class="row">
    <div class="col-sm-12">
        <table class="table">
    		<thead>
        		<tr>
            		<td>번호</td>
            		<td>제목</td>
            		<td>등록일</td>
        		</tr>
    		</thead>
    		<%
				BbsDAO bbsDAO=new BbsDAO();
    			ArrayList<Bbs> result= bbsDAO.search(catgo, search);
        		for(int i=0; i<result.size(); i++){
			%>
    		<tbody>
        		<tr>
        			<td><%=result.get(i).getBbsID()%></td>
        			<td><a href="Show.jsp?bbsID=<%=result.get(i).getBbsID()%>"><%=result.get(i).getBbsTitle()%></a></td>
        			<td><%=result.get(i).getBbsDate()%></td>
        	    </tr>
			<%
        		}
    }
			%>
    		</tbody>
		</table>
	</div>
	<!--col-sm 끝~~ -->
	</div>
    <!--row 끝~~ -->
	</div>
	<!--container 끝~~ -->	
</body>
</html>