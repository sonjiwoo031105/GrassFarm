<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.text.Format"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="follow.FollowDAO" %>
<%@ page import="follow.Follow" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="navbar.jsp" %>

<!DOCTYPE html>
<html>
<head>
<title>잔디공작소</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="css/User.css">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="dist/jquery.calmosaic.min.css">
<link rel="shortcut icon" href="img/Contents_Logo.png" type="img/x-icon">
<link rel="icon" href="img/Contents_Logo.png" type="img/x-icon">

<script src="https://cdn.jsdelivr.net/npm/jquery@3.3.1/dist/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/moment@2.24.0/moment.min.js"></script>
<script src="dist/jquery.calmosaic.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</head>
<body>	
<% 
String userID = "";
if (request.getParameter("userID") != null) {
	userID = request.getParameter("userID");
}
Calendar cal = Calendar.getInstance();
UserDAO userDAO = new UserDAO();
BbsDAO bbsDAO = new BbsDAO();
User user = userDAO.getUser(userID);
FollowDAO followDAO = new FollowDAO();
int monthcount = bbsDAO.getmonthCount(userID, String.valueOf((cal.get(Calendar.MONTH)+1)));
String imgurl="upload/"+user.getUserPicture();
%>	
			
<div class="container">
  <div class="row">     
    <div class="col-md-10 col-md-offset-1" style="max-width:100%;"> 
    
    <div class="col-md-3" id="box1"> 
	  <div class="card">
	  	<img class="card-img-top" id="img_click" src="<%=imgurl%>">	  	
   		<div class="card-body">
  			<h4 class="card-title" id="userid"><%=userID%></h4>
  			<a href="LogoutAction.jsp" id="modifyuser">로그아웃</a>  			
  			<p class="card-text" id="username"><%=user.getUserName()%></p> 	
  			
  			<img src="img/follow_icon.png" width="24" height="24" id="follow_icon">
  			<a href="Follower.jsp" id="follow">
  			  &nbsp;팔로워&nbsp;<span id="follownum"><%=followDAO.getFollowing(userID)-1%></span>
  			</a>
  			<a href="Following.jsp" id="follow">
  			  &nbsp;&nbsp;팔로잉&nbsp;<span id="follownum"><%=followDAO.getFollow(userID)-1%></span>
  			</a>
  			<span id="email" class="glyphicon glyphicon-envelope">&nbsp;<%=user.getUserEmail()%></span>
  		</div>	
  	  </div>
  	</div>
  	 
  	<div class="col-md-9" id="box2"> 
  	
  	<a href="SearchUser.jsp" id="user_nav"><img src="img/overview.png" width="25" height="25" />&nbsp;Overview</a>
  	<a href="SearchRepo.jsp?userID=<%=userID%>" id="overview"><img src="img/Repositories.png" width="25" height="25" />&nbsp;Repositories</a><br>
  	<hr id="navlow">
 
    <table class="table" id="repo_tb">
      <tr style="text-align:center;">
        <td>제목</td>
        <td>언어</td>
        <td>등록일</td>
      </tr>
    <%
      Bbs getrepo= bbsDAO.getbbs(userID);
	%>
	<tr style="text-align: center;">
      <td style="text-align:left;"><a id="repobbstitle" href="Show.jsp?bbsID=<%=getrepo.getBbsID()%>"><%=getrepo.getBbsTitle()%></a></td>
      <td><%=getrepo.getBbsLanguage()%></td>
      <td><%=getrepo.getBbsDate()%></td>
	</table>  	  
  	</div>
  	
  	</div>
  </div>
</div>
</body>
</html>