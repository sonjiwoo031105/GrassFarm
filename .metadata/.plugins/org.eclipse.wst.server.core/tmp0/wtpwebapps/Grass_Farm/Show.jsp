<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
<%@page import="user.UserDAO"%>
<%@ page import="follow.FollowDAO" %>
<%@ page import="follow.Follow" %>
<%@ page import="java.util.ArrayList" %>
<%@page import="comment.Comment"%>
<%@page import="comment.CommentDAO"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="js/Show.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/Show.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">		
</head>
<script>
$(document).ready(function() {
	var code = $("#code");
	var content = $("#writeany");

	if(code) {
		code.each(function() {
			$(this).height(this.scrollHeight);
		});
	}
	if(content) {
		content.each(function() {
			$(this).height(this.scrollHeight);
		});
	}
});
</script>
<body>
<%		
	int bbsID = 0;
	if (request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
%>
<div class="container">
<div class="row">
  <div class="col-md-6 col-md-offset-3" style="max-width:100%;">
  <h2 id="name"><%= bbs.getBbsTitle() %></h2>
  <p><%= bbs.getBbsDate().substring(0,4) + "년 " + bbs.getBbsDate().substring(5, 7)+"월 "+ bbs.getBbsDate().substring(8, 10) + "일 " + bbs.getBbsDate().substring(11, 13) + ":" + bbs.getBbsDate().substring(14, 16)%></p><br>  	
  <input type="text" class="form-control" id="title" name="bbsTitle" value="<%= bbs.getBbsLanguage() %>" readonly>
  
	
	<label for="content">소스코드</label>
	<textarea class="form-control" id="code" name="bbsSource" readonly>
	<%= bbs.getBbsSource() %>
	</textarea><br>
	
	<label for="content">내용</label>
	<textarea class="form-control" id="writeany" name="bbsContent" readonly>
	<%= bbs.getBbsContent() %>
	</textarea><br>
	
	<hr id="comment_div">
	
	<form action="CommentAction.jsp" method="post">
    	<div id="comment_box">
    	<input type="hidden" class="form-control" name="bbsID" value=<%=bbs.getBbsID()%>>
    	<textarea class="form-control" id="comment" maxlength="50" rows="6" name="CommentText" onkeyup="counter()" placeholder="댓글을 입력하세요." required="required"></textarea>
        <div id="countbox">
          <button type="submit" class="btn" id="btnSave">글쓰기</button>
          <div id="count"><span id="counting">0</span>/50</div>
        </div>
        
        </div>
    </form>
    
    <%
    	UserDAO userDAO=new UserDAO();
   	 	CommentDAO CommentDAO=new CommentDAO();
    	ArrayList<Comment> comment = CommentDAO.getList(bbs.getBbsID());
    	String userID=(String)session.getAttribute("userID");    
		System.out.println(bbs.getBbsID());
		System.out.println(comment.size());
		for(int j=0; j<comment.size(); j++){
    %>
    	
        <div id="circle1"><img src="./img/<%=userDAO.match_profile(comment.get(j).getUserID())%>" style="width:100%"></div> 
      
          <a href="#" id="userid"><%=comment.get(j).getUserID()%></a>
          <p id="date"><%=comment.get(j).getCommentDate().substring(5, 7)+"월 " + comment.get(j).getCommentDate().substring(8, 10) + "일 " + comment.get(j).getCommentDate().substring(11, 13) + ":" + comment.get(j).getCommentDate().substring(14, 16) %></p>
          <p id="commentvalue"><%= comment.get(j).getCommentText()%></p><br>
           
        <hr id="division">
    <%
		}
    %>
</div>
</div>
</div>
</body>
</html>