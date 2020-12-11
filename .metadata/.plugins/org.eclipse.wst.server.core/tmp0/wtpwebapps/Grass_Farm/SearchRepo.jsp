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
        body { padding-top: 4%; 
        text-align : center;}
      	.navbar-fixed-top{
      		background-color: white;
      	}
        .page-header{
            font-family: 'Playfair Display', serif;
            text-align: left;
        }  
        h2{
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
     
     <!-- 테이블 -->
    <div class="col-md-10 col-md-offset-1">
        <div style="float:left;" class=".col-md-4"><h2>Repository</h2></div>  
        	 <!-- 검색폼 -->
  	 <form role="search" action="SearchRepo.jsp">
     <div style="float:right;" class="col-md-4">
     <div class="input-group" style="padding-top:7%">
      <div class="input-group-btn">
         <select style="width:80px" class="form-control" name="catgo" required="required">
                    <option value=""  selected>선택</option>
                    <option value="bbsTitle">제목</option>
                    <option value="bbsContent">내용</option>
                    <option value="bbsLanguage">언어</option>
         </select>
      </div><!-- /btn-group -->
      <input type="text" name="search" class="form-control" required="required">
       <span class="input-group-btn">
        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
      </span>
    </div><!-- /input-group -->
     </div>
     </form> 
        <table class="table">
        		<tr>
            		<td>번호</td>
            		<td>제목</td>
            		<td>언어</td>
            		<td>등록일</td>
        		</tr>
    		<%
			BbsDAO bbsDAO=new BbsDAO();
    		ArrayList<Bbs> result= bbsDAO.searchRepo(userID, catgo, search);
        	for(int i=0; i<result.size(); i++){
			%>
        		<tr>
        			<td><%=result.get(i).getBbsID()%></td>
        			<td><a href="Show.jsp?bbsID=<%=result.get(i).getBbsID()%>"><%=result.get(i).getBbsTitle()%></a></td>
        			<td><%=result.get(i).getBbsLanguage()%></td>
        			<td><%=result.get(i).getBbsDate()%></td>
        	    </tr>
			<%
    
        	}
    }
			%>
		</table>
	</div>
	<!--col-sm 끝~~ -->
	</div>
    <!--row 끝~~ -->
	</div>
	<!--container 끝~~ -->	
</body>
</html>