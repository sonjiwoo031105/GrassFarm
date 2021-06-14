<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="user.User" %>
<%@ page import="follow.FollowDAO"%>
<%@ page import="follow.Follow" %>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ include file="navbar.jsp" %>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty property="userName" name="user"/>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/Search.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>잔디공작소</title>
</head>
<body>
<div class="container">
  <div class="row">     
    <div class="col-md-8 col-md-offset-2" style="max-width:100%;">
    <h3 id="title">사람</h3><hr />
   	</div>
 </div>
</div> 
<%
	String userID = (String)session.getAttribute("userID");
  	String search = request.getParameter("search");

 	UserDAO userDAO=new UserDAO();
 	BbsDAO bbsDAO=new BbsDAO();
 	FollowDAO followDAO=new FollowDAO();
 	
	ArrayList<User> userlist=userDAO.search(search, search);
	
	for(int i=0; i<userlist.size(); i++){
	int follow=followDAO.SearchFollowing(userID, userlist.get(i).getUserID()); 
%>
<div class="container">
  <div class="row">     
    <div class="col-md-8 col-md-offset-2" style="max-width:100%;"> 
    	<div id="circle1">
    	  <img src="./img/<%out.print(userlist.get(i).getUserPicture());%>" style="width:100%">
    	</div>
    	
    	<div id="user_info">
    		<a href="User.jsp?=<%=userlist.get(i).getUserID()%>" id="userID"><%=userlist.get(i).getUserID()%></a>    	
    		<div id="userName"><%=userlist.get(i).getUserName()%></div>    	
    		<div id="userEmail"><%=userlist.get(i).getUserEmail()%></div>
    	</div>
    	
    	<% if(userlist.get(i).getUserID().equals(userID)){
	       }else if(follow>0){%>
	       <a href='Unfollow.jsp?id=<%=userlist.get(i).getUserID()%>' id="followbtn" class="btn btn-success">Unfollow</a>
	    <%}else{%>
	       <a href='Follow.jsp?id=<%=userlist.get(i).getUserID()%>' id="followbtn" class="btn btn-success">Follow</a>
	    <%} %> 
    	<br><br><br><br>
    	<hr />
    </div>
  </div>
</div>
<%}%>
<div class="container">
  <div class="row">     
    <div class="col-md-8 col-md-offset-2" style="max-width:100%;">
    <h3 id="title">게시글</h3><hr />
   	</div>
 </div>
</div>  	
<%
	ArrayList<Bbs> repolist=bbsDAO.searchrepo(search);
	for(int i=0; i<repolist.size(); i++){
		String picture = userDAO.match_profile(repolist.get(i).getUserID());
%>
<div class="container">
  <div class="row">     
    <div class="col-md-8 col-md-offset-2" style="max-width:100%;"> 
    	<div id="circle1">
    	  <img src="./img/<%out.print(picture);%>" style="width:100%">
    	</div>
    	
    	<div id="user_info">
    		<div id="userID"><%=repolist.get(i).getUserID()%></div>    	
    		<div id="userName"><%=repolist.get(i).getBbsDate()%></div>  
    	</div>
    	
    	<div id="content">
    	<a href="Show.jsp?bbsID=<%=repolist.get(i).getBbsID()%>" id="bbstitle"><%=repolist.get(i).getBbsTitle()%></a><br><br>
    	&nbsp;<%=repolist.get(i).getBbsContent()%>
    	</div>
    </div>
  </div>
</div>
<%}%>
</body>
</html>